// megafunction wizard: %ALTUFM_PARALLEL%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: ALTUFM_PARALLEL 

// ============================================================
// File Name: flash.v
// Megafunction Name(s):
// 			ALTUFM_PARALLEL
//
// Simulation Library Files(s):
// 			maxii
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 12.1 Build 243 01/31/2013 SP 1 SJ Web Edition
// ************************************************************

//Copyright (C) 1991-2012 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module flash (
	addr,
	datain,
	nerase,
	nread,
	nwrite,
	oscena,
	data_valid,
	dataout,
	nbusy,
	osc)/* synthesis synthesis_clearbox = 1 */;

	input	[8:0]  addr;
	input	[15:0]  datain;
	input	  nerase;
	input	  nread;
	input	  nwrite;
	input	  oscena;
	output	  data_valid;
	output	[15:0]  dataout;
	output	  nbusy;
	output	  osc;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "MAX II"
// Retrieval info: PRIVATE: OSC_PORT STRING "ON"
// Retrieval info: CONSTANT: ACCESS_MODE STRING "READ_WRITE"
// Retrieval info: CONSTANT: ERASE_TIME NUMERIC "500000000"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "MAX II"
// Retrieval info: CONSTANT: LPM_FILE STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_HINT STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altufm_parallel"
// Retrieval info: CONSTANT: OSC_FREQUENCY NUMERIC "180000"
// Retrieval info: CONSTANT: PROGRAM_TIME NUMERIC "1600000"
// Retrieval info: CONSTANT: WIDTH_ADDRESS NUMERIC "9"
// Retrieval info: CONSTANT: WIDTH_DATA NUMERIC "16"
// Retrieval info: CONSTANT: WIDTH_UFM_ADDRESS NUMERIC "9"
// Retrieval info: USED_PORT: addr 0 0 9 0 INPUT NODEFVAL "addr[8..0]"
// Retrieval info: CONNECT: @addr 0 0 9 0 addr 0 0 9 0
// Retrieval info: USED_PORT: data_valid 0 0 0 0 OUTPUT NODEFVAL "data_valid"
// Retrieval info: CONNECT: data_valid 0 0 0 0 @data_valid 0 0 0 0
// Retrieval info: USED_PORT: datain 0 0 16 0 INPUT NODEFVAL "datain[15..0]"
// Retrieval info: CONNECT: @datain 0 0 16 0 datain 0 0 16 0
// Retrieval info: USED_PORT: dataout 0 0 16 0 OUTPUT NODEFVAL "dataout[15..0]"
// Retrieval info: CONNECT: dataout 0 0 16 0 @dataout 0 0 16 0
// Retrieval info: USED_PORT: nbusy 0 0 0 0 OUTPUT NODEFVAL "nbusy"
// Retrieval info: CONNECT: nbusy 0 0 0 0 @nbusy 0 0 0 0
// Retrieval info: USED_PORT: nerase 0 0 0 0 INPUT NODEFVAL "nerase"
// Retrieval info: CONNECT: @nerase 0 0 0 0 nerase 0 0 0 0
// Retrieval info: USED_PORT: nread 0 0 0 0 INPUT NODEFVAL "nread"
// Retrieval info: CONNECT: @nread 0 0 0 0 nread 0 0 0 0
// Retrieval info: USED_PORT: nwrite 0 0 0 0 INPUT NODEFVAL "nwrite"
// Retrieval info: CONNECT: @nwrite 0 0 0 0 nwrite 0 0 0 0
// Retrieval info: USED_PORT: osc 0 0 0 0 OUTPUT NODEFVAL "osc"
// Retrieval info: CONNECT: osc 0 0 0 0 @osc 0 0 0 0
// Retrieval info: USED_PORT: oscena 0 0 0 0 INPUT NODEFVAL "oscena"
// Retrieval info: CONNECT: @oscena 0 0 0 0 oscena 0 0 0 0
// Retrieval info: GEN_FILE: TYPE_NORMAL flash.v TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL flash.qip TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL flash.bsf TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flash_inst.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flash_bb.v TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flash.inc TRUE TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL flash.cmp TRUE TRUE
// Retrieval info: LIB_FILE: maxii
