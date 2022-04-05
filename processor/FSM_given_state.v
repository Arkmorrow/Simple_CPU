module FSM_given_state(func_instruction, instruction_F,reg_x_num,reg_y_num, A_in,G_in,G_out,Extern,AddXor);
	input [11:0] instruction_F;
	input [3:0] func_instruction;
	
	//00 first 0 is R_out.second 0 is R_in
	output reg[3:0] reg_x_num,reg_y_num;
	
	output reg A_in,G_in,G_out, Extern;
	output reg[1:0] AddXor;
	
	
	always @ (func_instruction) begin
		case (func_instruction)
			4'b0000 : begin Extern <= 1'b0; A_in <= 1'b0; G_in <= 1'b0; G_out <= 1'b0; AddXor <= 2'b10; reg_x_num <= instruction_F[7:4]; reg_y_num <= instruction_F[3:0]; end
			4'b0001 : begin Extern <= 1'b1; A_in <= 1'b0; G_in <= 1'b0; G_out <= 1'b0; AddXor <= 2'b10; reg_x_num <= instruction_F[7:4]; reg_y_num <= instruction_F[3:0]; end
			4'b0010 : begin Extern <= 1'b0; A_in <= 1'b0; G_in <= 1'b0; G_out <= 1'b0; AddXor <= 2'b10; reg_x_num <= instruction_F[7:4]; reg_y_num <= instruction_F[3:0]; end
			4'b0011 : begin Extern <= 1'b0; A_in <= 1'b1; G_in <= 1'b1; G_out <= 1'b1; AddXor <= 2'b00; reg_x_num <= instruction_F[7:4]; reg_y_num <= instruction_F[3:0]; end
			4'b0100 : begin Extern <= 1'b0; A_in <= 1'b1; G_in <= 1'b1; G_out <= 1'b1; AddXor <= 2'b01; reg_x_num <= instruction_F[7:4]; reg_y_num <= instruction_F[3:0]; end
			default : begin Extern <= 1'b0; A_in <= 1'b0; G_in <= 1'b0; G_out <= 1'b0; AddXor <= 2'b10; reg_x_num <= instruction_F[7:4]; reg_y_num <= instruction_F[3:0]; end
		endcase
	end
	
				
endmodule
