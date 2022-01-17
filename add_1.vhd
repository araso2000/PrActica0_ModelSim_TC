library ieee;
use ieee.std_logic_1164.all;
entity add_1 is
 port (a, b, c_in: in std_logic; c_mas, s: out std_logic);
end add_1;
architecture funcional of add_1 is
begin
 s <= ((not a) and (not b) and c_in) or ((not a) and b and (not c_in)) or (a
and b and c_in) or (a and (not b) and (not c_in));
 c_mas <= (a and b) or (a and c_in) or (b and c_in) ;
end funcional; 