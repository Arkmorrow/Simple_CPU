`timescale 1ns / 1ps
 
module processor_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	
	reg [3:0] count;
	reg w,rst,clk;
	reg[11:0] function_i;
	reg[15:0] Data;
	wire [15:0]Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7;
	
	
	processor processor_one(.data(Data),.clk(clk),.rst(rst),.w(w),.instruction_F(function_i), .Reg_0(Reg_0),.Reg_1(Reg_1),.Reg_2(Reg_2),.Reg_3(Reg_3),.Reg_4(Reg_4),.Reg_5(Reg_5),.Reg_6(Reg_6),.Reg_7(Reg_7));
	
	
	
	initial begin
		count = 5'b0000;
		
	end
	
	always begin
		#20
		count=count+4'b0001;
	end

	
	always @(count) begin
		case (count)

		5'b00000 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b000100000000;end
		5'b00001 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b000100000000;end
		5'b00010 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001000010000;end
		5'b00011 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b001000010000;end
		5'b00100 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001100000001;end
		5'b00101 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b001100000001;end
		5'b00110 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001100000001;end
		5'b00111 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b001100000001;end
		5'b01000 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001100000001;end
		5'b01001 : begin Data = 16'b1; w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b001100000001;end
		5'b01010 : begin Data = 16'b10; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b000100100000;end
		5'b01011 : begin Data = 16'b10; w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b000100100000;end
		5'b01100 : begin Data = 16'b10; w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001100000010;end
		5'b01101 : begin Data = 16'b10; w = 1'b1; rst = 1'b0; clk = 1'b1;function_i = 11'b001100000010;end
		5'b01110 : begin Data = 16'b10; w = 1'b1; rst = 1'b0; clk = 1'b0;function_i = 11'b01000000010;end
		5'b01111 : begin Data = 16'b10; w = 1'b1; rst = 1'b0; clk = 1'b1;function_i = 11'b010000000010;end
		
		default : begin Data = 16'b0; w = 1'b1; rst = 1'b0; clk = 1'b1;function_i = 11'b000000000000;end
	endcase
	end

 
endmodule
