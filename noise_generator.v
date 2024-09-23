module noise_generator(clk,enable,sound_in,sound_out);

	input clk, enable;
	input [23:0] sound_in;
	output [23:0] sound_out;
	
	/*reg [23:0] counter ;
	
	always @(posedge clk) begin
	if(enable) begin
		counter <= sound_in + 12'b101010101011;
	end	
	end*/
	
	//assign sound_out = {{10{counter[2]}},{3{counter[1]}},11'd255};
	assign sound_out = sound_in;
	
	endmodule