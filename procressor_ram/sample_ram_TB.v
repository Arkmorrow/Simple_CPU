`timescale 1ns / 1ps
 
module sample_ram_TB;
 
	// ------------------ Instantiate module ------------------
	// We are instantiating the module gated_RS, naming it instantiate_gated_RS.
	
	reg [3:0] count;
	reg clk,rst;
	reg[5:0]address;
	wire [15:0]readdata;
	
	
	ram_infer ram(.clk(clk),.rst(rst),.address(address),.readdata(readdata));
	
	
	
	initial begin
		count = 5'b0000;
		
	end
	
	always begin
		#20
		count=count+4'b0001;
	end

	
	always @(count) begin
		case (count)

		5'b00000 : begin clk = 1'b0; rst = 1'b0; address = 6'b0000;end
		5'b00001 : begin clk = 1'b1; rst = 1'b0; address = 6'b0000;end
		5'b00010 : begin clk = 1'b0; rst = 1'b0; address = 6'b0001;end
		5'b00011 : begin clk = 1'b1; rst = 1'b0; address = 6'b0001;end
		5'b00100 : begin clk = 1'b0; rst = 1'b0; address = 6'b0000;end
		5'b00101 : begin clk = 1'b1; rst = 1'b0; address = 6'b0000;end
		5'b00110 : begin clk = 1'b0; rst = 1'b0; address = 6'b0000;end
		5'b00111 : begin clk = 1'b1; rst = 1'b0; address = 6'b0000;end
		
		default : begin clk = 1'b0; rst = 1'b0; address = 6'b0000;end
	endcase
	end

 
endmodule
