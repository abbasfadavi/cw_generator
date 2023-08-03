-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
entity cw_generator_stub is
  port (
    freq : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    ii : out std_logic_vector( 16-1 downto 0 );
    rr : out std_logic_vector( 16-1 downto 0 )
  );
end cw_generator_stub;
architecture structural of cw_generator_stub is 
begin
  sysgen_dut : entity xil_defaultlib.cw_generator 
  port map (
    freq => freq,
    clk => clk,
    ii => ii,
    rr => rr
  );
end structural;
