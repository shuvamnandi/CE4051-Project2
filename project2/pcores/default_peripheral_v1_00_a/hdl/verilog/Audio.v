`timescale 1ns / 1ps
module Audio(
			Bus2IP_Clk, 
         Bus2IP_Resetn,
			//Input
		   Bus2IP_Data,
			Bus2IP_WrReq,
			Bus2IP_RdReq, 
			//Output
			IP2Bus_Data_temp,
			IP2Bus_WrOcu,
			IP2Bus_RdAck
);

	//Input & Output
	input  Bus2IP_Clk;
	input Bus2IP_Resetn;
	input [31:0] Bus2IP_Data; 				//input data to IP core
	input Bus2IP_WrReq; 						//write request to IP core
	input Bus2IP_RdReq; 						//read request to IP core
	output [31:0] IP2Bus_Data_temp; 			//output data to Bus
	output IP2Bus_WrOcu; 				//output write acknowledge
	output IP2Bus_RdAck; 				//output read acknowledge

	//Signals
	wire [31:0] Data_Out;
	//wire [31:0] Real_ip, Imag_ip;
	wire [15:0] Real_tdata_neg;
	wire [15:0] Imag_tdata_neg;
	wire [15:0] Real_ip_part;
	wire [15:0] Imag_ip_part;

	wire Finish_Mag;
	//wire Mag_Ready;
	wire Mag_Start;
	
	//FFT Signals
	reg unload = 1;
	reg fwd_inv = 1;
	reg fwd_inv_we = 1;
	reg scale_sch_we = 1;
	reg  [13:0] scale_sch = 14'b01010101000110;
	wire [15:0] xn_re; 
	wire [15:0] xn_im;
	wire [15:0] xk_re;
	wire [15:0] xk_im;

	wire [6:0] xn_index;
	wire [6:0] xk_index;
	//wire dv;
	wire done;
	wire edone;
	wire busy;
	wire rfd;

	assign xn_re = Bus2IP_Data[15:0];
	assign xn_im = 16'h0000;

	fft128 FFT_Unit (
	  .clk(Bus2IP_Clk), // input clk
	  .start(Bus2IP_WrReq), // input start
	  .unload(unload), // input unload
	  .xn_re(xn_re), // input [15 : 0] xn_re
	  .xn_im(xn_im), // input [15 : 0] xn_im
	  .fwd_inv(fwd_inv), // input fwd_inv
	  .fwd_inv_we(fwd_inv_we), // input fwd_inv_we
	  .scale_sch(scale_sch), // input [13 : 0] scale_sch
	  .scale_sch_we(scale_sch_we), // input scale_sch_we
	  .rfd(rfd), // output rfd
	  .xn_index(xn_index), // output [6 : 0] xn_index
	  .busy(busy), // output busy
	  .edone(edone), // output edone
	  .done(done), // output done
	  .dv(Mag_Start), // output dv
	  .xk_index(xk_index), // output [6 : 0] xk_index
	  .xk_re(xk_re), // output [15 : 0] xk_re
	  .xk_im(xk_im) // output [15 : 0] xk_im
	);

	assign Real_tdata_neg = - xk_re; // left shift 7 bits
	assign Imag_tdata_neg = - xk_im;
	
	assign Real_ip_part = (xk_re[15]) ? Real_tdata_neg: xk_re;
	assign Imag_ip_part = (xk_im[15]) ? Imag_tdata_neg: xk_im;
	
	//assign Real_ip = {4'h0, 1'b0, Real_ip_part, 7'b0000000, 4'h0}; 
	//assign Imag_ip = {4'h0, 1'b0, Imag_ip_part, 7'b0000000, 4'h0};
	
	Magnitude_Unit Mag(
		.Clk(Bus2IP_Clk),
		.Rst(Bus2IP_Resetn),
		.start(Mag_Start),
		.A(Real_ip_part),
		.B(Imag_ip_part),
		.M(Data_Out),
		.valid(Finish_Mag)
	);
	
	assign IP2Bus_Data_temp = Bus2IP_RdReq ? Data_Out : 0;
	//assign IP2Bus_Data_temp = Bus2IP_RdReq ? {16'h0000, Real_ip_part} : 0;
	assign IP2Bus_RdAck = Finish_Mag; //Mag_Start;
	assign IP2Bus_WrOcu = busy;

endmodule





