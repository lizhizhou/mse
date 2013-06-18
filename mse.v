module mse (
	//MSE interface
	inout MSE_RESETN,	
	inout MSE_RSTOUT,	
	inout MSE_SCLK,	
	inout [6:0] MSE_SDI,	
	inout [6:0] MSE_SDO,		
	inout [6:0] MSE_SLE,		
	inout [6:0] MSE_SRDY,	
		
	// IO 
	inout  [7:0] port0,
	inout  [7:0] port1,
	inout  [7:0] port2,
	inout  [7:0] port3,
	inout  [7:0] port4,
	inout  [7:0] port5,
	inout  [7:0] port6,
	inout  [7:0] port7,
	inout  [7:0] port8,
	inout  [7:0] port9,

	output [3:0] LED

);
	wire in_clk;
	//for test only
	flash_altufm_parallel_71o flash
	( 
//	.addr(),
//	.data_valid(),
//	.datain(),
//	.dataout(),
//	.nbusy(),
//	.nerase(),
//	.nread(),
//	.nwrite(),
	.osc(in_clk),
	.oscena(1) 
	);
	reg [7:0] temp;
	always @ (posedge in_clk)
	begin
		temp<=temp+1;
	end
	
//	port_io_interface port_io(
//		.MSE_SDI(),	
//		.MSE_SDI_dir(),
//		.MSE_SDI_o(),
//		.MSE_SDI_i(),
//		.MSE_SDO(),
//		.MSE_SDO_dir(),	
//		.MSE_SDO_o(),
//		.MSE_SDO_i(),	
//		.MSE_SLE(),		
//		.MSE_SLE_dir(),
//		.MSE_SLE_o(),	
//		.MSE_SLE_i(),		
//		.MSE_SRDY(),
//		.MSE_SRDY_dir(),
//		.MSE_SRDY_o(),	
//		.MSE_SRDY_i()			
//	);

	
	reg [7:0] port0_dir;
	reg [7:0] port1_dir;
	reg [7:0] port2_dir;
	reg [7:0] port3_dir;
	reg [7:0] port4_dir;
	reg [7:0] port5_dir;
	reg [7:0] port6_dir;
	reg [7:0] port7_dir;
	
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

	//connection
	wire clk;
	wire rst;
	wire [7:0] address;
	wire [15:0] data;
	wire wr;
	wire rd;
	
endmodule