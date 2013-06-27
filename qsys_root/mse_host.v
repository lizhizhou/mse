module mse_host(
	input					coe_M1_RSTN, coe_M1_CLK,

	input		[7:0]	   coe_M1_ADDR,
	inout		[7:0]	   coe_M1_DATA,
	input					coe_M1_RD, coe_M1_WR,
	output				coe_M1_WAIT,


	output				rso_MRST_reset,
	output				cso_MCLK_clk,

	output	[31:0]	avm_M1_writedata,
	input		[31:0]	avm_M1_readdata,
	output	[7:0]	   avm_M1_address,
	output	[3:0]		avm_M1_byteenable,
	output				avm_M1_write,
	output				avm_M1_read,
	output				avm_M1_begintransfer,
	input					avm_M1_readdatavalid,
	input					avm_M1_waitrequest
);
	assign avm_M1_address = coe_M1_ADDR;
	assign avm_M1_write   = coe_M1_RD;
	assign coe_M1_WAIT    = avm_M1_waitrequest;
	
	assign coe_M1_DATA    = avm_M1_read ? avm_M1_readdata : 8'hzz;
	assign avm_M1_writedata = avm_M1_write ? coe_M1_DATA : 8'hzz;
	
	assign avm_M1_byteenable = 4'b0001;

endmodule