--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:57:34 06/02/2019
-- Design Name:   
-- Module Name:   G:/27 05/UCISW2 Projekt/Organy/test_kbdModule.vhd
-- Project Name:  Organy
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: kbdModule
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
 
ENTITY test_kbdModule IS
END test_kbdModule;
 
ARCHITECTURE behavior OF test_kbdModule IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT kbdModule
    PORT(
         KbdE0 : IN  std_logic;
         KbdF0 : IN  std_logic;
         KbdRdy : IN  std_logic;
         KbdDo : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
         frequency : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal KbdE0 : std_logic := '0';
   signal KbdF0 : std_logic := '0';
   signal KbdRdy : std_logic := '0';
   signal KbdDo : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';

 	--Outputs
   signal frequency : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: kbdModule PORT MAP (
          KbdE0 => KbdE0,
          KbdF0 => KbdF0,
          KbdRdy => KbdRdy,
          KbdDo => KbdDo,
          Clk => Clk,
          frequency => frequency
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

 -- Stimulus process
stim_proc: process
	begin	
		KbdF0 <= '0'; 
		KbdE0 <= '0'; 
		KbdRdy <= '0'; 
		
		KbdDo <= X"1C"; -- C 0001 na wyjœciu frequency 
		wait for 100 ns;	
		KbdDo <= X"1B"; -- D 0011
		wait for 100 ns;	
		KbdDo <= X"2C"; -- F# 0111
		wait for 100 ns;	
		KbdDo <= X"3C"; -- A# 1011
		wait for 100 ns;	
		
		KbdRdy <= '1'; 
		KbdDo <= X"1C"; -- C - nie zadzia³a, bo KbdRdy jest 0 
		wait for 100 ns;	
		KbdDo <= X"1B"; -- D
		wait for 100 ns;	
		KbdRdy <= '1'; -- znowu bêdzie dzia³aæ 
		wait for 100 ns;	
		KbdDo <= X"1C"; -- C
		wait for 100 ns;	
		KbdDo <= X"1B"; -- D
		
		wait;
end process;


END;
