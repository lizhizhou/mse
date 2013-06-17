flash_inst : flash PORT MAP (
		addr	 => addr_sig,
		datain	 => datain_sig,
		nerase	 => nerase_sig,
		nread	 => nread_sig,
		nwrite	 => nwrite_sig,
		data_valid	 => data_valid_sig,
		dataout	 => dataout_sig,
		nbusy	 => nbusy_sig,
		osc	 => osc_sig
	);
