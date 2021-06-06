library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity full_adder is
port(
		a_i  : in std_logic;
		b_i  : in std_logic;
		carry_i  : in std_logic;
		sum_o  : out std_logic;
		carry_o  : out std_logic;
);

end full_adder;

architecture arch of full_adder

--COMPONENTS
component half_adder is
port(
		a_i 	: in std_logic;
		b_i 	: in std_logic;
		sum_o   : out std_logic;
		carry_o : out std_logic

);
end component;

--SİGNALS
signal first_sum : std_logic := '0';
signal first_carry : std_logic := '0';
signal second_carry : std_logic := '0';

begin


first_half_adder : half_adder
port map(
	a_i => a_i;
	b_i	=> b_i;
	sum_o => first_sum;
	carry_o => first_carry
);

second_half_adder : half_adder
port map(
	a_i => first_sum;
	b_i	=> carry_i;
	sum_o => sum_o;
	carry_o => second_carry
);

carry_o <= first_carry and second_carry;

end arch; 






















