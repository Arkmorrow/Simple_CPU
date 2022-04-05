module program_counter(read_addr,done,output_read_addr);
	input[5:0] read_addr;
	input done;
	output reg[5:0] output_read_addr;
	
	always @(*) begin
		if (done == 1'b1) begin
			output_read_addr <= read_addr + 1;
			

		end
		else begin
			output_read_addr <= read_addr;
		end
	
	end
	
	
	
		
endmodule
