library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity half_adder is
port(
		a_i 	: in std_logic;
		b_i 	: in std_logic;
		sum_o   : out std_logic;
		carry_o : out std_logic

);
end half_adder;

architecture arch of half_adder is

begin
	sum_o 		<= a_i xor b_i;
	carry_o 	<= a_i and b_i;
end architecture;