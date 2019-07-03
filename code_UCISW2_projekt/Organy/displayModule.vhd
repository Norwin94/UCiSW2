library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity displayModule is
Port (
      CLK : in STD_LOGIC;
		KEY : in STD_LOGIC_VECTOR (3 DOWNTO 0);
      VGA_R : out STD_LOGIC;
		VGA_G : out STD_LOGIC;
		VGA_B : out STD_LOGIC;
		VGA_HS : out STD_LOGIC;
		VGA_VS : out STD_LOGIC);
end displayModule;

architecture Behavioral of displayModule is 
signal clk25MHz : std_logic; 
signal hc : std_logic_vector (9 downto 0); -- licznik wysokoœci 
signal vc : std_logic_vector (9 downto 0); -- licznik szerokoœci 

begin
clk_div: process (CLK)
begin
   if rising_edge(CLK) then
      clk25mhz <= not clk25mhz;
   end if;
end process;

process (clk25mhz) 
begin 
  if clk25mhz'event and clk25mhz = '1' then 
    if (hc >= "0010010000" ) -- 144
    and (hc < "1100010000" ) -- 784
    and (vc >= "0000000000" ) -- 0 (wczesniej bylo 39)
    and (vc < "1010000000" ) -- 640 (wczesniej bylo 519)
    then
		-- C
		if vc >= 0 and vc <= 640 and hc >= 184 and hc <= 234 then
			if KEY = "0001" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;

		elsif vc >= 300 and vc <= 640 and hc >= 234 and hc <= 252 then
			if KEY = "0001" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		-- C#
		elsif vc >= 0 and vc <= 300 and hc >= 234 and hc <= 274 then
			if KEY = "0010" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;
		--D
		elsif vc >= 300 and vc <= 640 and hc >= 256 and hc <= 322 then
			if KEY = "0011" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--D
		elsif vc >= 0 and vc <= 300 and hc >= 274 and hc <= 304 then
			if KEY = "0011" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--D#
		elsif vc >= 0 and vc <= 300 and hc >= 304 and hc <= 344 then
			if KEY = "0100" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;
		--E
		elsif vc >= 300 and vc <= 640 and hc >= 326 and hc <= 344 then
			if KEY = "0101" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--E
		elsif vc >= 0 and vc <= 640 and hc >= 344 and hc <= 392 then
			if KEY = "0101" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--F
		elsif vc >=0 and vc <= 640 and hc >= 396 and hc <= 444 then
			if KEY = "0110" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--F
		elsif vc >= 300 and vc <= 640 and hc >= 444 and hc <= 462 then
			if KEY = "0110" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--F#
		elsif vc >= 0 and vc <= 300 and hc >= 444 and hc <= 484 then
			if KEY = "0111" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;	
		--G
		elsif vc >= 300 and vc <= 640 and hc >= 466 and hc <= 532 then
			if KEY = "1000" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--G
		elsif vc >= 0 and vc <= 300 and hc >= 484 and hc <=514 then
			if KEY = "1000" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--G#
		elsif vc >= 0 and vc <= 300 and hc >= 514 and hc <= 554 then
			if KEY = "1001" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;
		--A
		elsif vc >= 300 and vc <= 640 and hc >= 536 and hc <= 602 then
			if KEY = "1010" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--A
		elsif vc >= 0 and vc <= 300 and hc >= 554 and hc <= 584 then
			if KEY = "1010" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--A#
		elsif vc >= 0 and vc <= 300 and hc >= 584 and hc <= 624 then
			if KEY = "1011" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '0';
				VGA_G <= '0';
				VGA_B <= '0';
			end if;
		--H
		elsif vc >= 300 and vc <= 640 and hc >= 606 and hc <= 624 then
			if KEY = "1100" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--H
		elsif vc >= 0 and vc <= 640 and hc >= 624 and hc <= 672 then
			if KEY = "1100" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		--C
		elsif vc >= 0 and vc <= 640 and hc >= 676 and hc <= 744 then
			if KEY = "1101" then
				VGA_R <= '0';
				VGA_G <= '1';
				VGA_B <= '0';
			else
				VGA_R <= '1';
				VGA_G <= '1';
				VGA_B <= '1';
			end if;
		else
			VGA_R <= '0';
			VGA_G <= '0';
			VGA_B <= '0';
		end if;
 
	 else
		VGA_R <= '0';
		VGA_G <= '0';
		VGA_B <= '0';
    end if;
	 
	 
    if (hc > "0000000000" )
      and (hc < "0001100001" ) -- 96+1
    then
      VGA_HS <= '0';
    else
      VGA_HS <= '1';
    end if;
    if (vc > "0000000000" )
      and (vc < "0000000011" ) -- 2+1
    then
      VGA_VS <= '0';
    else
      VGA_VS <= '1';
    end if;
    hc <= hc+"0000000001";
    if (hc="1100100000") then -- 800
      vc <= vc+"0000000001";
      hc <= "0000000000";
    end if;
    if (vc="1000001001") then -- 521
      vc <= "0000000000";
    end if;
  end if;
end process; 

--h_sync : process (hc)
  --  begin
    --    if hC >= 16 and hC < 112 then
      --   VGA_HS <= '0'; 
       --else 
        -- VGA_HS <= '1'; 
       --end if; 
    --end process;

--v_sync : process (vc)
 --   begin
   --    if vC >= 10 and vC < 12 then
     --    VGA_VS <= '0'; 
      -- else 
        -- VGA_VS <= '1'; 
       --end if; 
    --end process;

end Behavioral;

