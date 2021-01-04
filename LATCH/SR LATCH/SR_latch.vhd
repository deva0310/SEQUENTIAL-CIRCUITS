----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.12.2020 14:23:14
-- Design Name: 
-- Module Name: SR_latch - Behavioral
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

entity sr_latch is
    Port ( s,r,en : in STD_LOGIC;
           q,qbar : inout STD_LOGIC);
end sr_latch;
 
architecture Behavioral of sr_latch is
signal t1,t2 : std_logic;
begin
t1 <= r and en;
t2 <= s and en;
Q <= Qbar nor t1 after 2 ns;
Qbar <= Q nor t2 after 2 ns;
end Behavioral;
