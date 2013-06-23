module mse (
	//MSE interface
	input  MSE_RESETN,	
	output MSE_RSTOUT,	
	input  MSE_SCLK,	
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
	
	port_io_interface port_io(
		 .clk(MSE_SCLK),
		 .rst(!MSE_RESETN),
		 .data({MSE_SLE[4],MSE_SLE[5],MSE_SDI[1],MSE_SDO[1],MSE_SDO[2],MSE_SDO[5],MSE_SLE[1],MSE_SDI[5]}),
	    .port0(port0),
	    .port1(port1),
	    .port2(port2),
	    .port3(port3),
	    .port4(port4),
		 .port5(port5),
	    .port6(port6),
	    .port7(port7),
	    .port8(port8),
	    .port9(port9)
	);

	
endmodule