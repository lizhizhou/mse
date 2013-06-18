module inter_connect(
				inout [6:0] MSE_SDI,	
				input [6:0] MSE_SDI_dir,	
				inout [6:0] MSE_SDO,
				input [6:0] MSE_SDO_dir,		
				inout [6:0] MSE_SLE,		
				input [6:0] MSE_SLE_dir,	
				inout [6:0] MSE_SRDY,
				input [6:0] MSE_SRDY_dir,	
				
				inout [15:0] data,
				input [15:0] data_dir,
				inout [7:0] address,
				input [7:0] address_dir,
				inout wr,
				input wr_dir,
				inout rd,
				input rd_dir			
			);
			//assign wr_o = MSE_SDI[]
			assign wr = wr_dir? wr_o:1'bz;
			assign wr_o = !wr_dir?wr:1'bz;

endmodule