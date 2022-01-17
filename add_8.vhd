library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity add_8 is
 port (a, b: in std_logic_vector(7 downto 0);
 c_in: in std_logic;
 s: out std_logic_vector(7 downto 0);
 c_out: out std_logic);
end add_8;
architecture circuito of add_8 is
 signal c: std_logic_vector(8 downto 0);
begin
 c(0) <= c_in;
 sumador: for i in 0 to 7 generate
 sums_1: entity work.add_1 port map (a(i), b(i), c(i), c(i+1), s(i));
 end generate;
 c_out <= c(8);
end circuito;
architecture funcional of add_8 is
 signal long_a, long_b, long_carry, long_s: std_logic_vector(8 downto 0);
begin
 long_a <= '0'&a; long_b <= '0'&b;
 long_carry <= "00000000"&c_in;
 long_s <= long_a + long_b + long_carry;
 s <= long_s(7 downto 0);
 c_out <= long_s(8);
end funcional; 