module d_trigger(data, clk, q);
	
	parameter DW = 4;
	
	input [(DW - 1): 0] data;
	input clk;
	output [(DW - 1): 0] q;
	
	reg [(DW - 1): 0] q = 0;

	always @(posedge clk) begin
		q <= data;
	end

endmodule
