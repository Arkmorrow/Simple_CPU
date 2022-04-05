`timescale 1ns / 1ps
 
module program_counter_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	
	reg [3:0] count;
	reg[5:0] read_addr;
	reg done;
	
	wire [5:0]output_read_addr;
	
	
	program_counter counter(.read_addr(read_addr),.done(done),.output_read_addr(output_read_addr));
	
	
	
	initial begin
		count = 5'b0000;
		
	end
	
	always begin
		#20
		count=count+4'b0001;
	end

	
	always @(count) begin
		case (count)

		5'b00000 : begin read_addr = 6'b000000; done = 1'b0;end
		5'b00001 : begin read_addr = 6'b000001; done = 1'b1;end
		5'b00010 : begin read_addr = 6'b000010; done = 1'b0;end
		5'b00011 : begin read_addr = 6'b000011; done = 1'b1;end
		
		default : begin read_addr = 6'b000000; done = 1'b0;end
	endcase
	end

 
endmodule
