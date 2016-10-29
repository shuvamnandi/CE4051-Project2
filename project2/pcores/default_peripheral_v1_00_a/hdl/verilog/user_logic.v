//----------------------------------------------------------------------------
// user_logic.v - module
//----------------------------------------------------------------------------
//
// ***************************************************************************
// ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
// **                                                                       **
// ** Xilinx, Inc.                                                          **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
// ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
// ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
// ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
// ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
// ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
// ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
// ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
// ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
// ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
// ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
// ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
// ** FOR A PARTICULAR PURPOSE.                                             **
// **                                                                       **
// ***************************************************************************
//
//----------------------------------------------------------------------------
// Filename:          user_logic.v
// Version:           1.00.a
// Description:       User logic module.
// Date:              Sun Oct 25 03:50:31 2015 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

module user_logic
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  // --USER ports added here 
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     // Bus to IP clock
  Bus2IP_Resetn,                  // Bus to IP reset
  Bus2IP_Addr,                    // Bus to IP address bus
  Bus2IP_CS,                      // Bus to IP chip select for user logic memory selection
  Bus2IP_RNW,                     // Bus to IP read/not write
  Bus2IP_Data,                    // Bus to IP data bus
  Bus2IP_BE,                      // Bus to IP byte enables
  Bus2IP_RdCE,                    // Bus to IP read chip enable
  Bus2IP_WrCE,                    // Bus to IP write chip enable
  Bus2IP_Burst,                   // Bus to IP burst-mode qualifier
  Bus2IP_BurstLength,             // Bus to IP burst length
  Bus2IP_RdReq,                   // Bus to IP read request
  Bus2IP_WrReq,                   // Bus to IP write request
  IP2Bus_AddrAck,                 // IP to Bus address acknowledgement
  IP2Bus_Data,                    // IP to Bus data bus
  IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
  IP2Bus_Error,                   // IP to Bus error response
  Type_of_xfer                    // Transfer Type
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------
// --USER parameters added here 
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_SLV_AWIDTH                   = 32;
parameter C_SLV_DWIDTH                   = 32;
parameter C_NUM_MEM                      = 1;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
// --USER ports added here 
// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                     Bus2IP_Clk;
input                                     Bus2IP_Resetn;
input      [C_SLV_AWIDTH-1 : 0]           Bus2IP_Addr;
input      [C_NUM_MEM-1 : 0]              Bus2IP_CS;
input                                     Bus2IP_RNW;
input      [C_SLV_DWIDTH-1 : 0]           Bus2IP_Data;
input      [C_SLV_DWIDTH/8-1 : 0]         Bus2IP_BE;
input      [C_NUM_MEM-1 : 0]              Bus2IP_RdCE;
input      [C_NUM_MEM-1 : 0]              Bus2IP_WrCE;
input                                     Bus2IP_Burst;
input      [7 : 0]                        Bus2IP_BurstLength;
input                                     Bus2IP_RdReq;
input                                     Bus2IP_WrReq;
output                                    IP2Bus_AddrAck;
output     [C_SLV_DWIDTH-1 : 0]           IP2Bus_Data;
output                                    IP2Bus_RdAck;
output                                    IP2Bus_WrAck;
output                                    IP2Bus_Error;
output                                    Type_of_xfer;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // --USER nets declarations added here, as needed for user logic

wire [7:0] mem_address;
reg [7:0] read_address;
wire mem_select;
wire mem_read_enable;
reg mem_read_ack_dly1;
reg mem_read_ack_dly2; 
wire mem_read_ack; 
wire mem_write_ack; 

reg [1  : 0] FFT_STATE = 2'b00;
reg [31 : 0] data [0:128];
reg [31 : 0] data_out [0:128];

reg [31 : 0] data_in;
wire [31 : 0] data_out_temp;
reg [31 : 0] mem_ip2bus_data;

