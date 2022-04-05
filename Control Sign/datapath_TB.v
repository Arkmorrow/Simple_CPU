`timescale 1ns / 1ps
 
module datapath_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	
	reg [3:0] count;
	reg A_in,G_in,G_out,Extern,clk;
	reg[3:0] reg_x_num,reg_y_num;
	reg[15:0] Data;
	reg[1:0] AddXor;
	wire [15:0]Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7;
	
	// instantiate and connect all 3 flip flops/latches
	// Use same inputs (same inputs for D, clk to all instances)
	// Use 3 separate outputs (see wires above)
	
	datapath dataPath_one(.Data(Data),.reg_x_num(reg_x_num),.reg_y_num(reg_y_num),.AddXor(AddXor),.A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.Reg_0(Reg_0),.Reg_1(Reg_1),.Reg_2(Reg_2),.Reg_3(Reg_3),.Reg_4(Reg_4),.Reg_5(Reg_5),.Reg_6(Reg_6),.Reg_7(Reg_7),.clk(clk));
	
	
	initial begin
		count = 4'b0000;
		
	end
	
	always begin
		#20
		count=count+4'b0001;
	end

	
	always @(count) begin
		case (count)
		4'b0000 : begin Data = 16'b10; reg_x_num = 4'b0001; reg_y_num = 4'b0000; AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b1; clk = 0;end
		4'b0001 : begin Data = 16'b10; reg_x_num = 4'b0001; reg_y_num = 4'b0000;  AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b1; clk = 1;end
		4'b0010 : begin Data = 16'b100; reg_x_num = 4'b0010; reg_y_num = 4'b0000; AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b1;clk = 0;end
		4'b0011 : begin Data = 16'b100; reg_x_num = 4'b0010; reg_y_num = 4'b0000;  AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b1;clk = 1;end
		4'b0100 : begin Data = 16'b1; reg_x_num = 4'b0010; reg_y_num = 4'b0001;  AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b0;clk = 0;end
		4'b0101 : begin Data = 16'b1; reg_x_num = 4'b0010; reg_y_num = 4'b0001;AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b0;clk = 1;end
		4'b0110 : begin Data = 16'b1; reg_x_num = 4'b0010; reg_y_num = 4'b0001;AddXor = 2'b0; A_in = 1'b1;G_in = 1'b1;G_out = 1'b1;Extern = 1'b0;clk = 0;end
		4'b0111 : begin Data = 16'b1; reg_x_num = 4'b0010; reg_y_num = 4'b0001;AddXor = 2'b0; A_in = 1'b1;G_in = 1'b1;G_out = 1'b1;Extern = 1'b0;clk = 1;end
		4'b1000 : begin Data = 16'b1; reg_x_num = 4'b0001; reg_y_num = 4'b0010;AddXor = 2'b0; A_in = 1'b1;G_in = 1'b1;G_out = 1'b1;Extern = 1'b0;clk = 0;end
		4'b1001 : begin Data = 16'b1; reg_x_num = 4'b0001; reg_y_num = 4'b0010;AddXor = 2'b0; A_in = 1'b1;G_in = 1'b1;G_out = 1'b1;Extern = 1'b0;clk = 1;end
		4'b1010 : begin Data = 16'b1; reg_x_num = 4'b0001; reg_y_num = 4'b0010;AddXor = 2'b1; A_in = 1'b1;G_in = 1'b1;G_out = 1'b1;Extern = 1'b0;clk = 0;end
		4'b1011 : begin Data = 16'b1; reg_x_num = 4'b0001; reg_y_num = 4'b0010;AddXor = 2'b1; A_in = 1'b1;G_in = 1'b1;G_out = 1'b1;Extern = 1'b0;clk = 1;end
		default : begin Data = 16'b0; reg_x_num = 4'b0001; reg_y_num = 4'b0000; AddXor = 2'b0; A_in = 1'b0;G_in = 1'b0;G_out = 1'b0;Extern = 1'b0; clk = 0;end
	endcase
	end

 
endmodule
