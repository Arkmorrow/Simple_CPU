module processor(data,clk,rst,w,instruction_F, Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7);
	
	input clk,rst,w;
	input[11:0] instruction_F;
	input[15:0] data;
	wire [3:0] next_c,current_c;
	wire[3:0] reg_x_num,reg_y_num;
	wire A_in,G_in,G_out, Extern;
	wire[1:0] AddXor;
	output[15:0] Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7;
	
	
	FSM_next_state n_s(.instruction_F(instruction_F),.w(w),.next_s(next_c));
	
	//FSM_state_register s_r(.d(next_c),.clk(clk),.rst(rst),.Q(current_c));
	
	FSM_given_state g_s(.func_instruction(next_c),.instruction_F(instruction_F), .reg_x_num(reg_x_num), .reg_y_num(reg_y_num), .A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.AddXor(AddXor));
	
	datapath DataPath(.Data(data),.reg_x_num(reg_x_num),.reg_y_num(reg_y_num),.AddXor(AddXor),.A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.Reg_0(Reg_0),.Reg_1(Reg_1),.Reg_2(Reg_2),.Reg_3(Reg_3),.Reg_4(Reg_4),.Reg_5(Reg_5),.Reg_6(Reg_6),.Reg_7(Reg_7),.clk(clk));
		
endmodule
