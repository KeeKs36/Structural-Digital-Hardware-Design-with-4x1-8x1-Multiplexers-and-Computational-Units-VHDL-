
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2024 06:16:52 PM
-- Design Name: 
-- Module Name: Main_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use STD.ENV.FINISH;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main_tb is
--  Port ( );
end Main_tb;

architecture Behavioral of Main_tb is
constant d_w_c: integer := 4;
signal A1,B1,A2,B2,A3,B3,A4,B4,A5,B5,A6,B6,A7,B7,A8,B8:std_logic_vector(d_w_c-1 downto 0);
signal S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16: std_logic_vector(4 downto 0);
signal M1,M2,M3,M4,M13,M14,M15,M16: std_logic_vector(1 downto 0);
signal M5,M6,M7,M8,M9,M10,M11,M12: std_logic_vector(2 downto 0);
signal O1,O2,O3,O4,O5,O6,O7,O8: std_logic_vector(d_w_c-1 downto 0);
begin
instance: entity work.Main (Behavioral)
port map(A1=>A1,B1=>B1,A2=>A2,B2=>B2,A3=>A3,B3=>B3,A4=>A4,B4=>B4,A5=>A5,B5=>B5,A6=>A6,B6=>B6,A7=>A7,B7=>B7,A8=>A8,B8=>B8,
         S1=>S1,S2=>S2,S3=>S3,S4=>S4,S5=>S5,S6=>S6,S7=>S7,S8=>S8,S9=>S9,S10=>S10,S11=>S11,S12=>S12,S13=>S13,S14=>S14,S15=>S15,S16=>S16,
         M1=>M1,M2=>M2,M3=>M3,M4=>M4,M5=>M5,M6=>M6,M7=>M7,M8=>M8,M9=>M9,M10=>M10,M11=>M11,M12=>M12,M13=>M13,M14=>M14,M15=>M15,M16=>M16,
         O1=>O1,O2=>O2,O3=>O3,O4=>O4,O5=>O5,O6=>O6,O7=>O7,O8=>O8);
process
begin
----CASE 1
A1<="1001";B1<="1101";A2<="0101";B2<="1001";A3<="1110";B3<="0110";A4<="0100";B4<="0011";A5<="1001";B5<="0010";A6<="1000";B6<="0011";A7<="0101";B7<="0010";A8<="1110";B8<="0011";
S1<="00001";S2<="00111";S3<="01000";S4<="01000";S5<="10000";S6<="10001";S7<="10100";S8<="10101";
M1<="00";M2<="01";M3<="10";M4<="11";M5<="010";M6<="110";M7<="100";M8<="101";M9<="001";M10<="111";M11<="011";M12<="100";M13<="01";M14<="10";M15<="10";M16<="11";
S9<="01101";S10<="10011";S11<="00101";S12<="10010";S13<="01110";S14<="01110";S15<="00011";S16<="01100"; wait for 500ns;

--CASE 1
A1<="1001";B1<="1101";A2<="1011";B2<="0011";A3<="1010";B3<="0010";A4<="1110";B4<="0011";A5<="1011";B5<="0011";A6<="1011";B6<="1001";A7<="1001";B7<="0100";A8<="0110";B8<="0010";
S1<="00010";S2<="10100";S3<="10001";S4<="10101";S5<="10000";S6<="01000";S7<="00111";S8<="01001";
M1<="10";M2<="11";M3<="11";M4<="01";M5<="000";M6<="100";M7<="110";M8<="010";M9<="011";M10<="101";M11<="111";M12<="001";M13<="11";M14<="00";M15<="00";M16<="11";
S9<="01010";S10<="10011";S11<="00101";S12<="10010";S13<="01011";S14<="00100";S15<="00011";S16<="01111"; wait for 100ns;


wait;
end process;
end Behavioral;
