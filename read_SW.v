module read_SW(SW,output_noise, output_filter,DAC);

	input SW;
	input [23:0] output_noise, output_filter;
	output [23:0] DAC;
	
	assign DAC = SW ? output_filter : output_noise;

endmodule