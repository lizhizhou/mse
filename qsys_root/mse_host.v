module mse_host(
input					coe_M1_RSTN, coe_M1_CLK,

input		[7:0]	   coe_M1_ADDR,
inout		[16:0]	coe_M1_DATA,
input		[3:0]		coe_M1_CSN,
input		[3:0]		coe_M1_BEN,
input					coe_M1_RDN, coe_M1_WRN,
output				coe_M1_WAITN,


output				rso_MRST_reset,
output				cso_MCLK_clk,
output				cso_H1CLK_clk,
output				cso_H2CLK_clk,

output	[31:0]	avm_M1_writedata,
input		[31:0]	avm_M1_readdata,
output	[29:0]	avm_M1_address,
output	[3:0]		avm_M1_byteenable,
output				avm_M1_write,
output				avm_M1_read,
output				avm_M1_begintransfer,
input					avm_M1_readdatavalid,
input					avm_M1_waitrequest
);



endmodule