----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 14:38:09
-- Design Name: 
-- Module Name: JK_latch - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity jk_latch is
    Port ( j,k : in STD_LOGIC;
           q,qbar : inout STD_LOGIC);
end jk_latch;
 
architecture Behavioral of jk_latch is
signal t1,t2 : std_logic;
begin
t1 <= q and j;
t2 <= qbar and k;
Q <= Qbar nor t1 after 2ns;
Qbar <= Q nor t2 after 2ns;
end Behavioral;
 