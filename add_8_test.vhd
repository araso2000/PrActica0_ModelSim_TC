library ieee;
use ieee.std_logic_1164.all;
entity test_add_8 is end test_add_8;
architecture test of test_add_8 is
 signal a, b,s: std_logic_vector(7 downto 0);
 signal c_in, c_out: std_logic;
begin
 sumador: entity work.add_8(circuito) port map (a, b, c_in, s, c_out);
 c_in <= '0', '1' after 25 ns, '0' after 125 ns, '1' after 225 ns;
 a <= "11001110", "01110111" after 100 ns;
 b <= "01110110", "11110000" after 50 ns, "01010101" after 150 ns, "11010110"
after 200 ns;
end test; 