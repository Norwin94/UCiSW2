--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:35:15 06/02/2019
-- Design Name:   
-- Module Name:   G:/27 05/UCISW2 Projekt/Organy/test_soundModule.vhd
-- Project Name:  Organy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: soundModule
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_soundModule IS
END test_soundModule;
 
ARCHITECTURE behavior OF test_soundModule IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT soundModule
    PORT(
         freq_in : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         start : OUT  std_logic;
         freq_out : OUT  std_logic_vector(11 downto 0);
         command : OUT  std_logic_vector(3 downto 0);
         address : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal freq_in : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal start : std_logic;
   signal freq_out : std_logic_vector(11 downto 0);
   signal command : std_logic_vector(3 downto 0);
   signal address : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: soundModule PORT MAP (
          freq_in => freq_in,
          clk => clk,
          start => start,
          freq_out => freq_out,
          command => command,
          address => address
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
		freq_in <= "0001"; -- C: freq_out = 1494
		wait for 100 ns;
		freq_in <= "0010"; -- freq_out = 1409 
		wait for 100 ns;
		freq_in <= "0111"; -- freq_out = 1055
		wait for 100 ns;
		freq_in <= "1101"; -- freq_out = 747
		wait for 100 ns;
		freq_in <= "1111"; -- takiej czêstotliwoœci nie mamy -> freq_out = 0
		
		wait;
end process;

END;
