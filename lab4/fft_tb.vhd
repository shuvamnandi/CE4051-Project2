--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:03:09 10/28/2016
-- Design Name:   
-- Module Name:   E:/lab4/fft_tb.vhd
-- Project Name:  lab4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fft
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;
use IEEE.std_logic_textio.all;

library STD;
use STD.textio.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fft_tb IS
END fft_tb;
 
ARCHITECTURE behavior OF fft_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fft
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
         unload : IN  std_logic;
         fwd_inv : IN  std_logic;
         fwd_inv_we : IN  std_logic;
         scale_sch_we : IN  std_logic;
         rfd : OUT  std_logic;
         busy : OUT  std_logic;
         edone : OUT  std_logic;
         done : OUT  std_logic;
         dv : OUT  std_logic;
         xn_re : IN  std_logic_vector(15 downto 0);
         xn_im : IN  std_logic_vector(15 downto 0);
         scale_sch : IN  std_logic_vector(13 downto 0);
         xn_index : OUT  std_logic_vector(6 downto 0);
         xk_index : OUT  std_logic_vector(6 downto 0);
         xk_re : OUT  std_logic_vector(15 downto 0);
         xk_im : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
   signal unload : std_logic := '0';
   signal fwd_inv : std_logic := '0';
   signal fwd_inv_we : std_logic := '0';
   signal scale_sch_we : std_logic := '0';
   signal xn_re : std_logic_vector(15 downto 0) := (others => '0');
   signal xn_im : std_logic_vector(15 downto 0) := (others => '0');
   signal scale_sch : std_logic_vector(13 downto 0) := (others => '0');

 	--Outputs
   signal rfd : std_logic;
   signal busy : std_logic;
   signal edone : std_logic;
   signal done : std_logic;
   signal dv : std_logic;
   signal xn_index : std_logic_vector(6 downto 0);
   signal xk_index : std_logic_vector(6 downto 0);
   signal xk_re : std_logic_vector(15 downto 0);
   signal xk_im : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fft PORT MAP (
          clk => clk,
          start => start,
          unload => unload,
          fwd_inv => fwd_inv,
          fwd_inv_we => fwd_inv_we,
          scale_sch_we => scale_sch_we,
          rfd => rfd,
          busy => busy,
          edone => edone,
          done => done,
          dv => dv,
          xn_re => xn_re,
          xn_im => xn_im,
          scale_sch => scale_sch,
          xn_index => xn_index,
          xk_index => xk_index,
          xk_re => xk_re,
          xk_im => xk_im
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
      
		start<='1';
      -- insert stimulus here 

      wait;
   end process;
	
	read_data: process 
  file infile     : text is in "sample_input.txt"; -- THIS FILE SHOULD BE INSIDE IPCORE_DIR DIRECTORY
   variable inline : line; -- line number
  variable data : std_logic_vector(15 downto 0);
  begin
    if(start = '1') then
      if (not endfile(infile)) then 
        readline(infile, inline);
        read(inline, data);
        xn_re <= data;
      else
        xn_re <= (others => '0');
      end if;
    end if;
    wait for clk_period;
  end process;

END;
