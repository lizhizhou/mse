module mse (
	//from grid	
	input clk,
	input [7:0] address,
	inout [15:0] data,
	input wr,
	input rd,

	// IO 
	inout [7:0] port0,
	inout [7:0] port1,
	inout [7:0] port2,
	inout [7:0] port3,
	inout [7:0] port4,
	inout [7:0] port5,
	inout [7:0] port6,
	inout [7:0] port7,
	inout [7:0] port8,
	inout [7:0] port9


);
	wire in_clk;
	osc_altufm_osc_518 osc
	( 
	.osc(in_clk),
	.oscena(1) 
	);
	reg [7:0] temp;
	always @ (posedge in_clk)
	begin
		temp<=temp+1;
	end
	assign port0 = temp;
	assign port1 = temp;
	assign port2 = temp;
	assign port3 = temp;
	assign port4 = temp;
	assign port5 = temp;
	assign port6 = temp;
	assign port7 = temp;
	assign port8 = temp;
	assign port9 = temp;	
endmodule