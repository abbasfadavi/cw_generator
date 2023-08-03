  sysgen_dut : entity xil_defaultlib.cw_generator 
  port map (
    freq => freq,
    clk => clk,
    ii => ii,
    rr => rr
  );
