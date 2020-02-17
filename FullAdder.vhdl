library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity FullAdder is 

	port(
	A, B, Cin: in std_logic;
	S, Cout: out std_logic
	);
end FullAdder;

	architecture behav_suma of FullAdder is
	begin
	
			S<= (A xor B) xor Cin;
			Cout<= (A and B) or (Cin and (A xor B));
	
	end behav_suma;
	