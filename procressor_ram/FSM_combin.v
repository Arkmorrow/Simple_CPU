module FSM_combin(instr,next_instr,done,output_in);
	input[11:0] instr,next_instr;
	input done;
	output reg[11:0] output_in;
	
	always @(*) begin
		if (done == 1'b1) begin
			output_in <= next_instr;
			

		end
		else begin
			output_in <= instr;
		end
	
	end
	
	
	
		
endmodule
	
