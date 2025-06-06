`timescale 1ns/1ps

module tb_sync_fifo;

  // Parameters for FIFO instantiation
  localparam WIDTH = 7;      // 8-bit data: 0 to 7 bits
  localparam DEPTH = 32;
  localparam ADDR_WIDTH = $clog2(DEPTH);

  // Signals
  logic             clk;
  logic             rst_n;
  logic             push_valid;
  logic [WIDTH:0]   push_data;
  logic             pop_ready;

  logic             full;
  logic             empty;
  logic [WIDTH:0]   pop_data;
  logic             push_ready;
  logic             pop_valid;

  // Instantiate the FIFO
  sync_fifo #(
    .WIDTH(WIDTH),
    .DEPTH(DEPTH),
    .ADDRESS_WIDTH(ADDR_WIDTH)
  ) dut (
    .i_clk(clk),
    .i_rst_n(rst_n),
    .i_push_valid(push_valid),
    .i_push_data(push_data),
    .i_pop_ready(pop_ready),
    .o_full(full),
    .o_empty(empty),
    .o_pop_data(pop_data),
    .o_push_ready(push_ready),
    .o_pop_valid(pop_valid)
  );

  // Clock generation: 10ns period (100 MHz)
  initial clk = 0;
  always #5 clk = ~clk;

  // Reset logic
  initial begin
    rst_n = 0;
    push_valid = 0;
    pop_ready = 0;
    push_data = 0;
    #20;           // Hold reset for 20ns
    rst_n = 1;
  end

  // Task to push data into FIFO
  task push(input logic [WIDTH:0] data);
    begin
      @(negedge clk);
      push_data = data;
      push_valid = 1;
      wait (push_ready == 1);
      @(negedge clk);
      push_valid = 0;
    end
  endtask

  // Task to pop data from FIFO
  task pop();
    begin
      @(negedge clk);
      pop_ready = 1;
      wait (pop_valid == 1);
      @(negedge clk);
      pop_ready = 0;
    end
  endtask

  // Stimulus
  initial begin
    // Wait for reset deassertion
    wait (rst_n == 1);

    // Push several values
    push(8'hA1);
    push(8'hB2);
    push(8'hC3);
    push(8'hD4);
    push(8'hE5);

    // Pop two values
    pop();
    pop();

    // Push two more values
    push(8'hF6);
    push(8'h07);

    // Pop all remaining values
    while (!empty) begin
      pop();
    end

    #50;
    $finish;
  end

  // Monitor outputs
  initial begin
    $display("Time\tclk\trst_n\tpush_valid\tpush_data\tpop_ready\tpop_valid\tpop_data\tfull\tempty");
    $monitor("%0t\t%b\t%b\t%b\t\t0x%0h\t\t%b\t\t%b\t\t0x%0h\t%b\t%b",
             $time, clk, rst_n, push_valid, push_data, pop_ready, pop_valid, pop_data, full, empty);
  end

  // VCD dump for waveform viewing in GTKWave
  initial begin
    $dumpfile("tb_sync_fifo.vcd");
    $dumpvars(0, tb_sync_fifo);
  end

endmodule
