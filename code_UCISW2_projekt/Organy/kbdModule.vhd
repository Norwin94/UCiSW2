library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;



entity kbdModule is
    Port ( KbdE0 : in  STD_LOGIC;
           KbdF0 : in  STD_LOGIC;
           KbdRdy : in  STD_LOGIC;
           KbdDo : in  STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
           frequency : out  STD_LOGIC_VECTOR (3 downto 0));
end kbdModule;

architecture Behavioral of kbdModule is
begin

scale_proc: process ( KbdDo, KbdE0, KbdF0, KbdRdy, Clk )
begin

      if rising_edge( Clk ) and KbdRdy = '1' then
	  
		case (KbdF0 & KbdE0 & KbdDo) is 
			when ( "00" & X"1C" ) => frequency <="0001"; -- c
			when ( "00" & X"1D" ) => frequency <="0010"; -- c#
			when ( "00" & X"1B" ) => frequency <="0011"; -- d
			when ( "00" & X"24" ) => frequency <="0100"; -- d#
			when ( "00" & X"23" ) => frequency <="0101"; -- e
			when ( "00" & X"2B" ) => frequency <="0110"; -- f
			when ( "00" & X"2C" ) => frequency <="0111"; -- f#
			when ( "00" & X"34" ) => frequency <="1000"; -- g
			when ( "00" & X"35" ) => frequency <="1001"; -- g#
			when ( "00" & X"33" ) => frequency <="1010"; -- a
			when ( "00" & X"3C" ) => frequency <="1011"; -- a# 
			when ( "00" & X"3B" ) => frequency <="1100"; -- b 
			when ( "00" & X"42" ) => frequency <="1101"; -- c
			when others => frequency <="0000";
		end case; 
      
      end if;
      
end process;

end Behavioral;

