<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(3:0)" />
        <signal name="XLXN_2(3:0)" />
        <signal name="XLXN_4" />
        <signal name="test_out(3:0)">
        </signal>
        <signal name="XLXN_6(7:0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="Clk_50Mhz" />
        <signal name="SPI_MISO" />
        <signal name="SPI_MOSI" />
        <signal name="SPI_SCK" />
        <signal name="DAC_CS" />
        <signal name="DAC_CLR" />
        <signal name="SPI_SS_B" />
        <signal name="AMP_CS" />
        <signal name="AD_CONV" />
        <signal name="SF_CE0" />
        <signal name="FPGA_INIT_B" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_10" />
        <signal name="XLXN_13(11:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_18(3:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28(3:0)" />
        <signal name="XLXN_29" />
        <signal name="VGA_R" />
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <port polarity="Input" name="Clk_50Mhz" />
        <port polarity="Input" name="SPI_MISO" />
        <port polarity="Output" name="SPI_MOSI" />
        <port polarity="Output" name="SPI_SCK" />
        <port polarity="Output" name="DAC_CS" />
        <port polarity="Output" name="DAC_CLR" />
        <port polarity="Output" name="SPI_SS_B" />
        <port polarity="Output" name="AMP_CS" />
        <port polarity="Output" name="AD_CONV" />
        <port polarity="Output" name="SF_CE0" />
        <port polarity="Output" name="FPGA_INIT_B" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <blockdef name="kbdModule">
            <timestamp>2019-5-19T19:40:20</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-300" height="24" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
        </blockdef>
        <blockdef name="DACWrite">
            <timestamp>2019-3-11T10:54:30</timestamp>
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
            <line x2="448" y1="-96" y2="-96" x1="384" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="-544" y2="-544" x1="384" />
            <line x2="448" y1="-416" y2="-416" x1="384" />
            <line x2="384" y1="-480" y2="-480" x1="448" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
            <line x2="448" y1="-288" y2="-288" x1="384" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="320" x="64" y="-576" height="760" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2019-5-6T8:44:12</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="soundModule">
            <timestamp>2019-5-20T9:16:40</timestamp>
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-256" height="320" />
        </blockdef>
        <blockdef name="displayModule">
            <timestamp>2019-5-20T10:31:57</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="kbdModule" name="XLXI_1">
            <blockpin signalname="XLXN_7" name="KbdE0" />
            <blockpin signalname="XLXN_8" name="KbdF0" />
            <blockpin signalname="XLXN_9" name="KbdRdy" />
            <blockpin signalname="Clk_50Mhz" name="Clk" />
            <blockpin signalname="XLXN_6(7:0)" name="KbdDo(7:0)" />
            <blockpin signalname="test_out(3:0)" name="frequency(3:0)" />
        </block>
        <block symbolname="DACWrite" name="XLXI_3">
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_4" name="Start" />
            <blockpin signalname="SPI_MISO" name="SPI_MISO" />
            <blockpin signalname="XLXN_1(3:0)" name="Cmd(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="Addr(3:0)" />
            <blockpin signalname="XLXN_13(11:0)" name="DATA(11:0)" />
            <blockpin signalname="DAC_CLR" name="DAC_CLR" />
            <blockpin signalname="DAC_CS" name="DAC_CS" />
            <blockpin signalname="SPI_MOSI" name="SPI_MOSI" />
            <blockpin signalname="SPI_SCK" name="SPI_SCK" />
            <blockpin signalname="SPI_SS_B" name="SPI_SS_B" />
            <blockpin signalname="AMP_CS" name="AMP_CS" />
            <blockpin signalname="AD_CONV" name="AD_CONV" />
            <blockpin signalname="SF_CE0" name="SF_CE0" />
            <blockpin signalname="FPGA_INIT_B" name="FPGA_INIT_B" />
            <blockpin name="Busy" />
            <blockpin signalname="Clk_50Mhz" name="Clk_50MHz" />
            <blockpin signalname="Clk_50Mhz" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_4">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50Mhz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_7" name="E0" />
            <blockpin signalname="XLXN_8" name="F0" />
            <blockpin signalname="XLXN_9" name="DO_Rdy" />
            <blockpin signalname="XLXN_6(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50Mhz" name="Clk_Sys" />
        </block>
        <block symbolname="soundModule" name="XLXI_6">
            <blockpin signalname="Clk_50Mhz" name="clk" />
            <blockpin signalname="test_out(3:0)" name="freq_in(3:0)" />
            <blockpin signalname="XLXN_4" name="start" />
            <blockpin signalname="XLXN_13(11:0)" name="freq_out(11:0)" />
            <blockpin signalname="XLXN_1(3:0)" name="command(3:0)" />
            <blockpin signalname="XLXN_2(3:0)" name="address(3:0)" />
        </block>
        <block symbolname="displayModule" name="XLXI_12">
            <blockpin signalname="Clk_50Mhz" name="CLK" />
            <blockpin signalname="test_out(3:0)" name="KEY(3:0)" />
            <blockpin signalname="VGA_R" name="VGA_R" />
            <blockpin signalname="VGA_G" name="VGA_G" />
            <blockpin signalname="VGA_B" name="VGA_B" />
            <blockpin signalname="VGA_HS" name="VGA_HS" />
            <blockpin signalname="VGA_VS" name="VGA_VS" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_1(3:0)">
            <wire x2="2624" y1="1104" y2="1104" x1="2464" />
            <wire x2="2624" y1="608" y2="1104" x1="2624" />
            <wire x2="2736" y1="608" y2="608" x1="2624" />
        </branch>
        <branch name="XLXN_2(3:0)">
            <wire x2="2640" y1="1168" y2="1168" x1="2464" />
            <wire x2="2640" y1="672" y2="1168" x1="2640" />
            <wire x2="2736" y1="672" y2="672" x1="2640" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="2608" y1="976" y2="976" x1="2464" />
            <wire x2="2608" y1="544" y2="976" x1="2608" />
            <wire x2="2736" y1="544" y2="544" x1="2608" />
        </branch>
        <branch name="test_out(3:0)">
            <wire x2="1344" y1="464" y2="464" x1="1264" />
            <wire x2="1264" y1="464" y2="560" x1="1264" />
            <wire x2="1920" y1="560" y2="560" x1="1264" />
            <wire x2="1920" y1="560" y2="960" x1="1920" />
            <wire x2="1920" y1="960" y2="1168" x1="1920" />
            <wire x2="2048" y1="1168" y2="1168" x1="1920" />
            <wire x2="1920" y1="960" y2="960" x1="1824" />
        </branch>
        <branch name="XLXN_6(7:0)">
            <wire x2="1280" y1="944" y2="944" x1="1136" />
            <wire x2="1280" y1="944" y2="1216" x1="1280" />
            <wire x2="1408" y1="1216" y2="1216" x1="1280" />
        </branch>
        <instance x="752" y="1168" name="XLXI_4" orien="R0">
        </instance>
        <branch name="Clk_50Mhz">
            <wire x2="672" y1="1072" y2="1072" x1="576" />
            <wire x2="672" y1="1072" y2="1136" x1="672" />
            <wire x2="752" y1="1136" y2="1136" x1="672" />
            <wire x2="672" y1="1136" y2="1408" x1="672" />
            <wire x2="2032" y1="1408" y2="1408" x1="672" />
            <wire x2="2656" y1="1408" y2="1408" x1="2032" />
            <wire x2="2688" y1="1408" y2="1408" x1="2656" />
            <wire x2="752" y1="1072" y2="1072" x1="672" />
            <wire x2="1344" y1="144" y2="144" x1="672" />
            <wire x2="672" y1="144" y2="832" x1="672" />
            <wire x2="1216" y1="832" y2="832" x1="672" />
            <wire x2="1216" y1="832" y2="1152" x1="1216" />
            <wire x2="1408" y1="1152" y2="1152" x1="1216" />
            <wire x2="672" y1="832" y2="1072" x1="672" />
            <wire x2="2048" y1="976" y2="976" x1="2032" />
            <wire x2="2032" y1="976" y2="1408" x1="2032" />
            <wire x2="2736" y1="1184" y2="1184" x1="2656" />
            <wire x2="2656" y1="1184" y2="1408" x1="2656" />
            <wire x2="2688" y1="1248" y2="1408" x1="2688" />
            <wire x2="2736" y1="1248" y2="1248" x1="2688" />
        </branch>
        <branch name="SPI_MISO">
            <wire x2="3200" y1="608" y2="608" x1="3184" />
            <wire x2="3216" y1="592" y2="592" x1="3200" />
            <wire x2="3200" y1="592" y2="608" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="592" name="SPI_MISO" orien="R0" />
        <branch name="SPI_MOSI">
            <wire x2="3200" y1="544" y2="544" x1="3184" />
            <wire x2="3216" y1="528" y2="528" x1="3200" />
            <wire x2="3200" y1="528" y2="544" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="528" name="SPI_MOSI" orien="R0" />
        <branch name="SPI_SCK">
            <wire x2="3200" y1="672" y2="672" x1="3184" />
            <wire x2="3216" y1="656" y2="656" x1="3200" />
            <wire x2="3200" y1="656" y2="672" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="656" name="SPI_SCK" orien="R0" />
        <branch name="DAC_CS">
            <wire x2="3200" y1="736" y2="736" x1="3184" />
            <wire x2="3216" y1="720" y2="720" x1="3200" />
            <wire x2="3200" y1="720" y2="736" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="720" name="DAC_CS" orien="R0" />
        <branch name="DAC_CLR">
            <wire x2="3200" y1="800" y2="800" x1="3184" />
            <wire x2="3216" y1="784" y2="784" x1="3200" />
            <wire x2="3200" y1="784" y2="800" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="784" name="DAC_CLR" orien="R0" />
        <branch name="SPI_SS_B">
            <wire x2="3200" y1="864" y2="864" x1="3184" />
            <wire x2="3216" y1="848" y2="848" x1="3200" />
            <wire x2="3200" y1="848" y2="864" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="848" name="SPI_SS_B" orien="R0" />
        <branch name="AMP_CS">
            <wire x2="3200" y1="928" y2="928" x1="3184" />
            <wire x2="3216" y1="912" y2="912" x1="3200" />
            <wire x2="3200" y1="912" y2="928" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="912" name="AMP_CS" orien="R0" />
        <branch name="AD_CONV">
            <wire x2="3200" y1="992" y2="992" x1="3184" />
            <wire x2="3216" y1="976" y2="976" x1="3200" />
            <wire x2="3200" y1="976" y2="992" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="976" name="AD_CONV" orien="R0" />
        <branch name="SF_CE0">
            <wire x2="3200" y1="1056" y2="1056" x1="3184" />
            <wire x2="3216" y1="1040" y2="1040" x1="3200" />
            <wire x2="3200" y1="1040" y2="1056" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="1040" name="SF_CE0" orien="R0" />
        <branch name="FPGA_INIT_B">
            <wire x2="3200" y1="1120" y2="1120" x1="3184" />
            <wire x2="3216" y1="1104" y2="1104" x1="3200" />
            <wire x2="3200" y1="1104" y2="1120" x1="3200" />
        </branch>
        <iomarker fontsize="28" x="3216" y="1104" name="FPGA_INIT_B" orien="R0" />
        <branch name="PS2_Clk">
            <wire x2="752" y1="944" y2="944" x1="576" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="752" y1="1008" y2="1008" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="944" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="576" y="1008" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="576" y="1072" name="Clk_50Mhz" orien="R180" />
        <instance x="2048" y="1200" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_13(11:0)">
            <wire x2="2656" y1="1040" y2="1040" x1="2464" />
            <wire x2="2656" y1="736" y2="1040" x1="2656" />
            <wire x2="2736" y1="736" y2="736" x1="2656" />
        </branch>
        <instance x="1408" y="1248" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="1152" y1="1008" y2="1008" x1="1136" />
            <wire x2="1408" y1="960" y2="960" x1="1152" />
            <wire x2="1152" y1="960" y2="1008" x1="1152" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1152" y1="1072" y2="1072" x1="1136" />
            <wire x2="1408" y1="1024" y2="1024" x1="1152" />
            <wire x2="1152" y1="1024" y2="1072" x1="1152" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1152" y1="1136" y2="1136" x1="1136" />
            <wire x2="1408" y1="1088" y2="1088" x1="1152" />
            <wire x2="1152" y1="1088" y2="1136" x1="1152" />
        </branch>
        <instance x="2736" y="1088" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1344" y="496" name="XLXI_12" orien="R0">
        </instance>
        <branch name="VGA_R">
            <wire x2="1760" y1="208" y2="208" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="208" name="VGA_R" orien="R0" />
        <branch name="VGA_G">
            <wire x2="1760" y1="272" y2="272" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="272" name="VGA_G" orien="R0" />
        <branch name="VGA_B">
            <wire x2="1760" y1="336" y2="336" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="336" name="VGA_B" orien="R0" />
        <branch name="VGA_HS">
            <wire x2="1760" y1="400" y2="400" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="400" name="VGA_HS" orien="R0" />
        <branch name="VGA_VS">
            <wire x2="1760" y1="464" y2="464" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1760" y="464" name="VGA_VS" orien="R0" />
    </sheet>
</drawing>