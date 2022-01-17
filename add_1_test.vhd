library ieee;
use ieee.std_logic_1164.all;
entity test_add_1 is end test_add_1;
architecture test of test_add_1 is
 signal a: std_logic := '0';
 signal b: std_logic := '0';
 signal c_in: std_logic := '0';
 signal c_mas, s: std_logic;
begin
 inst_1: entity work.add_1 port map(a, b, c_in, c_mas, s);
 a <= not a after 10 ns;
 b <= not b after 20 ns;
 c_in <= not c_in after 40 ns;
end test;