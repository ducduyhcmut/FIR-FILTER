module filter(rst,clk,sound_org,sound_fil);

	input rst, clk;
	input [23:0] sound_org;
	output [23:0] sound_fil;
	
	parameter [23:0] 	
							tap0 = 24'd143877,
							tap1 = -24'229288,
							tap2 = 24'273011,
							tap3 = -24'd246065,
							tap4 = 24'd116423,
							tap5 = 24'd163704,
							tap6 = -24'd747348,
							tap7 = 24'3067688,
							tap8 = 24'd3067688,
							tap9 = -24'd747348,
							tap10 = 24'd163704,
							tap11 = 24'd116423 ,
							tap12 = -24'd246065,
							tap13 = 24'd273011,
							tap14 = -24'd229288,
							tap15 = 24'd143877
							;
	
	reg [23:0] D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;
	                             
	assign sound_fil = sound_org*tap0 + D1*tap1 + D2*tap2 + D3*tap3 + D4*tap4 + D5*tap5 + D6*tap6 + D7*tap7 + D8*tap8 + D9*tap9 + D10*tap10 + D11*tap11 + D12*tap12 + D13*tap13 + D14*tap14 + D15*tap15;
	
	always @(posedge clk or negedge rst) begin
		if(!rst) begin
							D1 <= 0;
							D2 <= 0;
							D3 <= 0;
							D4 <= 0;
							D5 <= 0;
							D6 <= 0;
							D7 <= 0;
							D8 <= 0;
							D9 <= 0;
							D10 <= 0;
							D11 <= 0;
							D12 <= 0;
							D13 <= 0;
							D14 <= 0;
							D15 <= 0;	
		end else begin
							D1 <= sound_org;
							D2 <= D1;
							D3 <= D2;
							D4 <= D3;
							D5 <= D4;
							D6 <= D5;
							D7 <= D6;
							D8 <= D7;
							D9 <= D8;
							D10 <= D9;
							D11 <= D10;
							D12 <= D11;
							D13 <= D12;
							D14 <= D13;
							D15 <= D14;						
		end	
	end
	
endmodule