reg [7 : 0] i = 0;
reg [7 : 0] o_count = 0;
reg o_flag = 0;
reg WrReq = 0;
wire WrOcu;
wire RdAck;
//reg fwd_inv_we;
  // --USER logic implementation added here

	assign IP2Bus_Data  = (mem_read_ack == 1'b1) ? mem_ip2bus_data : 0;
	assign IP2Bus_AddrAck = (mem_write_ack || (mem_read_enable && mem_read_ack));
	assign IP2Bus_WrAck = mem_write_ack;
	assign IP2Bus_RdAck = mem_read_ack;
	assign IP2Bus_Error = 0;

// ------------------------------------------------------
// Example code to read/write user memory space
	assign mem_select = Bus2IP_CS;
	assign mem_read_enable = Bus2IP_RdCE[0];
	assign mem_read_ack = (mem_read_ack_dly1 && (!mem_read_ack_dly2));
	assign mem_write_ack = Bus2IP_WrCE[0];
	assign mem_address = Bus2IP_Addr[9:2];


	always @( posedge Bus2IP_Clk) begin
	    if(Bus2IP_Resetn == 0) begin
	      mem_read_ack_dly1 <= 0;
	      mem_read_ack_dly2 <= 0;
	    end else begin
	      mem_read_ack_dly1 <= mem_read_enable;
	      mem_read_ack_dly2 <= mem_read_ack_dly1;
	    end
	end

	always @(posedge Bus2IP_Clk) begin
	    if(Bus2IP_Resetn == 0 ) begin
	        data[128] <= 0;
	    end else begin
	        if(Bus2IP_WrCE == 1) begin
	            data[mem_address] <= {16'h0000, Bus2IP_Data[15:0]};      //padding two samples within one fetch
	            data[mem_address+1] <= {16'h0000, Bus2IP_Data[31:16]};
	        end

	        if(WrReq == 1) begin
	            data[128] <= 0;
	        end
	        read_address <= mem_address;
	    end
	end

	always @(*)
	begin
	    case (mem_select) 
	      1 : mem_ip2bus_data <= data_out[read_address];
	      default : mem_ip2bus_data <= 0;
	    endcase
	end

	always @(posedge Bus2IP_Clk) begin
	  if (Bus2IP_Resetn == 0 ) begin
	        i <= 0;
	  end 
	  else begin
	    case  (FFT_STATE)
	      2'b00 : begin
	                if (WrOcu == 0 && data[128] == 1) begin
	                    WrReq <= 1;
	                    //fwd_inv_we <= 1;
	                    FFT_STATE <= 2'b01;
	                end else begin
	                    FFT_STATE <= 2'b00;
	                end
				  end
	      2'b01 : begin
	      			//fwd_inv_we <= 0;
	                if (i < 128) begin
	                    data_in <= data[i];
	                    i <= i + 1;
	                end else begin
	                    data_in <= data[i];
	                    WrReq <= 0;
	                    //fwd_inv_we <= 0;
	                    FFT_STATE <= 2'b10;
	                end
	              end
	      2'b10 : begin
	                  i <= 0;
	                  FFT_STATE <= 2'b00;
	              end
	      default : FFT_STATE <= 2'b00 ;
	    endcase
	  end
	end

  Audio PHASE2 (
    .Bus2IP_Clk(Bus2IP_Clk), 
    .Bus2IP_Resetn(Bus2IP_Resetn),
    .Bus2IP_Data(data_in),
    .Bus2IP_WrReq(WrReq),
    .Bus2IP_RdReq(1'b1), 
    .IP2Bus_Data_temp(data_out_temp),
    .IP2Bus_WrOcu(WrOcu),
    .IP2Bus_RdAck(RdAck)
    //.fwd_inv_we(fwd_inv_we)
  );

  always @(posedge Bus2IP_Clk) begin
    if (Bus2IP_Resetn == 0) begin
        o_count <= 0;
    end else begin
        data_out[128] <= {31'b0, o_flag};
        if (RdAck) begin
            data_out[o_count] <= data_out_temp; 
            o_count <= o_count + 1;
        end
    end
  end

  always @(posedge Bus2IP_Clk) begin
      if (Bus2IP_Resetn == 0) begin
          o_flag = 1'b0;
      end else if (o_count > 127 ) begin
          o_flag = 1'b1;
      end else if (data[128] == 1) begin
          o_flag = 1'b0;      
      end
  end


  
  // ------------------------------------------------------------
  // Example code to drive IP to Bus signals
  // ------------------------------------------------------------

endmodule
