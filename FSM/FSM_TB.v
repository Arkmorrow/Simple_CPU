`timescale 1ns / 1ps
 
module FSM_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	
	reg [3:0] count;
	reg w,rst,clk;
	reg[11:0] function_i;
	wire[3:0] reg_x_num,reg_y_num;
	wire A_in,G_in,G_out, Extern;
	wire[1:0] AddXor;
	
	// instantiate and connect all 3 flip flops/latches
	// Use same inputs (same inputs for D, clk to all instances)
	// Use 3 separate outputs (see wires above)
	
	FSM_combin combin_f(.clk(clk),.rst(rst),.w(w),.instruction_F(function_i), .reg_x_num(reg_x_num), .reg_y_num(reg_y_num), .A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.AddXor(AddXor));
	
	
	initial begin
		count = 4'b0000;

	end
	
	always begin
		#20
		count=count+4'b0001;
	end

	
	always @(count) begin
		case (count)
		4'b0000 : begin w = 1'b1; rst = 1'b1; clk = 1'b1; function_i = 11'b000000000000;end
		4'b0001 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b000100010000;end
		4'b0010 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b000100010000;end
		4'b0011 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001000010010;end
		4'b0100 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b001000010010;end
		4'b0101 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b001100010010;end
		4'b0110 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b001100010010;end
		4'b0111 : begin w = 1'b1; rst = 1'b0; clk = 1'b0; function_i = 11'b010000010010;end
		4'b1000 : begin w = 1'b1; rst = 1'b0; clk = 1'b1; function_i = 11'b010000010010;end
		default : begin w = 1'b1; rst = 1'b0; clk = 1'b1;function_i = 11'b000000000000;end
	endcase
	end

 
endmodule
