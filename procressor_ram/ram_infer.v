module ram_infer(clk,rst,address,readdata,data);

	input clk,rst;
	input [5:0] address;
	output [15:0] readdata,data;

	wire[5:0] temp_2;
	

	assign temp_2 = address + 1;

	rom_16 Rom(.address(address),.clock(clk),.q(readdata));
	
	rom_16 Rom_1(.address(temp_2),.clock(clk),.q(data));
	

endmodule
