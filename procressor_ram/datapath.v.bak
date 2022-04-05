module datapath(Data,reg_x_num,reg_y_num,AddXor,A_in,G_in,G_out,Extern,Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7,clk);
	input[15:0] Data;
	input[3:0] reg_x_num,reg_y_num;
	input[1:0] AddXor;
	input A_in,G_in,G_out, Extern,clk;
	output reg[15:0] Reg_0,Reg_1,Reg_2,Reg_3,Reg_4,Reg_5,Reg_6,Reg_7;
	wire[15:0] temp_bus_data,temp_A,temp_B;
	reg[15:0] R_x_pos,R_y_pos, temp_G;
	wire check_if_is_mov;
	
	assign check_if_is_mov = ~(A_in | G_in | G_out | Extern);
	
	// Set the data in bus as Date input when Extern is 1
	Control_Sign tri_buf(.a(Data),.b(temp_bus_data),.enable(Extern));
	
	// Get the data in R_y first
	always @ (*) begin
	
		if (reg_y_num == 0) begin
			R_y_pos = Reg_0;
		end
		else if (reg_y_num == 1) begin
			R_y_pos <= Reg_1;
		end
		else if (reg_y_num == 2) begin
			R_y_pos <= Reg_2;
		end
		else if (reg_y_num == 3) begin
			R_y_pos <= Reg_3;
		end
		else if (reg_y_num == 4) begin
			R_y_pos <= Reg_4;
		end
		else if (reg_y_num == 5) begin
			R_y_pos <= Reg_5;
		end
		else if (reg_y_num == 6) begin
			R_y_pos <= Reg_6;
		end
		else if (reg_y_num == 7) begin
			R_y_pos <= Reg_7;
		end
		
		if (reg_x_num == 0) begin
			R_x_pos <= Reg_0;
		end
		else if (reg_x_num == 1) begin
			R_x_pos <= Reg_1;
		end
		else if (reg_x_num == 2) begin
			R_x_pos <= Reg_2;
		end
		else if (reg_x_num == 3) begin
			R_x_pos <= Reg_3;
		end
		else if (reg_x_num == 4) begin
			R_x_pos <= Reg_4;
		end
		else if (reg_x_num == 5) begin
			R_x_pos <= Reg_5;
		end
		else if (reg_x_num == 6) begin
			R_x_pos <= Reg_6;
		end
		else if (reg_x_num == 7) begin
			R_x_pos <= Reg_7;
		end
	
	end
	
	// Set the data in bus as Date input when check_if_is_mov is 1
	// Then the data in bus is data in R_y
	Control_Sign tri_buf_one(.a(R_y_pos),.b(temp_bus_data),.enable(check_if_is_mov));
	
	// Add
	Control_Sign tri_buf_two(.a(R_x_pos),.b(temp_A),.enable(A_in));
	Control_Sign tri_buf_three(.a(R_y_pos),.b(temp_B),.enable(A_in));
	
	always @ (*) begin
		if (G_in == 1'b1) begin
			if (AddXor == 2'b00) begin
				temp_G = temp_A + temp_B;
			end
			else if (AddXor == 2'b01) begin
				temp_G = temp_A ^ temp_B;
			end
		end
	end
	
	Control_Sign tri_buf_four(.a(temp_G),.b(temp_bus_data),.enable(G_out));
	
	// Store back to R_x
	always @ (posedge clk) begin
	
		
		if (reg_x_num == 0) begin
			Reg_0 <= temp_bus_data;
		end
		else if (reg_x_num == 1) begin
			Reg_1 <= temp_bus_data;
		end
		else if (reg_x_num == 2) begin
			Reg_2 <= temp_bus_data;
		end
		else if (reg_x_num == 3) begin
			Reg_3 <= temp_bus_data;
		end
		else if (reg_x_num == 4) begin
			Reg_4 <= temp_bus_data;
		end
		else if (reg_x_num == 5) begin
			Reg_5 <= temp_bus_data;
		end
		else if (reg_x_num == 6) begin
			Reg_6 <= temp_bus_data;
		end
		else if (reg_x_num == 7) begin
			Reg_7 <= temp_bus_data;
		end
		
	end

endmodule
