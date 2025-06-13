
-- Engineer: 
-- 
-- Create Date: 02/11/2024 04:05:47 PM
-- Design Name: 
-- Module Name: Main - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Main is
Generic(d_w: integer := 4);
 Port (A1,B1,A2,B2,A3,B3,A4,B4,A5,B5,A6,B6,A7,B7,A8,B8: in std_logic_vector(d_w-1 downto 0);
       S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16: in std_logic_vector(4 downto 0);
       M1,M2,M3,M4,M13,M14,M15,M16: in std_logic_vector(1 downto 0);
       M5,M6,M7,M8,M9,M10,M11,M12: in std_logic_vector(2 downto 0);
       O1,O2,O3,O4,O5,O6,O7,O8: out std_logic_vector(d_w-1 downto 0)
  );
end Main;

architecture Behavioral of Main is
signal C1,C2,C3,C4,C5,C6,C7,C8: std_logic_vector(d_w-1 DOWNTO 0);
signal MO5,MO6,MO7,MO8,MO9,MO10,MO11,MO12: std_logic_vector(d_w-1 downto 0);
signal MO1,MO2,MO3,MO4,MO13,MO14,MO15,MO16: std_logic_vector(d_w-1 downto 0);
begin
--CU(0,0)
Mod1: entity work.CU(Behavioral)
port map(P=>A1,Q=>B1,Sel=>S1,R=>C1);
--CU(0,1)
Mod2: entity work.CU(Behavioral)
port map(P=>A2,Q=>B2,Sel=>S2,R=>C2);
--CU(0,2)
Mod3: entity work.CU(Behavioral)
port map(P=>A3,Q=>B3,Sel=>S3,R=>C3);
--CU(0,3)
Mod4: entity work.CU(Behavioral)
port map(P=>A4,Q=>B4,Sel=>S4,R=>C4);
--CU(0,4)
Mod5: entity work.CU(Behavioral)
port map(P=>A5,Q=>B5,Sel=>S5,R=>C5);
--CU(0,5)
Mod6: entity work.CU(Behavioral)
port map(P=>A6,Q=>B6,Sel=>S6,R=>C6);
--CU(0,6)
Mod7: entity work.CU(Behavioral)
port map(P=>A7,Q=>B7,Sel=>S7,R=>C7);
--CU(0,7)
Mod8: entity work.CU(Behavioral)
port map(P=>A8,Q=>B8,Sel=>S8,R=>C8);
--Mux1
Mux1: entity work.MUX_4x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,S=>M1,Y=>MO1);
--Mux2
Mux2: entity work.MUX_4x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,S=>M2,Y=>MO2);
--Mux3
Mux3: entity work.MUX_4x1(Behavioral)
port map(X1=>C2,X2=>C3,X3=>C4,X4=>C5,S=>M3,Y=>MO3);
--Mux4
Mux4: entity work.MUX_4x1(Behavioral)
port map(X1=>C2,X2=>C3,X3=>C4,X4=>C5,S=>M4,Y=>MO4);
--Mux5
Mux5: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M5,Y=>MO5);
--Mux6
Mux6: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M6,Y=>MO6);
--Mux7
Mux7: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M7,Y=>MO7);
--Mux8
Mux8: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M8,Y=>MO8);
--Mux9
Mux9: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M9,Y=>MO9);
--Mux10
Mux10: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M10,Y=>MO10);
--Mux11
Mux11: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M11,Y=>MO11);
--Mux12
Mux12: entity work.MUX_8x1(Behavioral)
port map(X1=>C1,X2=>C2,X3=>C3,X4=>C4,X5=>C5,X6=>C6,X7=>C7,X8=>C8,S=>M12,Y=>MO12);
--Mux13
Mux13: entity work.MUX_4x1(Behavioral)
port map(X1=>C4,X2=>C5,X3=>C6,X4=>C7,S=>M13,Y=>MO13);
--Mux14
Mux14: entity work.MUX_4x1(Behavioral)
port map(X1=>C4,X2=>C5,X3=>C6,X4=>C7,S=>M14,Y=>MO14);
--Mux15
Mux15: entity work.MUX_4x1(Behavioral)
port map(X1=>C5,X2=>C6,X3=>C7,X4=>C8,S=>M15,Y=>MO15);
--Mux16
Mux16: entity work.MUX_4x1(Behavioral)
port map(X1=>C5,X2=>C6,X3=>C7,X4=>C8,S=>M16,Y=>MO16);
--CU(1,0)
Mod9: entity work.CU(Behavioral)
port map(P=>MO1,Q=>MO2,Sel=>S9,R=>O1);
--CU(1,1)
Mod10: entity work.CU(Behavioral)
port map(P=>MO3,Q=>MO4,Sel=>S10,R=>O2);
--CU(1,2)
Mod11: entity work.CU(Behavioral)
port map(P=>MO5,Q=>MO6,Sel=>S11,R=>O3);
--CU(1,3)
Mod12: entity work.CU(Behavioral)
port map(P=>MO7,Q=>MO8,Sel=>S12,R=>O4);
--CU(1,4)
Mod13: entity work.CU(Behavioral)
port map(P=>MO9,Q=>MO10,Sel=>S13,R=>O5);
--CU(1,5)
Mod14: entity work.CU(Behavioral)
port map(P=>MO11,Q=>MO12,Sel=>S14,R=>O6);
--CU(1,6)
Mod15: entity work.CU(Behavioral)
port map(P=>MO13,Q=>MO14,Sel=>S15,R=>O7);
--CU(1,7)
Mod16: entity work.CU(Behavioral)
port map(P=>MO15,Q=>MO16,Sel=>S16,R=>O8);

end Behavioral;