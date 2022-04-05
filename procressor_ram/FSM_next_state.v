module FSM_next_state(instruction_F,w, next_s);
	input[11:0] instruction_F;
	input w;
	output reg[3:0] next_s;
	wire[3:0] temp_in;
	wire [4:0] temp;
	
	assign temp_in = instruction_F[11:8];
	
	assign temp = {temp_in,w};
	
	always @ (temp) begin
		case (temp)
		5'b00000 : begin next_s <= 4'b0000; end
		5'b00001 : begin next_s <= 4'b0000; end
		5'b00010 : begin next_s <= 4'b0000; end
		5'b00011 : begin next_s <= 4'b0001; end
		5'b00100 : begin next_s <= 4'b0000; end
		5'b00101 : begin next_s <= 4'b0010; end
		5'b00110 : begin next_s <= 4'b0000; end
		5'b00111 : begin next_s <= 4'b0011; end
		5'b01000 : begin next_s <= 4'b0000; end
		5'b01001 : begin next_s <= 4'b0100; end
		default : begin next_s <= 4'b0000; end
		endcase
	end
				
endmodule
