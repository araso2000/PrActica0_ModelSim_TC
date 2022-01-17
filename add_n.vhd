library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity add_n is
 generic(n: integer);
 port (a, b: in std_logic_vector(n-1 downto 0);
 c_in: in std_logic;
 s: out std_logic_vector(n-1 downto 0);
 c_out: out std_logic);
end add_n;

architecture circuito of add_n is
 signal c: std_logic_vector(n downto 0);
begin
 c(0) <= c_in;
 sumador: for i in 0 to n-1 generate
 puertas: entity work.add_1 port map (a(i), b(i), c(i), c(i+1), s(i));
 end generate;
 c_out <= c(n);
end circuito;
architecture funcional of add_n is
 signal long_a, long_b, long_carry, long_s: std_logic_vector(n downto 0);
begin
 long_a <= '0'&a; long_b <= '0'&b;
 long_carry <= conv_std_logic_vector(0,n)&c_in;
 long_s <= long_a + long_b + long_carry;
 s <= long_s(n-1 downto 0);
 c_out <= long_s(n);
end funcional; 