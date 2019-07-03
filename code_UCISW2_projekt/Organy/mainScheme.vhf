--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : mainScheme.vhf
-- /___/   /\     Timestamp : 05/20/2019 13:34:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl "C:/Users/lab/Desktop/UCISW2 Projekt/Organy/mainScheme.vhf" -w "C:/Users/lab/Desktop/UCISW2 Projekt/Organy/mainScheme.sch"
--Design Name: mainScheme
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity mainScheme is
   port ( Clk_50Mhz   : in    std_logic; 
          PS2_Clk     : in    std_logic; 
          PS2_Data    : in    std_logic; 
          SPI_MISO    : in    std_logic; 
          AD_CONV     : out   std_logic; 
          AMP_CS      : out   std_logic; 
          DAC_CLR     : out   std_logic; 
          DAC_CS      : out   std_logic; 
          FPGA_INIT_B : out   std_logic; 
          SF_CE0      : out   std_logic; 
          SPI_MOSI    : out   std_logic; 
          SPI_SCK     : out   std_logic; 
          SPI_SS_B    : out   std_logic; 
          VGA_B       : out   std_logic; 
          VGA_G       : out   std_logic; 
          VGA_HS      : out   std_logic; 
          VGA_R       : out   std_logic; 
          VGA_VS      : out   std_logic);
end mainScheme;

architecture BEHAVIORAL of mainScheme is
   signal test_out                : std_logic_vector (3 downto 0);
   signal XLXN_1                  : std_logic_vector (3 downto 0);
   signal XLXN_2                  : std_logic_vector (3 downto 0);
   signal XLXN_4                  : std_logic;
   signal XLXN_6                  : std_logic_vector (7 downto 0);
   signal XLXN_7                  : std_logic;
   signal XLXN_8                  : std_logic;
   signal XLXN_9                  : std_logic;
   signal XLXN_13                 : std_logic_vector (11 downto 0);
   signal XLXI_3_Reset_openSignal : std_logic;
   component kbdModule
      port ( KbdE0     : in    std_logic; 
             KbdF0     : in    std_logic; 
             KbdRdy    : in    std_logic; 
             Clk       : in    std_logic; 
             KbdDo     : in    std_logic_vector (7 downto 0); 
             frequency : out   std_logic_vector (3 downto 0));
   end component;
   
   component DACWrite
      port ( Reset       : in    std_logic; 
             Start       : in    std_logic; 
             SPI_MISO    : in    std_logic; 
             Cmd         : in    std_logic_vector (3 downto 0); 
             Addr        : in    std_logic_vector (3 downto 0); 
             DATA        : in    std_logic_vector (11 downto 0); 
             DAC_CLR     : out   std_logic; 
             DAC_CS      : out   std_logic; 
             SPI_MOSI    : out   std_logic; 
             SPI_SCK     : out   std_logic; 
             SPI_SS_B    : out   std_logic; 
             AMP_CS      : out   std_logic; 
             AD_CONV     : out   std_logic; 
             SF_CE0      : out   std_logic; 
             FPGA_INIT_B : out   std_logic; 
             Busy        : out   std_logic; 
             Clk_50MHz   : in    std_logic; 
             Clk_Sys     : in    std_logic);
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component soundModule
      port ( clk      : in    std_logic; 
             freq_in  : in    std_logic_vector (3 downto 0); 
             start    : out   std_logic; 
             freq_out : out   std_logic_vector (11 downto 0); 
             command  : out   std_logic_vector (3 downto 0); 
             address  : out   std_logic_vector (3 downto 0));
   end component;
   
   component displayModule
      port ( CLK    : in    std_logic; 
             KEY    : in    std_logic_vector (3 downto 0); 
             VGA_R  : out   std_logic; 
             VGA_G  : out   std_logic; 
             VGA_B  : out   std_logic; 
             VGA_HS : out   std_logic; 
             VGA_VS : out   std_logic);
   end component;
   
begin
   XLXI_1 : kbdModule
      port map (Clk=>Clk_50Mhz,
                KbdDo(7 downto 0)=>XLXN_6(7 downto 0),
                KbdE0=>XLXN_7,
                KbdF0=>XLXN_8,
                KbdRdy=>XLXN_9,
                frequency(3 downto 0)=>test_out(3 downto 0));
   
   XLXI_3 : DACWrite
      port map (Addr(3 downto 0)=>XLXN_2(3 downto 0),
                Clk_Sys=>Clk_50Mhz,
                Clk_50MHz=>Clk_50Mhz,
                Cmd(3 downto 0)=>XLXN_1(3 downto 0),
                DATA(11 downto 0)=>XLXN_13(11 downto 0),
                Reset=>XLXI_3_Reset_openSignal,
                SPI_MISO=>SPI_MISO,
                Start=>XLXN_4,
                AD_CONV=>AD_CONV,
                AMP_CS=>AMP_CS,
                Busy=>open,
                DAC_CLR=>DAC_CLR,
                DAC_CS=>DAC_CS,
                FPGA_INIT_B=>FPGA_INIT_B,
                SF_CE0=>SF_CE0,
                SPI_MOSI=>SPI_MOSI,
                SPI_SCK=>SPI_SCK,
                SPI_SS_B=>SPI_SS_B);
   
   XLXI_4 : PS2_Kbd
      port map (Clk_Sys=>Clk_50Mhz,
                Clk_50MHz=>Clk_50Mhz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_6(7 downto 0),
                DO_Rdy=>XLXN_9,
                E0=>XLXN_7,
                F0=>XLXN_8);
   
   XLXI_6 : soundModule
      port map (clk=>Clk_50Mhz,
                freq_in(3 downto 0)=>test_out(3 downto 0),
                address(3 downto 0)=>XLXN_2(3 downto 0),
                command(3 downto 0)=>XLXN_1(3 downto 0),
                freq_out(11 downto 0)=>XLXN_13(11 downto 0),
                start=>XLXN_4);
   
   XLXI_12 : displayModule
      port map (CLK=>Clk_50Mhz,
                KEY(3 downto 0)=>test_out(3 downto 0),
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
end BEHAVIORAL;


