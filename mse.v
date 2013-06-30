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

	assign MSE_SDI [3:0] = 4'bzzzz;	
	assign MSE_SDO [3:0] = 4'bzzzz;
	assign MSE_SLE [3:0] = 4'bzzzz;	
	assign MSE_SRDY[3:0] = 4'bzzzz;		
	
	assign step_motor_driver_0_AX = MSE_SDI[0];
	assign step_motor_driver_0_AY = MSE_SDI[1];
	assign step_motor_driver_0_BX = MSE_SDI[2];
	assign step_motor_driver_0_BY = MSE_SDI[3];
	
	assign step_motor_driver_1_AX = MSE_SLE[0];
	assign step_motor_driver_1_AY = MSE_SLE[1];
	assign step_motor_driver_1_BX = MSE_SLE[2];
	assign step_motor_driver_1_BY = MSE_SLE[3];
	
	assign step_motor_driver_2_AX = MSE_SRDY[0];
	assign step_motor_driver_2_AY = MSE_SRDY[1];
	assign step_motor_driver_2_BX = MSE_SRDY[2];
	assign step_motor_driver_2_BY = MSE_SRDY[3];
	
	assign step_motor_driver_3_AX = MSE_SDO[0];
	assign step_motor_driver_3_AY = MSE_SDO[1];
	assign step_motor_driver_3_BX = MSE_SDO[2];
	assign step_motor_driver_3_BY = MSE_SDO[3];	
	
	wire step_motor_driver_0_AX;
	wire step_motor_driver_0_AY;
	wire step_motor_driver_0_BX;
	wire step_motor_driver_0_BY;
	
	assign port0[7] = 1'bz;                    //FAULT
	assign port0[6] = 1'bz;                    //OTW
	assign port0[5] = !step_motor_driver_0_AX;  //XA
	assign port0[4] = 1'b1;					       //XAB	
	assign port0[3] = !step_motor_driver_0_AY;  //XB
	assign port0[2] = !step_motor_driver_0_BY;  //XC
	assign port0[1] = 1'b1;                    //XCD
	assign port0[0] = !step_motor_driver_0_BX;  //XD
	
	wire step_motor_driver_1_AX;
	wire step_motor_driver_1_AY;
	wire step_motor_driver_1_BX;
	wire step_motor_driver_1_BY;

	assign port1[7] = 1'bz;                    //FAULT
	assign port1[6] = 1'bz;                    //OTW
	assign port1[5] = !step_motor_driver_1_AX;  //XA
	assign port1[4] = 1'b1;					       //XAB	
	assign port1[3] = !step_motor_driver_1_AY;  //XB
	assign port1[2] = !step_motor_driver_1_BY;  //XC
	assign port1[1] = 1'b1;                    //XCD
	assign port1[0] = !step_motor_driver_1_BX;  //XD
	
	wire step_motor_driver_2_AX;
	wire step_motor_driver_2_AY;
	wire step_motor_driver_2_BX;
	wire step_motor_driver_2_BY;

	assign port2[7] = 1'bz;                    //FAULT
	assign port2[6] = 1'bz;                    //OTW
	assign port2[5] = !step_motor_driver_2_AX;  //XA
	assign port2[4] = 1'b1;					       //XAB	
	assign port2[3] = !step_motor_driver_2_AY;  //XB
	assign port2[2] = !step_motor_driver_2_BY;  //XC
	assign port2[1] = 1'b1;                    //XCD
	assign port2[0] = !step_motor_driver_2_BX;  //XD
	
	wire step_motor_driver_3_AX;
	wire step_motor_driver_3_AY;
	wire step_motor_driver_3_BX;
	wire step_motor_driver_3_BY;
	
	assign port3[0] = step_motor_driver_3_AX;  //AX
	assign port3[1] = step_motor_driver_3_BX;  //BX
	assign port3[2] = 1'b0;					       //AE	
	assign port3[3] = 1'b0;                    //BE
	assign port3[4] = step_motor_driver_3_AY;  //AY
	assign port3[5] = step_motor_driver_3_BY;  //BY

	
endmodule