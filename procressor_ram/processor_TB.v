`timescale 1ns / 1ps
 
module processor_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	
	reg [4:0] count;
	reg w,rst,clk;
	
	

	
	wire [15:0]Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7;

	
	
	processor processor_one(.clk(clk),.rst(rst),.w(w), .Reg_0(Reg_0),.Reg_1(Reg_1),.Reg_2(Reg_2),.Reg_3(Reg_3),.Reg_4(Reg_4),.Reg_5(Reg_5),.Reg_6(Reg_6),.Reg_7(Reg_7));
	
	
	
	initial begin
		count = 5'b00000;

		
	end
	
	always begin
		#20
		count=count+4'b0001;
	end

	
	always @(count) begin
		case (count)

		5'b00000 : begin w = 1'b1; rst = 1'b1; clk = 1'b0; end
		5'b00001 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; end
		5'b00010 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; end
		5'b00011 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; end
		5'b00100 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; end
		5'b00101 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; end
		5'b00110 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; end
		5'b00111 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; end
		5'b01000 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; end
		5'b01001 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; end
		5'b01010 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; end
		5'b01011 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; end
		5'b01100 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; end
		5'b01101 : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
		5'b01110 : begin w = 1'b1; rst = 1'b0; clk = 1'b0;end
		5'b01111 : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
		5'b10000 : begin w = 1'b1; rst = 1'b0; clk = 1'b0;end
		5'b10001 : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
		5'b10010 : begin w = 1'b1; rst = 1'b0; clk = 1'b0;end
		5'b10011 : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
		5'b10100 : begin w = 1'b1; rst = 1'b0; clk = 1'b0;end
		5'b10101 : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
		5'b10110 : begin w = 1'b1; rst = 1'b0; clk = 1'b0;end
		5'b10111 : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
		5'b11000 : begin w = 1'b1; rst = 1'b0; clk = 1'b0;end
		
		default : begin w = 1'b1; rst = 1'b0; clk = 1'b1;end
	endcase
	end

 
endmodule
