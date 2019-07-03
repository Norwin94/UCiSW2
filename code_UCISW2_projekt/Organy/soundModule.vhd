library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;



entity soundModule is
    Port ( 
           freq_in : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
           start : out  STD_LOGIC;
           freq_out : out  STD_LOGIC_VECTOR (11 downto 0);
		     command : out  STD_LOGIC_VECTOR (3 downto 0);
           address : out  STD_LOGIC_VECTOR (3 downto 0));
end soundModule;

architecture Behavioral of soundModule is

signal freq_temp : integer;
signal data_sample : UNSIGNED (4 downto 0) :=  X"0"&'0';
signal counter : UNSIGNED (11 downto 0) := X"000";
signal clk_cnt :STD_LOGIC;
begin

freq_proc: process(freq_in, freq_temp)
begin

	case freq_in is 
		when "0001" => freq_temp <=1494; 
		when "0010" => freq_temp <=1409; 
		when "0011" => freq_temp <=1330; 
		when "0100" => freq_temp <=1255; 
		when "0101" => freq_temp <=1184; 
		when "0110" => freq_temp <=1118; 
		when "0111" => freq_temp <=1055; 
		when "1000" => freq_temp <=996; 
		when "1001" => freq_temp <=940; 
		when "1010" => freq_temp <=888; 
		when "1011" => freq_temp <=838; 
		when "1100" => freq_temp <=791; 
		when "1101" => freq_temp <=747; 
		when others => freq_temp <=0;
	end case; 
	
end process;

counter_proc: process(clk, data_sample) 
   variable iterator : natural range 0 to 1494;
   begin
      iterator := 0;
      if(rising_edge(clk)) then
        counter <= counter + 1;
        start <= '0';
        if STD_LOGIC_VECTOR(counter) = freq_temp then
         counter <= X"000";
         data_sample <= data_sample + 1;
         start <= '1';
        end if;
      end if;
   freq_out <= STD_LOGIC_VECTOR (data_sample)&"0000000";
   address <= "1111";
	command <= "0011";

end process;
    
   
clk_it: process( clk_cnt ) 
  variable iterator2 : integer := 0;
   begin
     iterator2 := 0; 
      if(rising_edge(clk_cnt)) then 
         if(iterator2 = 31) then 
               iterator2 := 0; 
            else 
               iterator2 := iterator2 + 1; 
         end if; 
      end if;      
   end process; 
   
end Behavioral;

