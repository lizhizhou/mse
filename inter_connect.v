module inter_connect(
				inout [6:0] MSE_SDI,	
				input [6:0] MSE_SDI_dir,	
				inout [6:0] MSE_SDO,
				inout [6:0] MSE_SDO_dir,		
				inout [6:0] MSE_SLE,		
				inout [6:0] MSE_SLE_dir,	
				inout [6:0] MSE_SRDY,
				inout [6:0] MSE_SRDY_dir,	
				
				inout [15:0] data,
				inout [7:0] address,
				inout wr,
				inout rd
				
			);


endmodule