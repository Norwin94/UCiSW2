--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:02:25 03/11/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/Desktop/organy pon 8/eeeeeeeeeeeeeeee/main_test.vhd
-- Project Name:  eeeeeeeeeeeeeeee
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: main
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
 
ENTITY testZegarow IS
END testZegarow;
 
ARCHITECTURE behavior OF testZegarow IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT main
    PORT(
         Clock_enable_B : IN  std_logic;
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         Output : OUT  std_logic_vector(0 to 4)
        );
    END COMPONENT;
    

   --Inputs
   signal Clock_enable_B : std_logic := '0';
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '1';

 	--Outputs
   signal Output : std_logic_vector(0 to 4);

   -- Clock period definitions
   constant Clock_enable_B_period : time := 10 ns;
   constant Clock_period : time := 20 ns;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: main PORT MAP (
          Clock_enable_B => Clock_enable_B,
          Clock => Clock,
          Reset => Reset,
          Output => Output
        );


   Clock_process :process
   begin
   
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 
   
   new_process : process
   begin 
   if Reset='1' then
      wait until(rising_edge(Clock));
      Reset<='0';
   end if;   
   wait;
   end process;
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_enable_B_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;