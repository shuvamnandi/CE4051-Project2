`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:03 10/08/2015 
// Design Name: 
// Module Name:    Magnitude_Unit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Magnitude_Unit #(parameter Width= 32)(
	input Clk,
	input Rst,
	input start,
    input [(Width/2)-1:0] A,
    input [(Width/2)-1:0] B,
    output [Width-1:0] M,
    output valid
    );
	 wire [Width-1:0]	Product1, Product2, Sum;
	 wire carry;
	 reg valid;
	 wire [Width-1:0] M;
	 
	 multiplier U1 (.clk(Clk), 
					.p(Product1),
					.a(A),
					.b(A)
					);

	 multiplier U2 (.clk(Clk), 
					.p(Product2),
					.a(B),
					.b(B)
					);

	 assign {carry,Sum} = Product1[31:0] + Product2[31:0];
	 assign M = Sum | {Width{carry}};  //Set top limit as {32{1}}

	 always @(posedge Clk) begin
	 	if (Rst == 0) begin
	 		valid = 0;
	 	end else begin
	 		valid = start;	
	 	end
	 end
	 
	 //assign valid = start;
	 //No delay, but depends on the clock duration
	 
	 /*always @(posedge Clk) begin
			if (valid) begin
				M = Sum | {Width{carry}};
			end else begin
				M = 0;
			end
	 end*/
	 // Save it for one clock cycle for reading 
	 // Otherwise you just lose the data
endmodule
