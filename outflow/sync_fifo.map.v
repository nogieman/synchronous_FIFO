
//
// Verific Verilog Description of module sync_fifo
//

module sync_fifo (i_clk, i_rst_n, i_push_valid, i_push_data, i_pop_ready, 
            o_full, o_empty, o_pop_data, o_push_ready, o_pop_valid);
    input i_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(33)
    input i_rst_n /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(34)
    input i_push_valid /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(37)
    input [7:0]i_push_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(38)
    input i_pop_ready /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(39)
    output o_full /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(43)
    output o_empty /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(44)
    output [7:0]o_pop_data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(45)
    output o_push_ready /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(46)
    output o_pop_valid /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(47)
    
    wire [5:0]n88_2;
    wire n207;
    wire n214;
    wire n219;
    wire n224;
    wire [5:0]n88_3;
    wire [5:0]n88_4;
    wire [5:0]n88_5;
    wire [5:0]n88_6;
    wire [5:0]n88_7;
    wire n186;
    wire n193;
    wire n198;
    wire n203;
    wire [4:0]rd_ptr_q;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(51)
    wire [5:0]count_q;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(52)
    wire [4:0]wr_ptr_q;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(51)
    wire [7:0]\i150/ram_fifo[0] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [6:0]n77;
    
    wire \sub_27/add_2/n2 ;
    wire [7:0]\i150/ram_fifo[2] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[1] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[3] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[4] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[5] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[6] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[7] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[8] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[9] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[10] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[11] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[12] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[13] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[14] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[15] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[16] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[17] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[18] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[19] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[20] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[21] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[22] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[23] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[24] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[25] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[26] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[27] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[28] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[29] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[30] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    wire [7:0]\i150/ram_fifo[31] ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    
    wire \sub_27/add_2/n10 , \sub_27/add_2/n8 , \sub_27/add_2/n6 , \sub_27/add_2/n4 , 
        r_pop, r_push;
    wire [31:0]\i150/n12 ;
    
    wire \i_clk~O , n588, n370, n371, n372, n373, n374, n375, 
        n376, n377, n378, n379, n380, n381, n382, n383, n384, 
        n385, n386, n387, n388, n389, n390, n391, n392, n393, 
        n394, n395, n396, n397, n398, n399, n400, n401, n402, 
        n403, n404, n405, n406, n407, n408, n409, n410, n411, 
        n412, n413, n414, n415, n416, n417, n418, n419, n420, 
        n421, n422, n423, n424, n425, n426, n427, n428, n429, 
        n430, n431, n432, n433, n434, n435, n436, n437, n438, 
        n439, n440, n441, n442, n443, n444, n445, n446, n447, 
        n448, n449, n450, n451, n452, n453, n454, n455, n456, 
        n457, n458, n459, n460, n461, n462, n463, n464, n465, 
        n466, n467, n468, n469, n470, n471, n472, n473, n474, 
        n475, n476, n477, n478, n479, n480, n481, n482, n483, 
        n484, n485, n486, n487, n488, n489, n490, n491, n492, 
        n493, n494, n495, n496, n497, n498, n499, n500, n501, 
        n502, n503, n504, n505, n506, n507, n508, n509, n510, 
        n511, n512, n513, n514, n515, n516, n517, n518, n519, 
        n520, n521, n522, n523, n524, n525, n526, n527, n528, 
        n529, n530, n531, n532, n533, n534, n535, n536, n537, 
        n538, n539, n540, n541, n542, n543, n544, n545, n546, 
        n547, n548, n549, n550, n551, n552, n553, n554, n555, 
        n556, n557, n558, n559, n560, n561, n562, n563, n564, 
        n565, n566, n567, n568, n569, n570, n571, n572, n573, 
        n574, n575, n576, n577, n578, n579, n580, n581, n582, 
        n583, n584, n585, n586, n587;
    
    EFX_LUT4 LUT__677 (.I0(count_q[4]), .I1(n370), .I2(count_q[5]), .O(o_full)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(57)
    defparam LUT__677.LUTMASK = 16'h4040;
    EFX_FF \rd_ptr_q[0]~FF  (.D(rd_ptr_q[0]), .CE(r_pop), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(rd_ptr_q[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \rd_ptr_q[0]~FF .CLK_POLARITY = 1'b1;
    defparam \rd_ptr_q[0]~FF .CE_POLARITY = 1'b1;
    defparam \rd_ptr_q[0]~FF .SR_POLARITY = 1'b0;
    defparam \rd_ptr_q[0]~FF .D_POLARITY = 1'b0;
    defparam \rd_ptr_q[0]~FF .SR_SYNC = 1'b0;
    defparam \rd_ptr_q[0]~FF .SR_VALUE = 1'b0;
    defparam \rd_ptr_q[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count_q[0]~FF  (.D(n88_2[0]), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(count_q[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \count_q[0]~FF .CLK_POLARITY = 1'b1;
    defparam \count_q[0]~FF .CE_POLARITY = 1'b1;
    defparam \count_q[0]~FF .SR_POLARITY = 1'b0;
    defparam \count_q[0]~FF .D_POLARITY = 1'b1;
    defparam \count_q[0]~FF .SR_SYNC = 1'b0;
    defparam \count_q[0]~FF .SR_VALUE = 1'b0;
    defparam \count_q[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_ptr_q[0]~FF  (.D(wr_ptr_q[0]), .CE(r_push), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(wr_ptr_q[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \wr_ptr_q[0]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_ptr_q[0]~FF .CE_POLARITY = 1'b1;
    defparam \wr_ptr_q[0]~FF .SR_POLARITY = 1'b0;
    defparam \wr_ptr_q[0]~FF .D_POLARITY = 1'b0;
    defparam \wr_ptr_q[0]~FF .SR_SYNC = 1'b0;
    defparam \wr_ptr_q[0]~FF .SR_VALUE = 1'b0;
    defparam \wr_ptr_q[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rd_ptr_q[1]~FF  (.D(n207), .CE(r_pop), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(rd_ptr_q[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \rd_ptr_q[1]~FF .CLK_POLARITY = 1'b1;
    defparam \rd_ptr_q[1]~FF .CE_POLARITY = 1'b1;
    defparam \rd_ptr_q[1]~FF .SR_POLARITY = 1'b0;
    defparam \rd_ptr_q[1]~FF .D_POLARITY = 1'b1;
    defparam \rd_ptr_q[1]~FF .SR_SYNC = 1'b0;
    defparam \rd_ptr_q[1]~FF .SR_VALUE = 1'b0;
    defparam \rd_ptr_q[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rd_ptr_q[2]~FF  (.D(n214), .CE(r_pop), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(rd_ptr_q[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \rd_ptr_q[2]~FF .CLK_POLARITY = 1'b1;
    defparam \rd_ptr_q[2]~FF .CE_POLARITY = 1'b1;
    defparam \rd_ptr_q[2]~FF .SR_POLARITY = 1'b0;
    defparam \rd_ptr_q[2]~FF .D_POLARITY = 1'b1;
    defparam \rd_ptr_q[2]~FF .SR_SYNC = 1'b0;
    defparam \rd_ptr_q[2]~FF .SR_VALUE = 1'b0;
    defparam \rd_ptr_q[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rd_ptr_q[3]~FF  (.D(n219), .CE(r_pop), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(rd_ptr_q[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \rd_ptr_q[3]~FF .CLK_POLARITY = 1'b1;
    defparam \rd_ptr_q[3]~FF .CE_POLARITY = 1'b1;
    defparam \rd_ptr_q[3]~FF .SR_POLARITY = 1'b0;
    defparam \rd_ptr_q[3]~FF .D_POLARITY = 1'b1;
    defparam \rd_ptr_q[3]~FF .SR_SYNC = 1'b0;
    defparam \rd_ptr_q[3]~FF .SR_VALUE = 1'b0;
    defparam \rd_ptr_q[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \rd_ptr_q[4]~FF  (.D(n224), .CE(r_pop), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(rd_ptr_q[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \rd_ptr_q[4]~FF .CLK_POLARITY = 1'b1;
    defparam \rd_ptr_q[4]~FF .CE_POLARITY = 1'b1;
    defparam \rd_ptr_q[4]~FF .SR_POLARITY = 1'b0;
    defparam \rd_ptr_q[4]~FF .D_POLARITY = 1'b1;
    defparam \rd_ptr_q[4]~FF .SR_SYNC = 1'b0;
    defparam \rd_ptr_q[4]~FF .SR_VALUE = 1'b0;
    defparam \rd_ptr_q[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count_q[1]~FF  (.D(n88_3[1]), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(count_q[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \count_q[1]~FF .CLK_POLARITY = 1'b1;
    defparam \count_q[1]~FF .CE_POLARITY = 1'b1;
    defparam \count_q[1]~FF .SR_POLARITY = 1'b0;
    defparam \count_q[1]~FF .D_POLARITY = 1'b1;
    defparam \count_q[1]~FF .SR_SYNC = 1'b0;
    defparam \count_q[1]~FF .SR_VALUE = 1'b0;
    defparam \count_q[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count_q[2]~FF  (.D(n88_4[2]), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(count_q[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \count_q[2]~FF .CLK_POLARITY = 1'b1;
    defparam \count_q[2]~FF .CE_POLARITY = 1'b1;
    defparam \count_q[2]~FF .SR_POLARITY = 1'b0;
    defparam \count_q[2]~FF .D_POLARITY = 1'b1;
    defparam \count_q[2]~FF .SR_SYNC = 1'b0;
    defparam \count_q[2]~FF .SR_VALUE = 1'b0;
    defparam \count_q[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count_q[3]~FF  (.D(n88_5[3]), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(count_q[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \count_q[3]~FF .CLK_POLARITY = 1'b1;
    defparam \count_q[3]~FF .CE_POLARITY = 1'b1;
    defparam \count_q[3]~FF .SR_POLARITY = 1'b0;
    defparam \count_q[3]~FF .D_POLARITY = 1'b1;
    defparam \count_q[3]~FF .SR_SYNC = 1'b0;
    defparam \count_q[3]~FF .SR_VALUE = 1'b0;
    defparam \count_q[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count_q[4]~FF  (.D(n88_6[4]), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(count_q[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \count_q[4]~FF .CLK_POLARITY = 1'b1;
    defparam \count_q[4]~FF .CE_POLARITY = 1'b1;
    defparam \count_q[4]~FF .SR_POLARITY = 1'b0;
    defparam \count_q[4]~FF .D_POLARITY = 1'b1;
    defparam \count_q[4]~FF .SR_SYNC = 1'b0;
    defparam \count_q[4]~FF .SR_VALUE = 1'b0;
    defparam \count_q[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \count_q[5]~FF  (.D(n88_7[5]), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(i_rst_n), .Q(count_q[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \count_q[5]~FF .CLK_POLARITY = 1'b1;
    defparam \count_q[5]~FF .CE_POLARITY = 1'b1;
    defparam \count_q[5]~FF .SR_POLARITY = 1'b0;
    defparam \count_q[5]~FF .D_POLARITY = 1'b1;
    defparam \count_q[5]~FF .SR_SYNC = 1'b0;
    defparam \count_q[5]~FF .SR_VALUE = 1'b0;
    defparam \count_q[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_ptr_q[1]~FF  (.D(n186), .CE(r_push), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(wr_ptr_q[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \wr_ptr_q[1]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_ptr_q[1]~FF .CE_POLARITY = 1'b1;
    defparam \wr_ptr_q[1]~FF .SR_POLARITY = 1'b0;
    defparam \wr_ptr_q[1]~FF .D_POLARITY = 1'b1;
    defparam \wr_ptr_q[1]~FF .SR_SYNC = 1'b0;
    defparam \wr_ptr_q[1]~FF .SR_VALUE = 1'b0;
    defparam \wr_ptr_q[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_ptr_q[2]~FF  (.D(n193), .CE(r_push), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(wr_ptr_q[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \wr_ptr_q[2]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_ptr_q[2]~FF .CE_POLARITY = 1'b1;
    defparam \wr_ptr_q[2]~FF .SR_POLARITY = 1'b0;
    defparam \wr_ptr_q[2]~FF .D_POLARITY = 1'b1;
    defparam \wr_ptr_q[2]~FF .SR_SYNC = 1'b0;
    defparam \wr_ptr_q[2]~FF .SR_VALUE = 1'b0;
    defparam \wr_ptr_q[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_ptr_q[3]~FF  (.D(n198), .CE(r_push), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(wr_ptr_q[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \wr_ptr_q[3]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_ptr_q[3]~FF .CE_POLARITY = 1'b1;
    defparam \wr_ptr_q[3]~FF .SR_POLARITY = 1'b0;
    defparam \wr_ptr_q[3]~FF .D_POLARITY = 1'b1;
    defparam \wr_ptr_q[3]~FF .SR_SYNC = 1'b0;
    defparam \wr_ptr_q[3]~FF .SR_VALUE = 1'b0;
    defparam \wr_ptr_q[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \wr_ptr_q[4]~FF  (.D(n203), .CE(r_push), .CLK(\i_clk~O ), .SR(i_rst_n), 
           .Q(wr_ptr_q[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(88)
    defparam \wr_ptr_q[4]~FF .CLK_POLARITY = 1'b1;
    defparam \wr_ptr_q[4]~FF .CE_POLARITY = 1'b1;
    defparam \wr_ptr_q[4]~FF .SR_POLARITY = 1'b0;
    defparam \wr_ptr_q[4]~FF .D_POLARITY = 1'b1;
    defparam \wr_ptr_q[4]~FF .SR_SYNC = 1'b0;
    defparam \wr_ptr_q[4]~FF .SR_VALUE = 1'b0;
    defparam \wr_ptr_q[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[0][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [0]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[0] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[0][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[0][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[0][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[0][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[1][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [1]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[1] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[1][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[1][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[1][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[1][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[2][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[2] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[2][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[2][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[2][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[2][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[3][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [3]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[3] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[3][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[3][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[3][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[3][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[4][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [4]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[4] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[4][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[4][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[4][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[4][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[5][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [5]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[5] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[5][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[5][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[5][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[5][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[6][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [6]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[6] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[6][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[6][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[6][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[6][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[7][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [7]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[7] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[7][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[7][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[7][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[7][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[8][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [8]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[8] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[8][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[8][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[8][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[8][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[9][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [9]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[9] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[9][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[9][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[9][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[9][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[10][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [10]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[10] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[10][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[10][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[10][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[10][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[11][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [11]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[11] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[11][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[11][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[11][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[11][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[12][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [12]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[12] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[12][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[12][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[12][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[12][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[13][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [13]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[13] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[13][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[13][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[13][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[13][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[14][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [14]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[14] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[14][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[14][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[14][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[14][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[15][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [15]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[15] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[15][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[15][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[15][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[15][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[16][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [16]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[16] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[16][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[16][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[16][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[16][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[17][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [17]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[17] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[17][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[17][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[17][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[17][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[18][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [18]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[18] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[18][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[18][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[18][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[18][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[19][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [19]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[19] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[19][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[19][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[19][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[19][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[20][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [20]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[20] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[20][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[20][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[20][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[20][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[21][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [21]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[21] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[21][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[21][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[21][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[21][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[22][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [22]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[22] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[22][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[22][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[22][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[22][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[23][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [23]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[23] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[23][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[23][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[23][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[23][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[24][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [24]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[24] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[24][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[24][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[24][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[24][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[25][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [25]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[25] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[25][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[25][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[25][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[25][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[26][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [26]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[26] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[26][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[26][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[26][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[26][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[27][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [27]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[27] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[27][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[27][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[27][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[27][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[28][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [28]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[28] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[28][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[28][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[28][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[28][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[29][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [29]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[29] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[29][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[29][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[29][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[29][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[30][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [30]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[30] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[30][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[30][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[30][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[30][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][0]~FF  (.D(i_push_data[0]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][0]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][0]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][0]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][0]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][0]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][0]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][1]~FF  (.D(i_push_data[1]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][1]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][1]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][1]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][1]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][1]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][1]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][2]~FF  (.D(i_push_data[2]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][2]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][2]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][2]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][2]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][2]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][2]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][3]~FF  (.D(i_push_data[3]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][3]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][3]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][3]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][3]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][3]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][3]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][4]~FF  (.D(i_push_data[4]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][4]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][4]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][4]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][4]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][4]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][4]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][5]~FF  (.D(i_push_data[5]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][5]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][5]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][5]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][5]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][5]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][5]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][6]~FF  (.D(i_push_data[6]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][6]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][6]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][6]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][6]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][6]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][6]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \i150/ram_fifo[31][7]~FF  (.D(i_push_data[7]), .CE(\i150/n12 [31]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\i150/ram_fifo[31] [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(50)
    defparam \i150/ram_fifo[31][7]~FF .CLK_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][7]~FF .CE_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][7]~FF .SR_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][7]~FF .D_POLARITY = 1'b1;
    defparam \i150/ram_fifo[31][7]~FF .SR_SYNC = 1'b1;
    defparam \i150/ram_fifo[31][7]~FF .SR_VALUE = 1'b0;
    defparam \i150/ram_fifo[31][7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_ADD \sub_27/add_2/i1  (.I0(count_q[0]), .I1(1'b0), .CI(n588), 
            .O(n77[0]), .CO(\sub_27/add_2/n2 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \sub_27/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \sub_27/add_2/i1 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_27/add_2/i6  (.I0(count_q[5]), .I1(1'b1), .CI(\sub_27/add_2/n10 ), 
            .O(n77[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \sub_27/add_2/i6 .I0_POLARITY = 1'b1;
    defparam \sub_27/add_2/i6 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_27/add_2/i5  (.I0(count_q[4]), .I1(1'b1), .CI(\sub_27/add_2/n8 ), 
            .O(n77[4]), .CO(\sub_27/add_2/n10 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \sub_27/add_2/i5 .I0_POLARITY = 1'b1;
    defparam \sub_27/add_2/i5 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_27/add_2/i4  (.I0(count_q[3]), .I1(1'b1), .CI(\sub_27/add_2/n6 ), 
            .O(n77[3]), .CO(\sub_27/add_2/n8 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \sub_27/add_2/i4 .I0_POLARITY = 1'b1;
    defparam \sub_27/add_2/i4 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_27/add_2/i3  (.I0(count_q[2]), .I1(1'b1), .CI(\sub_27/add_2/n4 ), 
            .O(n77[2]), .CO(\sub_27/add_2/n6 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \sub_27/add_2/i3 .I0_POLARITY = 1'b1;
    defparam \sub_27/add_2/i3 .I1_POLARITY = 1'b1;
    EFX_ADD \sub_27/add_2/i2  (.I0(count_q[1]), .I1(1'b1), .CI(\sub_27/add_2/n2 ), 
            .O(n77[1]), .CO(\sub_27/add_2/n4 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \sub_27/add_2/i2 .I0_POLARITY = 1'b1;
    defparam \sub_27/add_2/i2 .I1_POLARITY = 1'b1;
    EFX_LUT4 LUT__678 (.I0(count_q[4]), .I1(count_q[5]), .I2(n370), .O(o_empty)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(58)
    defparam LUT__678.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__679 (.I0(\i150/ram_fifo[30] [7]), .I1(\i150/ram_fifo[28] [7]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n371)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__679.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__680 (.I0(\i150/ram_fifo[31] [7]), .I1(\i150/ram_fifo[29] [7]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n372)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__680.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__681 (.I0(n371), .I1(n372), .I2(rd_ptr_q[3]), .O(n373)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__681.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__682 (.I0(rd_ptr_q[3]), .I1(rd_ptr_q[0]), .O(n374)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__682.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__683 (.I0(\i150/ram_fifo[23] [7]), .I1(\i150/ram_fifo[21] [7]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n375)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__683.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__684 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[3]), .O(n376)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__684.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__685 (.I0(\i150/ram_fifo[22] [7]), .I1(\i150/ram_fifo[20] [7]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n377)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__685.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__686 (.I0(rd_ptr_q[2]), .I1(rd_ptr_q[4]), .O(n378)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__686.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__687 (.I0(n373), .I1(n375), .I2(n377), .I3(n378), .O(n379)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__687.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__688 (.I0(\i150/ram_fifo[10] [7]), .I1(\i150/ram_fifo[8] [7]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n380)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__688.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__689 (.I0(\i150/ram_fifo[11] [7]), .I1(\i150/ram_fifo[9] [7]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n381)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__689.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__690 (.I0(n380), .I1(n381), .I2(rd_ptr_q[3]), .O(n382)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__690.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__691 (.I0(\i150/ram_fifo[3] [7]), .I1(\i150/ram_fifo[1] [7]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__691.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__692 (.I0(\i150/ram_fifo[2] [7]), .I1(\i150/ram_fifo[0] [7]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__692.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__693 (.I0(rd_ptr_q[2]), .I1(rd_ptr_q[4]), .O(n385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__693.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__694 (.I0(n382), .I1(n383), .I2(n384), .I3(n385), .O(n386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__694.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__695 (.I0(\i150/ram_fifo[14] [7]), .I1(\i150/ram_fifo[12] [7]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__695.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__696 (.I0(\i150/ram_fifo[15] [7]), .I1(\i150/ram_fifo[13] [7]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__696.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__697 (.I0(n387), .I1(n388), .I2(rd_ptr_q[3]), .O(n389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__697.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__698 (.I0(\i150/ram_fifo[6] [7]), .I1(\i150/ram_fifo[4] [7]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__698.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__699 (.I0(\i150/ram_fifo[7] [7]), .I1(\i150/ram_fifo[5] [7]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__699.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__700 (.I0(rd_ptr_q[4]), .I1(rd_ptr_q[2]), .O(n392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__700.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__701 (.I0(n389), .I1(n390), .I2(n391), .I3(n392), .O(n393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__701.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__702 (.I0(\i150/ram_fifo[26] [7]), .I1(\i150/ram_fifo[24] [7]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__702.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__703 (.I0(\i150/ram_fifo[27] [7]), .I1(\i150/ram_fifo[25] [7]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__703.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__704 (.I0(n394), .I1(n395), .I2(rd_ptr_q[3]), .O(n396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__704.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__705 (.I0(\i150/ram_fifo[18] [7]), .I1(\i150/ram_fifo[16] [7]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__705.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__706 (.I0(\i150/ram_fifo[19] [7]), .I1(\i150/ram_fifo[17] [7]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__706.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__707 (.I0(rd_ptr_q[2]), .I1(rd_ptr_q[4]), .O(n399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__707.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__708 (.I0(n396), .I1(n397), .I2(n398), .I3(n399), .O(n400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__708.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__709 (.I0(n379), .I1(n386), .I2(n393), .I3(n400), .O(o_pop_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__709.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__710 (.I0(\i150/ram_fifo[6] [6]), .I1(\i150/ram_fifo[4] [6]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n401)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__710.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__711 (.I0(\i150/ram_fifo[7] [6]), .I1(\i150/ram_fifo[5] [6]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__711.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__712 (.I0(n401), .I1(rd_ptr_q[3]), .I2(n402), .O(n403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__712.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__713 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[3]), .O(n404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__713.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__714 (.I0(\i150/ram_fifo[14] [6]), .I1(\i150/ram_fifo[12] [6]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__714.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__715 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[3]), .O(n406)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__715.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__716 (.I0(\i150/ram_fifo[15] [6]), .I1(\i150/ram_fifo[13] [6]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n407)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__716.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__717 (.I0(n403), .I1(n405), .I2(n407), .I3(n392), .O(n408)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__717.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__718 (.I0(\i150/ram_fifo[26] [6]), .I1(\i150/ram_fifo[24] [6]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n409)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__718.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__719 (.I0(\i150/ram_fifo[27] [6]), .I1(\i150/ram_fifo[25] [6]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n410)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__719.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__720 (.I0(n409), .I1(n410), .I2(rd_ptr_q[3]), .O(n411)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__720.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__721 (.I0(\i150/ram_fifo[19] [6]), .I1(\i150/ram_fifo[17] [6]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n412)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__721.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__722 (.I0(\i150/ram_fifo[18] [6]), .I1(\i150/ram_fifo[16] [6]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n413)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__722.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__723 (.I0(n411), .I1(n412), .I2(n413), .I3(n399), .O(n414)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__723.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__724 (.I0(\i150/ram_fifo[30] [6]), .I1(\i150/ram_fifo[28] [6]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n415)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__724.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__725 (.I0(\i150/ram_fifo[31] [6]), .I1(\i150/ram_fifo[29] [6]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n416)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__725.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__726 (.I0(n415), .I1(n416), .I2(rd_ptr_q[3]), .O(n417)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__726.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__727 (.I0(\i150/ram_fifo[23] [6]), .I1(\i150/ram_fifo[21] [6]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n418)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__727.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__728 (.I0(\i150/ram_fifo[22] [6]), .I1(\i150/ram_fifo[20] [6]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n419)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__728.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__729 (.I0(n417), .I1(n418), .I2(n419), .I3(n378), .O(n420)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__729.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__730 (.I0(\i150/ram_fifo[10] [6]), .I1(\i150/ram_fifo[8] [6]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n421)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__730.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__731 (.I0(\i150/ram_fifo[11] [6]), .I1(\i150/ram_fifo[9] [6]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n422)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__731.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__732 (.I0(n421), .I1(n422), .I2(rd_ptr_q[3]), .O(n423)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__732.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__733 (.I0(\i150/ram_fifo[3] [6]), .I1(\i150/ram_fifo[1] [6]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n424)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__733.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__734 (.I0(\i150/ram_fifo[2] [6]), .I1(\i150/ram_fifo[0] [6]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n425)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__734.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__735 (.I0(n423), .I1(n424), .I2(n425), .I3(n385), .O(n426)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__735.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__736 (.I0(n408), .I1(n414), .I2(n420), .I3(n426), .O(o_pop_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__736.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__737 (.I0(\i150/ram_fifo[10] [5]), .I1(\i150/ram_fifo[8] [5]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n427)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__737.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__738 (.I0(\i150/ram_fifo[11] [5]), .I1(\i150/ram_fifo[9] [5]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n428)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__738.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__739 (.I0(n427), .I1(n428), .I2(rd_ptr_q[3]), .O(n429)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__739.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__740 (.I0(\i150/ram_fifo[2] [5]), .I1(\i150/ram_fifo[0] [5]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n430)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__740.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__741 (.I0(\i150/ram_fifo[3] [5]), .I1(\i150/ram_fifo[1] [5]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n431)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__741.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__742 (.I0(n429), .I1(n430), .I2(n431), .I3(n385), .O(n432)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__742.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__743 (.I0(\i150/ram_fifo[6] [5]), .I1(\i150/ram_fifo[4] [5]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n433)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__743.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__744 (.I0(\i150/ram_fifo[7] [5]), .I1(\i150/ram_fifo[5] [5]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n434)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__744.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__745 (.I0(n433), .I1(rd_ptr_q[3]), .I2(n434), .O(n435)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__745.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__746 (.I0(\i150/ram_fifo[14] [5]), .I1(\i150/ram_fifo[12] [5]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n436)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__746.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__747 (.I0(\i150/ram_fifo[15] [5]), .I1(\i150/ram_fifo[13] [5]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n437)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__747.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__748 (.I0(n435), .I1(n436), .I2(n437), .I3(n392), .O(n438)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__748.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__749 (.I0(\i150/ram_fifo[22] [5]), .I1(\i150/ram_fifo[20] [5]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n439)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__749.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__750 (.I0(\i150/ram_fifo[23] [5]), .I1(\i150/ram_fifo[21] [5]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n440)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__750.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__751 (.I0(n439), .I1(rd_ptr_q[3]), .I2(n440), .O(n441)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__751.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__752 (.I0(\i150/ram_fifo[30] [5]), .I1(\i150/ram_fifo[28] [5]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n442)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__752.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__753 (.I0(\i150/ram_fifo[31] [5]), .I1(\i150/ram_fifo[29] [5]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n443)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__753.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__754 (.I0(n441), .I1(n442), .I2(n443), .I3(n378), .O(n444)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__754.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__755 (.I0(\i150/ram_fifo[26] [5]), .I1(\i150/ram_fifo[24] [5]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n445)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__755.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__756 (.I0(\i150/ram_fifo[27] [5]), .I1(\i150/ram_fifo[25] [5]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n446)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__756.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__757 (.I0(n445), .I1(n446), .I2(rd_ptr_q[3]), .O(n447)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__757.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__758 (.I0(\i150/ram_fifo[18] [5]), .I1(\i150/ram_fifo[16] [5]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n448)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__758.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__759 (.I0(\i150/ram_fifo[19] [5]), .I1(\i150/ram_fifo[17] [5]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n449)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__759.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__760 (.I0(n447), .I1(n448), .I2(n449), .I3(n399), .O(n450)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__760.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__761 (.I0(n432), .I1(n438), .I2(n444), .I3(n450), .O(o_pop_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__761.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__762 (.I0(\i150/ram_fifo[10] [4]), .I1(\i150/ram_fifo[8] [4]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n451)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__762.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__763 (.I0(\i150/ram_fifo[11] [4]), .I1(\i150/ram_fifo[9] [4]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n452)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__763.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__764 (.I0(n451), .I1(n452), .I2(rd_ptr_q[3]), .O(n453)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__764.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__765 (.I0(\i150/ram_fifo[2] [4]), .I1(\i150/ram_fifo[0] [4]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n454)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__765.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__766 (.I0(\i150/ram_fifo[3] [4]), .I1(\i150/ram_fifo[1] [4]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n455)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__766.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__767 (.I0(n453), .I1(n454), .I2(n455), .I3(n385), .O(n456)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__767.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__768 (.I0(\i150/ram_fifo[14] [4]), .I1(\i150/ram_fifo[12] [4]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n457)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__768.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__769 (.I0(\i150/ram_fifo[15] [4]), .I1(\i150/ram_fifo[13] [4]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n458)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__769.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__770 (.I0(n457), .I1(n458), .I2(rd_ptr_q[3]), .O(n459)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__770.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__771 (.I0(\i150/ram_fifo[6] [4]), .I1(\i150/ram_fifo[4] [4]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n460)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__771.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__772 (.I0(\i150/ram_fifo[7] [4]), .I1(\i150/ram_fifo[5] [4]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n461)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__772.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__773 (.I0(n459), .I1(n460), .I2(n461), .I3(n392), .O(n462)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__773.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__774 (.I0(\i150/ram_fifo[22] [4]), .I1(\i150/ram_fifo[20] [4]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n463)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__774.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__775 (.I0(\i150/ram_fifo[23] [4]), .I1(\i150/ram_fifo[21] [4]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n464)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__775.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__776 (.I0(n463), .I1(rd_ptr_q[3]), .I2(n464), .O(n465)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__776.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__777 (.I0(\i150/ram_fifo[30] [4]), .I1(\i150/ram_fifo[28] [4]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n466)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__777.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__778 (.I0(\i150/ram_fifo[31] [4]), .I1(\i150/ram_fifo[29] [4]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n467)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__778.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__779 (.I0(n465), .I1(n466), .I2(n467), .I3(n378), .O(n468)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__779.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__780 (.I0(\i150/ram_fifo[18] [4]), .I1(\i150/ram_fifo[16] [4]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n469)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__780.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__781 (.I0(\i150/ram_fifo[19] [4]), .I1(\i150/ram_fifo[17] [4]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n470)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__781.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__782 (.I0(n469), .I1(n470), .I2(rd_ptr_q[3]), .O(n471)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__782.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__783 (.I0(\i150/ram_fifo[26] [4]), .I1(\i150/ram_fifo[24] [4]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n472)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__783.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__784 (.I0(\i150/ram_fifo[27] [4]), .I1(\i150/ram_fifo[25] [4]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n473)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__784.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__785 (.I0(n471), .I1(n472), .I2(n473), .I3(n399), .O(n474)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__785.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__786 (.I0(n456), .I1(n462), .I2(n468), .I3(n474), .O(o_pop_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__786.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__787 (.I0(\i150/ram_fifo[14] [3]), .I1(\i150/ram_fifo[12] [3]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n475)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__787.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__788 (.I0(\i150/ram_fifo[15] [3]), .I1(\i150/ram_fifo[13] [3]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n476)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__788.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__789 (.I0(n475), .I1(n476), .I2(rd_ptr_q[3]), .O(n477)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__789.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__790 (.I0(\i150/ram_fifo[6] [3]), .I1(\i150/ram_fifo[4] [3]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n478)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__790.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__791 (.I0(\i150/ram_fifo[7] [3]), .I1(\i150/ram_fifo[5] [3]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n479)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__791.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__792 (.I0(n477), .I1(n478), .I2(n479), .I3(n392), .O(n480)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__792.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__793 (.I0(\i150/ram_fifo[10] [3]), .I1(\i150/ram_fifo[8] [3]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n481)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__793.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__794 (.I0(\i150/ram_fifo[11] [3]), .I1(\i150/ram_fifo[9] [3]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n482)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__794.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__795 (.I0(n481), .I1(n482), .I2(rd_ptr_q[3]), .O(n483)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__795.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__796 (.I0(\i150/ram_fifo[3] [3]), .I1(\i150/ram_fifo[1] [3]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n484)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__796.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__797 (.I0(\i150/ram_fifo[2] [3]), .I1(\i150/ram_fifo[0] [3]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n485)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__797.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__798 (.I0(n483), .I1(n484), .I2(n485), .I3(n385), .O(n486)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__798.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__799 (.I0(\i150/ram_fifo[22] [3]), .I1(\i150/ram_fifo[20] [3]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n487)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__799.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__800 (.I0(\i150/ram_fifo[23] [3]), .I1(\i150/ram_fifo[21] [3]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n488)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__800.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__801 (.I0(n487), .I1(n488), .I2(rd_ptr_q[3]), .O(n489)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__801.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__802 (.I0(\i150/ram_fifo[30] [3]), .I1(\i150/ram_fifo[28] [3]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n490)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__802.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__803 (.I0(\i150/ram_fifo[31] [3]), .I1(\i150/ram_fifo[29] [3]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n491)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__803.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__804 (.I0(n489), .I1(n490), .I2(n491), .I3(n378), .O(n492)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__804.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__805 (.I0(\i150/ram_fifo[26] [3]), .I1(\i150/ram_fifo[24] [3]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n493)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__805.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__806 (.I0(\i150/ram_fifo[27] [3]), .I1(\i150/ram_fifo[25] [3]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n494)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__806.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__807 (.I0(n493), .I1(n494), .I2(rd_ptr_q[3]), .O(n495)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__807.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__808 (.I0(\i150/ram_fifo[18] [3]), .I1(\i150/ram_fifo[16] [3]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n496)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__808.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__809 (.I0(\i150/ram_fifo[19] [3]), .I1(\i150/ram_fifo[17] [3]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n497)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__809.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__810 (.I0(n495), .I1(n496), .I2(n497), .I3(n399), .O(n498)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__810.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__811 (.I0(n480), .I1(n486), .I2(n492), .I3(n498), .O(o_pop_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__811.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__812 (.I0(\i150/ram_fifo[22] [2]), .I1(\i150/ram_fifo[20] [2]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n499)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__812.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__813 (.I0(\i150/ram_fifo[23] [2]), .I1(\i150/ram_fifo[21] [2]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n500)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__813.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__814 (.I0(n499), .I1(rd_ptr_q[3]), .I2(n500), .O(n501)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__814.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__815 (.I0(\i150/ram_fifo[30] [2]), .I1(\i150/ram_fifo[28] [2]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n502)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__815.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__816 (.I0(\i150/ram_fifo[31] [2]), .I1(\i150/ram_fifo[29] [2]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n503)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__816.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__817 (.I0(n501), .I1(n502), .I2(n503), .I3(n378), .O(n504)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__817.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__818 (.I0(\i150/ram_fifo[10] [2]), .I1(\i150/ram_fifo[8] [2]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n505)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__818.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__819 (.I0(\i150/ram_fifo[11] [2]), .I1(\i150/ram_fifo[9] [2]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n506)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__819.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__820 (.I0(n505), .I1(n506), .I2(rd_ptr_q[3]), .O(n507)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__820.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__821 (.I0(\i150/ram_fifo[2] [2]), .I1(\i150/ram_fifo[0] [2]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n508)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__821.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__822 (.I0(\i150/ram_fifo[3] [2]), .I1(\i150/ram_fifo[1] [2]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n509)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__822.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__823 (.I0(n507), .I1(n508), .I2(n509), .I3(n385), .O(n510)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__823.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__824 (.I0(\i150/ram_fifo[6] [2]), .I1(\i150/ram_fifo[4] [2]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n511)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__824.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__825 (.I0(\i150/ram_fifo[7] [2]), .I1(\i150/ram_fifo[5] [2]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n512)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__825.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__826 (.I0(n511), .I1(n512), .I2(rd_ptr_q[3]), .O(n513)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__826.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__827 (.I0(\i150/ram_fifo[15] [2]), .I1(\i150/ram_fifo[13] [2]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n514)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__827.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__828 (.I0(\i150/ram_fifo[14] [2]), .I1(\i150/ram_fifo[12] [2]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n515)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__828.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__829 (.I0(n513), .I1(n514), .I2(n515), .I3(n392), .O(n516)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__829.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__830 (.I0(\i150/ram_fifo[26] [2]), .I1(\i150/ram_fifo[24] [2]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n517)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__830.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__831 (.I0(\i150/ram_fifo[27] [2]), .I1(\i150/ram_fifo[25] [2]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n518)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__831.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__832 (.I0(n517), .I1(n518), .I2(rd_ptr_q[3]), .O(n519)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__832.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__833 (.I0(\i150/ram_fifo[18] [2]), .I1(\i150/ram_fifo[16] [2]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n520)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__833.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__834 (.I0(\i150/ram_fifo[19] [2]), .I1(\i150/ram_fifo[17] [2]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n521)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__834.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__835 (.I0(n519), .I1(n520), .I2(n521), .I3(n399), .O(n522)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__835.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__836 (.I0(n504), .I1(n510), .I2(n516), .I3(n522), .O(o_pop_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__836.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__837 (.I0(\i150/ram_fifo[14] [1]), .I1(\i150/ram_fifo[12] [1]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n523)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__837.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__838 (.I0(\i150/ram_fifo[15] [1]), .I1(\i150/ram_fifo[13] [1]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n524)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__838.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__839 (.I0(n523), .I1(n524), .I2(rd_ptr_q[3]), .O(n525)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__839.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__840 (.I0(\i150/ram_fifo[6] [1]), .I1(\i150/ram_fifo[4] [1]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n526)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__840.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__841 (.I0(\i150/ram_fifo[7] [1]), .I1(\i150/ram_fifo[5] [1]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n527)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__841.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__842 (.I0(n525), .I1(n526), .I2(n527), .I3(n392), .O(n528)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__842.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__843 (.I0(\i150/ram_fifo[0] [1]), .I1(\i150/ram_fifo[2] [1]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n529)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0305 */ ;
    defparam LUT__843.LUTMASK = 16'h0305;
    EFX_LUT4 LUT__844 (.I0(\i150/ram_fifo[3] [1]), .I1(\i150/ram_fifo[1] [1]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n530)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__844.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__845 (.I0(n529), .I1(rd_ptr_q[3]), .I2(n530), .O(n531)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__845.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__846 (.I0(\i150/ram_fifo[10] [1]), .I1(\i150/ram_fifo[8] [1]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n532)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__846.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__847 (.I0(\i150/ram_fifo[11] [1]), .I1(\i150/ram_fifo[9] [1]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n533)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__847.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__848 (.I0(n531), .I1(n532), .I2(n533), .I3(n385), .O(n534)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__848.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__849 (.I0(\i150/ram_fifo[22] [1]), .I1(\i150/ram_fifo[20] [1]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n535)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__849.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__850 (.I0(\i150/ram_fifo[23] [1]), .I1(\i150/ram_fifo[21] [1]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n536)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__850.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__851 (.I0(n535), .I1(rd_ptr_q[3]), .I2(n536), .O(n537)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__851.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__852 (.I0(\i150/ram_fifo[30] [1]), .I1(\i150/ram_fifo[28] [1]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n538)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__852.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__853 (.I0(\i150/ram_fifo[31] [1]), .I1(\i150/ram_fifo[29] [1]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n539)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__853.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__854 (.I0(n537), .I1(n538), .I2(n539), .I3(n378), .O(n540)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__854.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__855 (.I0(\i150/ram_fifo[18] [1]), .I1(\i150/ram_fifo[16] [1]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n541)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__855.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__856 (.I0(\i150/ram_fifo[19] [1]), .I1(\i150/ram_fifo[17] [1]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n542)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__856.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__857 (.I0(n541), .I1(rd_ptr_q[3]), .I2(n542), .O(n543)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__857.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__858 (.I0(\i150/ram_fifo[26] [1]), .I1(\i150/ram_fifo[24] [1]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n544)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__858.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__859 (.I0(\i150/ram_fifo[27] [1]), .I1(\i150/ram_fifo[25] [1]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n545)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__859.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__860 (.I0(n543), .I1(n544), .I2(n545), .I3(n399), .O(n546)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__860.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__861 (.I0(n528), .I1(n534), .I2(n540), .I3(n546), .O(o_pop_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__861.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__862 (.I0(\i150/ram_fifo[18] [0]), .I1(\i150/ram_fifo[16] [0]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n547)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__862.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__863 (.I0(\i150/ram_fifo[19] [0]), .I1(\i150/ram_fifo[17] [0]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n548)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__863.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__864 (.I0(n547), .I1(n548), .I2(rd_ptr_q[3]), .O(n549)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__864.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__865 (.I0(\i150/ram_fifo[26] [0]), .I1(\i150/ram_fifo[24] [0]), 
            .I2(rd_ptr_q[1]), .I3(n404), .O(n550)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__865.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__866 (.I0(\i150/ram_fifo[27] [0]), .I1(\i150/ram_fifo[25] [0]), 
            .I2(rd_ptr_q[1]), .I3(n406), .O(n551)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__866.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__867 (.I0(n549), .I1(n550), .I2(n551), .I3(n399), .O(n552)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__867.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__868 (.I0(\i150/ram_fifo[10] [0]), .I1(\i150/ram_fifo[8] [0]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n553)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__868.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__869 (.I0(\i150/ram_fifo[11] [0]), .I1(\i150/ram_fifo[9] [0]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n554)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__869.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__870 (.I0(n553), .I1(n554), .I2(rd_ptr_q[3]), .O(n555)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__870.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__871 (.I0(\i150/ram_fifo[0] [0]), .I1(\i150/ram_fifo[2] [0]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n556)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hca00 */ ;
    defparam LUT__871.LUTMASK = 16'hca00;
    EFX_LUT4 LUT__872 (.I0(\i150/ram_fifo[3] [0]), .I1(\i150/ram_fifo[1] [0]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n557)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__872.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__873 (.I0(n555), .I1(n556), .I2(n557), .I3(n385), .O(n558)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__873.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__874 (.I0(\i150/ram_fifo[30] [0]), .I1(\i150/ram_fifo[28] [0]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n559)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__874.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__875 (.I0(\i150/ram_fifo[31] [0]), .I1(\i150/ram_fifo[29] [0]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n560)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__875.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__876 (.I0(n559), .I1(n560), .I2(rd_ptr_q[3]), .O(n561)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__876.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__877 (.I0(\i150/ram_fifo[22] [0]), .I1(\i150/ram_fifo[20] [0]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n562)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__877.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__878 (.I0(\i150/ram_fifo[23] [0]), .I1(\i150/ram_fifo[21] [0]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n563)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__878.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__879 (.I0(n561), .I1(n562), .I2(n563), .I3(n378), .O(n564)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__879.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__880 (.I0(\i150/ram_fifo[14] [0]), .I1(\i150/ram_fifo[12] [0]), 
            .I2(rd_ptr_q[0]), .I3(rd_ptr_q[1]), .O(n565)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__880.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__881 (.I0(\i150/ram_fifo[15] [0]), .I1(\i150/ram_fifo[13] [0]), 
            .I2(rd_ptr_q[1]), .I3(rd_ptr_q[0]), .O(n566)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__881.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__882 (.I0(n565), .I1(n566), .I2(rd_ptr_q[3]), .O(n567)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__882.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__883 (.I0(\i150/ram_fifo[6] [0]), .I1(\i150/ram_fifo[4] [0]), 
            .I2(rd_ptr_q[1]), .I3(n376), .O(n568)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__883.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__884 (.I0(\i150/ram_fifo[7] [0]), .I1(\i150/ram_fifo[5] [0]), 
            .I2(rd_ptr_q[1]), .I3(n374), .O(n569)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hac00 */ ;
    defparam LUT__884.LUTMASK = 16'hac00;
    EFX_LUT4 LUT__885 (.I0(n567), .I1(n568), .I2(n569), .I3(n392), .O(n570)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__885.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__886 (.I0(n552), .I1(n558), .I2(n564), .I3(n570), .O(o_pop_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(59)
    defparam LUT__886.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__887 (.I0(count_q[5]), .I1(count_q[4]), .I2(n370), .I3(i_pop_ready), 
            .O(r_pop)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hef00 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(64)
    defparam LUT__887.LUTMASK = 16'hef00;
    EFX_LUT4 LUT__888 (.I0(count_q[4]), .I1(count_q[5]), .I2(n370), .I3(i_push_valid), 
            .O(r_push)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(63)
    defparam LUT__888.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__889 (.I0(n77[0]), .I1(count_q[0]), .I2(r_pop), .I3(r_push), 
            .O(n88_2[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc3ac */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(87)
    defparam LUT__889.LUTMASK = 16'hc3ac;
    EFX_LUT4 LUT__890 (.I0(wr_ptr_q[2]), .I1(wr_ptr_q[3]), .I2(wr_ptr_q[4]), 
            .I3(i_rst_n), .O(n571)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__890.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__891 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n571), .O(\i150/n12 [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__891.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__892 (.I0(wr_ptr_q[0]), .I1(n571), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__892.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__893 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[1]), .O(n207)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__893.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__894 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[1]), .I2(rd_ptr_q[2]), 
            .O(n214)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__894.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__895 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[1]), .I2(rd_ptr_q[2]), 
            .I3(rd_ptr_q[3]), .O(n219)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__895.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__896 (.I0(rd_ptr_q[0]), .I1(rd_ptr_q[1]), .I2(rd_ptr_q[2]), 
            .I3(rd_ptr_q[3]), .O(n572)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__896.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__897 (.I0(n572), .I1(rd_ptr_q[4]), .O(n224)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__897.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__898 (.I0(r_pop), .I1(r_push), .I2(count_q[1]), .I3(n77[1]), 
            .O(n88_3[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb2d4 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(87)
    defparam LUT__898.LUTMASK = 16'hb2d4;
    EFX_LUT4 LUT__899 (.I0(i_pop_ready), .I1(count_q[0]), .I2(count_q[1]), 
            .I3(count_q[2]), .O(n573)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf40 */ ;
    defparam LUT__899.LUTMASK = 16'hbf40;
    EFX_LUT4 LUT__900 (.I0(n77[2]), .I1(count_q[2]), .I2(r_pop), .O(n574)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__900.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__901 (.I0(n574), .I1(n573), .I2(r_push), .O(n88_4[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hc5c5 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(87)
    defparam LUT__901.LUTMASK = 16'hc5c5;
    EFX_LUT4 LUT__902 (.I0(count_q[3]), .I1(n77[3]), .I2(r_push), .O(n575)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5353 */ ;
    defparam LUT__902.LUTMASK = 16'h5353;
    EFX_LUT4 LUT__903 (.I0(i_push_valid), .I1(count_q[0]), .I2(count_q[1]), 
            .I3(count_q[2]), .O(n576)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__903.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__904 (.I0(n575), .I1(n576), .I2(count_q[3]), .I3(r_pop), 
            .O(n88_5[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h553c */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(87)
    defparam LUT__904.LUTMASK = 16'h553c;
    EFX_LUT4 LUT__905 (.I0(count_q[3]), .I1(n576), .I2(n77[4]), .I3(r_pop), 
            .O(n577)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0f77 */ ;
    defparam LUT__905.LUTMASK = 16'h0f77;
    EFX_LUT4 LUT__906 (.I0(r_push), .I1(n577), .I2(count_q[4]), .I3(r_pop), 
            .O(n88_6[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb1c3 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(87)
    defparam LUT__906.LUTMASK = 16'hb1c3;
    EFX_LUT4 LUT__907 (.I0(n576), .I1(count_q[3]), .I2(count_q[4]), .I3(count_q[5]), 
            .O(n578)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__907.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__908 (.I0(count_q[5]), .I1(n77[5]), .I2(r_push), .O(n579)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__908.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__909 (.I0(n579), .I1(n578), .I2(r_pop), .O(n88_7[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(87)
    defparam LUT__909.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__910 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .O(n186)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__910.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__911 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(wr_ptr_q[2]), 
            .O(n193)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__911.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__912 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(wr_ptr_q[2]), 
            .I3(wr_ptr_q[3]), .O(n198)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__912.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__913 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(wr_ptr_q[2]), 
            .I3(wr_ptr_q[3]), .O(n580)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__913.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__914 (.I0(n580), .I1(wr_ptr_q[4]), .O(n203)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__914.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__915 (.I0(wr_ptr_q[1]), .I1(n571), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__915.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__916 (.I0(r_push), .I1(n571), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__916.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__917 (.I0(wr_ptr_q[3]), .I1(wr_ptr_q[4]), .I2(i_rst_n), 
            .I3(wr_ptr_q[2]), .O(n581)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__917.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__918 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n581), .O(\i150/n12 [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__918.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__919 (.I0(wr_ptr_q[1]), .I1(n581), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__919.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__920 (.I0(wr_ptr_q[0]), .I1(n581), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__920.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__921 (.I0(r_push), .I1(n581), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__921.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__922 (.I0(wr_ptr_q[2]), .I1(wr_ptr_q[4]), .I2(wr_ptr_q[3]), 
            .I3(i_rst_n), .O(n582)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__922.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__923 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n582), .O(\i150/n12 [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__923.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__924 (.I0(wr_ptr_q[1]), .I1(n582), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__924.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__925 (.I0(wr_ptr_q[0]), .I1(n582), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__925.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__926 (.I0(r_push), .I1(n582), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__926.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__927 (.I0(wr_ptr_q[4]), .I1(wr_ptr_q[2]), .I2(wr_ptr_q[3]), 
            .I3(i_rst_n), .O(n583)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__927.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__928 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n583), .O(\i150/n12 [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__928.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__929 (.I0(wr_ptr_q[1]), .I1(n583), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__929.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__930 (.I0(wr_ptr_q[0]), .I1(n583), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__930.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__931 (.I0(r_push), .I1(n583), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [15])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__931.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__932 (.I0(wr_ptr_q[2]), .I1(wr_ptr_q[3]), .I2(i_rst_n), 
            .I3(wr_ptr_q[4]), .O(n584)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__932.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__933 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n584), .O(\i150/n12 [16])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__933.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__934 (.I0(wr_ptr_q[1]), .I1(n584), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [17])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__934.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__935 (.I0(wr_ptr_q[0]), .I1(n584), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [18])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__935.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__936 (.I0(r_push), .I1(n584), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [19])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__936.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__937 (.I0(wr_ptr_q[3]), .I1(wr_ptr_q[2]), .I2(i_rst_n), 
            .I3(wr_ptr_q[4]), .O(n585)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__937.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__938 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n585), .O(\i150/n12 [20])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__938.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__939 (.I0(wr_ptr_q[1]), .I1(n585), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [21])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__939.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__940 (.I0(wr_ptr_q[0]), .I1(n585), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [22])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__940.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__941 (.I0(r_push), .I1(n585), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [23])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__941.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__942 (.I0(wr_ptr_q[2]), .I1(i_rst_n), .I2(wr_ptr_q[3]), 
            .I3(wr_ptr_q[4]), .O(n586)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__942.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__943 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n586), .O(\i150/n12 [24])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__943.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__944 (.I0(wr_ptr_q[1]), .I1(n586), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [25])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__944.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__945 (.I0(wr_ptr_q[0]), .I1(n586), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [26])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__945.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__946 (.I0(r_push), .I1(n586), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [27])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__946.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__947 (.I0(i_rst_n), .I1(wr_ptr_q[2]), .I2(wr_ptr_q[3]), 
            .I3(wr_ptr_q[4]), .O(n587)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__947.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__948 (.I0(wr_ptr_q[0]), .I1(wr_ptr_q[1]), .I2(r_push), 
            .I3(n587), .O(\i150/n12 [28])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__948.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__949 (.I0(wr_ptr_q[1]), .I1(n587), .I2(wr_ptr_q[0]), 
            .I3(r_push), .O(\i150/n12 [29])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__949.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__950 (.I0(wr_ptr_q[0]), .I1(n587), .I2(r_push), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [30])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__950.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__951 (.I0(r_push), .I1(n587), .I2(wr_ptr_q[0]), .I3(wr_ptr_q[1]), 
            .O(\i150/n12 [31])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(78)
    defparam LUT__951.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__954 (.I0(count_q[4]), .I1(n370), .I2(count_q[5]), .O(o_push_ready)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(57)
    defparam LUT__954.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__955 (.I0(count_q[4]), .I1(count_q[5]), .I2(n370), .O(o_pop_valid)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(58)
    defparam LUT__955.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__676 (.I0(count_q[0]), .I1(count_q[1]), .I2(count_q[2]), 
            .I3(count_q[3]), .O(n370)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__676.LUTMASK = 16'h0001;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(i_clk), .O(\i_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    EFX_ADD \AUX_ADD_CI__sub_27/add_2/i1  (.I0(1'b1), .I1(1'b1), .CI(1'b0), 
            .CO(n588)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_ADD, I0_POLARITY=1'b1, I1_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/sync_fifo/sync_fifo.v(85)
    defparam \AUX_ADD_CI__sub_27/add_2/i1 .I0_POLARITY = 1'b1;
    defparam \AUX_ADD_CI__sub_27/add_2/i1 .I1_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_c597eea7_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c597eea7_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c597eea7_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_c597eea7_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_ADD_c597eea7_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_c597eea7_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_c597eea7_0
// module not written out since it is a black box. 
//

