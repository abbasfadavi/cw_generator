
namespace eval ::xilinx::dsp::planaheaddriver {
	set Compilation {IP Catalog}
	set CompilationFlow {IP}
	set CreateInterfaceDocument {off}
	set DSPDevice {xc7k160t}
	set DSPFamily {kintex7}
	set DSPPackage {fbg484}
	set DSPSpeed {-2}
	set FPGAClockPeriod 10
	set GenerateTestBench 0
	set HDLLanguage {vhdl}
	set IP_Auto_Infer {1}
	set IP_Categories_Text {System_Generator_for_DSP}
	set IP_Common_Repos {0}
	set IP_Description {}
	set IP_Dir {}
	set IP_Library_Text {SysGen}
	set IP_LifeCycle_Menu {2}
	set IP_Logo {sysgen_icon_100.png}
	set IP_Name {}
	set IP_Revision {321967471}
	set IP_Socket_IP {0}
	set IP_Socket_IP_Proj_Path {}
	set IP_Vendor_Text {User_Company}
	set IP_Version_Text {1.0}
	set ImplStrategyName {Vivado Implementation Defaults}
	set PostProjectCreationProc {dsp_package_for_vivado_ip_integrator}
	set Project {cw_generator}
	set ProjectFiles {
		{{conv_pkg.vhd} -lib {xil_defaultlib}}
		{{synth_reg.vhd} -lib {xil_defaultlib}}
		{{synth_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{srl17e.vhd} -lib {xil_defaultlib}}
		{{srl33e.vhd} -lib {xil_defaultlib}}
		{{synth_reg_reg.vhd} -lib {xil_defaultlib}}
		{{single_reg_w_init.vhd} -lib {xil_defaultlib}}
		{{xlclockdriver_rd.vhd} -lib {xil_defaultlib}}
		{{vivado_ip.tcl}}
		{{cw_generator_entity_declarations.vhd} -lib {xil_defaultlib}}
		{{cw_generator.vhd} -lib {xil_defaultlib}}
		{{cw_generator_clock.xdc}}
		{{cw_generator.xdc}}
	}
	set SimPeriod 1e-08
	set SimTime 0.0001
	set SimulationTime {100210.00000000 ns}
	set SynthStrategyName {Vivado Synthesis Defaults}
	set SynthesisTool {Vivado}
	set TopLevelModule {cw_generator}
	set TopLevelSimulinkHandle 0.00012207
	set VHDLLib {xil_defaultlib}
	set TopLevelPortInterface {}
	dict set TopLevelPortInterface freq Name {freq}
	dict set TopLevelPortInterface freq Type UFix_16_16
	dict set TopLevelPortInterface freq ArithmeticType xlUnsigned
	dict set TopLevelPortInterface freq BinaryPoint 16
	dict set TopLevelPortInterface freq Width 16
	dict set TopLevelPortInterface freq DatFile {cw_generator_freq.dat}
	dict set TopLevelPortInterface freq IconText {freq}
	dict set TopLevelPortInterface freq Direction in
	dict set TopLevelPortInterface freq Period 1
	dict set TopLevelPortInterface freq Interface 0
	dict set TopLevelPortInterface freq InterfaceName {}
	dict set TopLevelPortInterface freq InterfaceString {DATA}
	dict set TopLevelPortInterface freq ClockDomain {cw_generator}
	dict set TopLevelPortInterface freq Locs {}
	dict set TopLevelPortInterface freq IOStandard {}
	dict set TopLevelPortInterface ii Name {ii}
	dict set TopLevelPortInterface ii Type Fix_16_15
	dict set TopLevelPortInterface ii ArithmeticType xlSigned
	dict set TopLevelPortInterface ii BinaryPoint 15
	dict set TopLevelPortInterface ii Width 16
	dict set TopLevelPortInterface ii DatFile {cw_generator_ii.dat}
	dict set TopLevelPortInterface ii IconText {ii}
	dict set TopLevelPortInterface ii Direction out
	dict set TopLevelPortInterface ii Period 1
	dict set TopLevelPortInterface ii Interface 0
	dict set TopLevelPortInterface ii InterfaceName {}
	dict set TopLevelPortInterface ii InterfaceString {DATA}
	dict set TopLevelPortInterface ii ClockDomain {cw_generator}
	dict set TopLevelPortInterface ii Locs {}
	dict set TopLevelPortInterface ii IOStandard {}
	dict set TopLevelPortInterface rr Name {rr}
	dict set TopLevelPortInterface rr Type Fix_16_15
	dict set TopLevelPortInterface rr ArithmeticType xlSigned
	dict set TopLevelPortInterface rr BinaryPoint 15
	dict set TopLevelPortInterface rr Width 16
	dict set TopLevelPortInterface rr DatFile {cw_generator_rr.dat}
	dict set TopLevelPortInterface rr IconText {rr}
	dict set TopLevelPortInterface rr Direction out
	dict set TopLevelPortInterface rr Period 1
	dict set TopLevelPortInterface rr Interface 0
	dict set TopLevelPortInterface rr InterfaceName {}
	dict set TopLevelPortInterface rr InterfaceString {DATA}
	dict set TopLevelPortInterface rr ClockDomain {cw_generator}
	dict set TopLevelPortInterface rr Locs {}
	dict set TopLevelPortInterface rr IOStandard {}
	dict set TopLevelPortInterface clk Name {clk}
	dict set TopLevelPortInterface clk Type -
	dict set TopLevelPortInterface clk ArithmeticType xlUnsigned
	dict set TopLevelPortInterface clk BinaryPoint 0
	dict set TopLevelPortInterface clk Width 1
	dict set TopLevelPortInterface clk DatFile {}
	dict set TopLevelPortInterface clk Direction in
	dict set TopLevelPortInterface clk Period 1
	dict set TopLevelPortInterface clk Interface 6
	dict set TopLevelPortInterface clk InterfaceName {}
	dict set TopLevelPortInterface clk InterfaceString {CLOCK}
	dict set TopLevelPortInterface clk ClockDomain {cw_generator}
	dict set TopLevelPortInterface clk Locs {}
	dict set TopLevelPortInterface clk IOStandard {}
	dict set TopLevelPortInterface clk AssociatedInterfaces {}
	dict set TopLevelPortInterface clk AssociatedResets {}
	set MemoryMappedPort {}
}

source SgPaProject.tcl
::xilinx::dsp::planaheadworker::dsp_create_project