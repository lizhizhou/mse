module port_io_interface(
		inout reg [6:0] MSE_SDI,	
		input [6:0] MSE_SDI_dir,
		output[6:0] MSE_SDI_o,
		input [6:0] MSE_SDI_i,
		inout reg [6:0] MSE_SDO,
		input [6:0] MSE_SDO_dir,	
		output[6:0] MSE_SDO_o,
		input [6:0] MSE_SDO_i,	
		inout reg [6:0] MSE_SLE,		
		input [6:0] MSE_SLE_dir,
		output[6:0] MSE_SLE_o,	
		input [6:0] MSE_SLE_i,		
		inout reg [6:0] MSE_SRDY,
		input [6:0] MSE_SRDY_dir,
		output[6:0] MSE_SRDY_o,	
		input [6:0] MSE_SRDY_i			
		);
		integer i;
		always @ (MSE_SDI_dir or MSE_SDI_i)
		begin
			for(i = 0;i < 7 ;i = i+1)begin
				if(MSE_SDI_dir[i])
				MSE_SDI[i] <= MSE_SDI_i[i];
				else
				MSE_SDI[i] <= 1'bz; 
			end	
		end
		assign MSE_SDI_o = MSE_SDI;
		
		always @ (MSE_SDO_dir or MSE_SDO_i)
		begin
			for(i = 0;i < 7 ;i = i+1)begin
				if(MSE_SDO_dir[i])
				MSE_SDO[i] <= MSE_SDO_i[i];
				else
				MSE_SDO[i] <= 1'bz; 
			end	
		end
		assign MSE_SDO_o = MSE_SDI;
		
		always @ (MSE_SLE_dir or MSE_SLE_i)
		begin
			for(i = 0;i < 7 ;i = i+1)begin
				if(MSE_SLE_dir[i])
				MSE_SLE[i] <= MSE_SLE_i[i];
				else
				MSE_SLE[i] <= 1'bz; 
			end	
		end
		assign MSE_SLE_o = MSE_SLE;
		always @ (MSE_SRDY_dir or MSE_SRDY_i)
		begin
			for(i = 0;i < 7 ;i = i+1)begin
				if(MSE_SRDY_dir[i])
				MSE_SRDY[i] <= MSE_SRDY_i[i];
				else
				MSE_SRDY[i] <= 1'bz; 
			end	
		end
		assign MSE_SRDY_o = MSE_SRDY;

endmodule