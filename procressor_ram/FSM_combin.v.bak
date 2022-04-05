module FSM_combin(clk,rst,w,instruction_F, reg_x_num,reg_y_num, A_in,G_in,G_out,Extern,AddXor);
	input clk,rst,w;
	input[11:0] instruction_F;
	wire [3:0] next_c,current_c;
	output [3:0] reg_x_num,reg_y_num;
	output A_in,G_in,G_out, Extern;
	output [1:0] AddXor;
	
	
	FSM_next_state n_s(.instruction_F(instruction_F),.w(w),.next_s(next_c));
	
	FSM_state_register s_r(.d(next_c),.clk(clk),.rst(rst),.Q(current_c));
	
	FSM_given_state g_s(.func_instruction(current_c),.instruction_F(instruction_F), .reg_x_num(reg_x_num), .reg_y_num(reg_y_num), .A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.AddXor(AddXor));
				
endmodule
