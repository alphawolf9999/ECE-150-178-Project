//this module is a parallel load 32-bit register

module reg_32(input  Clk, Reset, LD,
				  input  [3:0] byte_en,
				  input  [31:0] Din,
				  output reg [31:0] Dout);
	
	always @ (posedge Clk)
		begin
			if(Reset)
				Dout <= 32'd0;
			else if(LD)
				begin
				case(byte_en) //check syntax if registers aren't correct
					4'b1111	:	Dout <= Din;
					4'b1100	:	Dout[31:16] <= Din[31:16];
					4'b0011	:	Dout[15:0] <= Din[15:0];
					4'b1000	:	Dout[31:24] <= Din[31:24];
					4'b0100	:	Dout[23:16] <= Din[23:16];
					4'b0010	:	Dout[15:8] <= Din[15:8];
					4'b0001	:	Dout[7:0] <= Din[7:0];
				endcase
				end
		end
	
endmodule