----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/11/2024 03:51:00 PM
-- Design Name: 
-- Module Name: MUX_8x1_tb - Behavioral
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
use STD.ENV.FINISH;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_8x1_tb is
--  Port ( );
end MUX_8x1_tb;

architecture Behavioral of MUX_8x1_tb is
constant d_w_c: integer := 4;
signal X1,X2,X3,X4,X5,X6,X7,X8,Y: std_logic_vector(d_w_c-1 downto 0);
signal S: std_logic_vector(2 downto 0);
begin
MUX_8x1: entity work.MUX_8x1(Behavioral)
 Port map(X1=>X1,X2=>X2,X3=>X3,X4=>X4,X5=>X5,X6=>X6,X7=>X7,X8=>X8,S=>S,Y=>Y);
 
 stimulus: process
 begin
 X1<="0000";X2<="0001";X3<="0010";X4<="0011";X5<="0100";X6<="0101";X7<="0110";X8<="0111";
 S<="000";wait for 10ns;
 S<="001";wait for 10ns;
 S<="010";wait for 10ns;
 S<="011";wait for 10ns;
 S<="100";wait for 10ns;
 S<="101";wait for 10ns;
 S<="110";wait for 10ns;
 S<="111";wait for 10ns;
 finish;
 end process stimulus;
end Behavioral;