library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity test_add_n is end test_add_n;
architecture test of test_add_n is
 constant ancho_add: integer := 8;
 signal a, b, s: std_logic_vector(ancho_add-1 downto 0);
 signal c_in, c_out: std_logic;
begin
 sumador: entity work.add_n(circuito) generic map(ancho_add) port map (a, b,
c_in, s, c_out);
 c_in <= '0', '1' after 25 ns, '0' after 125 ns, '1' after 225 ns;
 a <= conv_std_logic_vector(15, ancho_add), conv_std_logic_vector(78,
ancho_add) after 100 ns, conv_std_logic_vector(178, ancho_add) after 200 ns;
 b <= conv_std_logic_vector(21, ancho_add), conv_std_logic_vector(78,
ancho_add) after 50 ns, conv_std_logic_vector(17, ancho_add) after 100 ns,
conv_std_logic_vector(98, ancho_add) after 150 ns;
end test; 