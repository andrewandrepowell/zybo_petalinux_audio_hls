set C_TypeInfoList {{ 
"fir" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"input_val": [[],{ "pointer": "0"}] }, {"output_val": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "int32_t", {"typedef": [[[], {"scalar": "int"}],""]}], 
"1": [ "int32_t", {"typedef": [[[], {"scalar": "int"}],""]}]
}}
set moduleName fir
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName {fir}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_val int 32 regular {axi_slave 0}  }
	{ output_val int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_val", "interface" : "axi_slave", "bundle":"BUS_A","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input_val","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "output_val", "interface" : "axi_slave", "bundle":"BUS_A","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output_val","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_BUS_A_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_BUS_A_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_BUS_A_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_BUS_A_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_BUS_A_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_BUS_A_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_BUS_A_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_BUS_A_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_BUS_A_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWADDR" },"address":[{"name":"fir","role":"start","value":"0","valid_bit":"0"},{"name":"fir","role":"continue","value":"0","valid_bit":"4"},{"name":"fir","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_val","role":"data","value":"16"}] },
	{ "name": "s_axi_BUS_A_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWVALID" } },
	{ "name": "s_axi_BUS_A_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "AWREADY" } },
	{ "name": "s_axi_BUS_A_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "WVALID" } },
	{ "name": "s_axi_BUS_A_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "WREADY" } },
	{ "name": "s_axi_BUS_A_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS_A", "role": "WDATA" } },
	{ "name": "s_axi_BUS_A_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "BUS_A", "role": "WSTRB" } },
	{ "name": "s_axi_BUS_A_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARADDR" },"address":[{"name":"fir","role":"start","value":"0","valid_bit":"0"},{"name":"fir","role":"done","value":"0","valid_bit":"1"},{"name":"fir","role":"idle","value":"0","valid_bit":"2"},{"name":"fir","role":"ready","value":"0","valid_bit":"3"},{"name":"fir","role":"auto_start","value":"0","valid_bit":"7"},{"name":"output_val","role":"data","value":"24"}, {"name":"output_val","role":"valid","value":"28","valid_bit":"0"}] },
	{ "name": "s_axi_BUS_A_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARVALID" } },
	{ "name": "s_axi_BUS_A_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "ARREADY" } },
	{ "name": "s_axi_BUS_A_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "RVALID" } },
	{ "name": "s_axi_BUS_A_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "RREADY" } },
	{ "name": "s_axi_BUS_A_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "BUS_A", "role": "RDATA" } },
	{ "name": "s_axi_BUS_A_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS_A", "role": "RRESP" } },
	{ "name": "s_axi_BUS_A_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "BVALID" } },
	{ "name": "s_axi_BUS_A_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "BREADY" } },
	{ "name": "s_axi_BUS_A_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "BUS_A", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "BUS_A", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"], "CDFG" : "fir", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "input_val", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "output_val", "Type" : "Vld", "Direction" : "O", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fir1_shift_reg", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_fir_operator_s_fu_51", "Port" : "fir1_shift_reg"}]}, 
		{"Name" : "c", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : [
			{"SubInst" : "grp_fir_operator_s_fu_51", "Port" : "c"}]}],
		"WaitState" : [
		{"State" : "ap_ST_st2_fsm_1", "FSM" : "ap_CS_fsm", "SubInst" : "grp_fir_operator_s_fu_51"}],
		"SubBlockPort" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.fir_BUS_A_s_axi_U", "Parent" : "0", "Child" : []},
	{"Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fir_operator_s_fu_51", "Parent" : "0", "Child" : ["3", "4", "5"], "CDFG" : "fir_operator_s", "VariableLatency" : "1", "AlignedPipeline" : "0", "UnalignedPipeline" : "0", "ProcessNetwork" : "0", "Combinational" : "0", "ControlExist" : "1",
		"Port" : [
		{"Name" : "x", "Type" : "None", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "fir1_shift_reg", "Type" : "Memory", "Direction" : "IO", "BlockSignal" : [], "SubConnect" : []}, 
		{"Name" : "c", "Type" : "Memory", "Direction" : "I", "BlockSignal" : [], "SubConnect" : []}],
		"WaitState" : [],
		"SubBlockPort" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_operator_s_fu_51.fir1_shift_reg_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_operator_s_fu_51.c_U", "Parent" : "2", "Child" : []},
	{"Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fir_operator_s_fu_51.fir_mul_15s_32s_32_3_U1", "Parent" : "2", "Child" : []}]}

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "163", "Max" : "163"}
	, {"Name" : "Interval", "Min" : "164", "Max" : "164"}
]}

set Spec2ImplPortList { 
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
