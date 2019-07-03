----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:01:34 03/11/2019 
-- Design Name: 
-- Module Name:    main - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity main is
   port( Clock_enable_B: in std_logic;
 	 Clock: in std_logic;
 	 Reset: in std_logic;
 	 Output: out std_logic_vector(0 to 4));
end main;
 
architecture Behavioral of main is
   signal start: std_logic;
   signal block_start: std_logic;
   signal temp: std_logic_vector(0 to 4);
   signal schodek: std_logic_vector(0 to 9);

begin  
   process(Clock,Reset)
   begin
      if Reset='1' then    
         temp <= "00000";
         schodek<="0000000000";
         start<='1';
      elsif(rising_edge(Clock)) then
         if Clock_enable_B='0' then
            if schodek=782 then
               schodek<="0000000000";
               start <= '1'; 
               if temp="11111" then         
                  temp<="00000";
               else
                  temp <= temp + 1; 
               end if;
            else 
              schodek <= schodek + 1;
              start<='0';
            end if;
         end if;
      end if;
   end process;
   Output <= temp;
end Behavioral;