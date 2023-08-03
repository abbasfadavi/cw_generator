-- Generated from Simulink block cw_generator/cw
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cw_generator_cw is
  port (
    in_x0 : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    c : out std_logic_vector( 16-1 downto 0 );
    s : out std_logic_vector( 16-1 downto 0 )
  );
end cw_generator_cw;
architecture structural of cw_generator_cw is 
  signal clk_net : std_logic;
  signal dds_compiler_6_0_m_axis_data_tvalid_net : std_logic;
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal freq_net : std_logic_vector( 16-1 downto 0 );
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
  signal constant_op_net : std_logic_vector( 1-1 downto 0 );
  signal dds_compiler_6_0_m_axis_data_tdata_sine_net : std_logic_vector( 16-1 downto 0 );
  signal dds_compiler_6_0_m_axis_data_tdata_cosine_net : std_logic_vector( 16-1 downto 0 );
begin
  c <= register1_q_net;
  s <= register2_q_net;
  freq_net <= in_x0;
  clk_net <= clk_1;
  ce_net <= ce_1;
  constant_x0 : entity xil_defaultlib.sysgen_constant_b855824e22 
  port map (
    clk => '0',
    ce => '0',
    clr => '0',
    op => constant_op_net
  );
  dds_compiler_6_0 : entity xil_defaultlib.xldds_compiler_c71abaf1640d78e0077bb457c7f6de10 
  port map (
    s_axis_phase_tvalid => constant_op_net(0),
    s_axis_phase_tdata_pinc => freq_net,
    clk => clk_net,
    ce => ce_net,
    m_axis_data_tvalid => dds_compiler_6_0_m_axis_data_tvalid_net,
    m_axis_data_tdata_sine => dds_compiler_6_0_m_axis_data_tdata_sine_net,
    m_axis_data_tdata_cosine => dds_compiler_6_0_m_axis_data_tdata_cosine_net
  );
  register1 : entity xil_defaultlib.cw_generator_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => dds_compiler_6_0_m_axis_data_tdata_cosine_net,
    en(0) => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register1_q_net
  );
  register2 : entity xil_defaultlib.cw_generator_xlregister 
  generic map (
    d_width => 16,
    init_value => b"0000000000000000"
  )
  port map (
    rst => "0",
    d => dds_compiler_6_0_m_axis_data_tdata_sine_net,
    en(0) => dds_compiler_6_0_m_axis_data_tvalid_net,
    clk => clk_net,
    ce => ce_net,
    q => register2_q_net
  );
end structural;
-- Generated from Simulink block cw_generator_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cw_generator_struct is
  port (
    freq : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    ii : out std_logic_vector( 16-1 downto 0 );
    rr : out std_logic_vector( 16-1 downto 0 )
  );
end cw_generator_struct;
architecture structural of cw_generator_struct is 
  signal freq_net : std_logic_vector( 16-1 downto 0 );
  signal ce_net : std_logic;
  signal register2_q_net : std_logic_vector( 16-1 downto 0 );
  signal clk_net : std_logic;
  signal register1_q_net : std_logic_vector( 16-1 downto 0 );
begin
  freq_net <= freq;
  ii <= register2_q_net;
  rr <= register1_q_net;
  clk_net <= clk_1;
  ce_net <= ce_1;
  cw : entity xil_defaultlib.cw_generator_cw 
  port map (
    in_x0 => freq_net,
    clk_1 => clk_net,
    ce_1 => ce_net,
    c => register1_q_net,
    s => register2_q_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cw_generator_default_clock_driver is
  port (
    cw_generator_sysclk : in std_logic;
    cw_generator_sysce : in std_logic;
    cw_generator_sysclr : in std_logic;
    cw_generator_clk1 : out std_logic;
    cw_generator_ce1 : out std_logic
  );
end cw_generator_default_clock_driver;
architecture structural of cw_generator_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => cw_generator_sysclk,
    sysce => cw_generator_sysce,
    sysclr => cw_generator_sysclr,
    clk => cw_generator_clk1,
    ce => cw_generator_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity cw_generator is
  port (
    freq : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    ii : out std_logic_vector( 16-1 downto 0 );
    rr : out std_logic_vector( 16-1 downto 0 )
  );
end cw_generator;
architecture structural of cw_generator is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "cw_generator,sysgen_core_2021_2,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k160t,speed=-2,package=fbg484,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=10,system_simulink_period=1e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.0001,constant=2,dds_compiler_v6_0=1,register=2,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  cw_generator_default_clock_driver : entity xil_defaultlib.cw_generator_default_clock_driver 
  port map (
    cw_generator_sysclk => clk,
    cw_generator_sysce => '1',
    cw_generator_sysclr => '0',
    cw_generator_clk1 => clk_1_net,
    cw_generator_ce1 => ce_1_net
  );
  cw_generator_struct : entity xil_defaultlib.cw_generator_struct 
  port map (
    freq => freq,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    ii => ii,
    rr => rr
  );
end structural;
