
//-----------------------------------------------------------------------------
// Company:         Vicharak Computers PVT LTD
// Engineer:        Lalith Chandra <lalithchandram@gmail.com>
//
// Create Date:     JUNE 6, 2025
// Design Name:     Synchronous FIFO
// Module Name:     sync_fifo.sv
// Project:         gati
// Target Device:   Trion T120
// Tool Versions:   Efinix Efinity 2025.2
//
// Description:
//    This module implements a synchronous FIFO with custom WIDTH and DEPTH
//
//
// Version:
//    1.0 - 06/06/2025 -  - Initial release
//
// Additional Comments:
//  ...
// License:
//    Proprietary © Vicharak Computers PVT LTD - 2024
//-----------------------------------------------------------------------------



module sync_fifo #(
  parameter                   WIDTH = 8,
  parameter                   DEPTH = 32,
  parameter                   ADDRESS_WIDTH = $clog2(DEPTH)
  ) (
  input                       i_clk,
  input                       i_rst_n,

  // FIFO inputs
  input                       i_push_valid,
  input   [WIDTH-1:0]         i_push_data,
  input                       i_pop_ready,

  // FIFO Outputs

  output                      o_full,
  output                      o_empty,
  output  [WIDTH-1:0]         o_pop_data,
  output                      o_push_ready,
  output                      o_pop_valid
  );

  logic [WIDTH-1:0]           ram_fifo [DEPTH-1:0];
  logic [ADDRESS_WIDTH-1:0]   wr_ptr_q, rd_ptr_q;
  logic [ADDRESS_WIDTH:0]     count_q;
  logic                       r_push, r_pop;

  // assigning values, combinational logic

  assign o_full = (count_q == DEPTH);
  assign o_empty = (count_q == 0);
  assign o_pop_data = ram_fifo[rd_ptr_q];
  assign o_push_ready = !o_full;
  assign o_pop_valid = !o_empty;

  assign r_push = i_push_valid && !o_full;
  assign r_pop = i_pop_ready && !o_empty;

  // writing to ram (sequential logic)
  always_ff @ (posedge i_clk) begin
  end

  always_ff @ (posedge i_clk or negedge i_rst_n) begin
    if (!i_rst_n) begin
      wr_ptr_q <= '0;
      rd_ptr_q <= '0;
      count_q  <= '0;
    end
    else begin
      if (r_push) begin
        ram_fifo[wr_ptr_q] <= i_push_data;
        wr_ptr_q <= (wr_ptr_q == DEPTH-1) ? '0 : wr_ptr_q + 1;
      end
      if (r_pop) rd_ptr_q <= (rd_ptr_q == DEPTH-1) ? '0 : rd_ptr_q + 1;

      case ({r_push, r_pop})
        2'b10: count_q <= count_q + 1;
        2'b01: count_q <= count_q - 1;
        default: count_q <= count_q;
      endcase
    end
  end


endmodule
