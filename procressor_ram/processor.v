module processor(clk,rst,w, Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7);
	
	input clk,rst,w;
	wire [3:0] next_c;
	wire[3:0] reg_x_num,reg_y_num;
	wire A_in,G_in,G_out, Extern;
	wire done;
	reg load_op;
	wire[5:0] read_addr;
	wire[5:0]output_read_addr,new_addr;
	wire [15:0] readdata;
	wire[11:0] instr;
	wire[3:0] op_code;
	wire[15:0] data_get;
	wire[1:0] AddXor;
	wire[5:0] temp_addr;
	output[15:0] Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7;
	
	
	
	
	FSM_state_register s_r(.d(read_addr),.clk(clk),.rst(rst),.Q(output_read_addr));
	
	
	
	program_counter counter(.read_addr(output_read_addr),.done(done),.output_read_addr(new_addr));
	
	ram_infer ram(.clk(clk),.rst(rst),.address(output_read_addr),.readdata(readdata),.data(data_get));
	
	assign op_code = readdata[11:8];
	
	
	always@(*) begin
		if (op_code == 4'b0000) begin
			load_op <= 1'b1;
			
		end
		else begin
			load_op <= 1'b0;
		end
	end
	
	FSM_combin a(.instr(readdata[11:0]),.next_instr(data_get[11:0]),.done(load_op),.output_in(instr));
	
	program_counter counter1(.read_addr(new_addr),.done(load_op),.output_read_addr(read_addr));
	
	
	FSM_next_state n_s(.instruction_F(instr),.w(w),.next_s(next_c));
	
	//FSM_state_register s_r(.d(next_c),.clk(clk),.rst(rst),.Q(current_c));
	
	FSM_given_state g_s(.func_instruction(next_c),.instruction_F(instr), .reg_x_num(reg_x_num), .reg_y_num(reg_y_num), .A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.AddXor(AddXor));
	
	datapath DataPath(.Data(data_get),.reg_x_num(reg_x_num),.reg_y_num(reg_y_num),.AddXor(AddXor),.A_in(A_in),.G_in(G_in),.G_out(G_out),.Extern(Extern),.Reg_0(Reg_0),.Reg_1(Reg_1),.Reg_2(Reg_2),.Reg_3(Reg_3),.Reg_4(Reg_4),.Reg_5(Reg_5),.Reg_6(Reg_6),.Reg_7(Reg_7),.clk(clk),.done(done));
	
	
	
endmodule
