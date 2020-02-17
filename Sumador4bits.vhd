library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Sumador4bits is 

	port(
	A, B: in std_logic_vector (3 downto 0);
	Cin: in std_logic;
	S: out std_logic_Vector (3 downto 0); 
	Cout: out std_logic;
	V: out std_logic
	
	);
end Sumador4bits;

	architecture struct_sumador of Sumador4bits is
	
	Component FullAdder is 

		port(
			A, B, Cin: in std_logic;
			S, Cout: out std_logic
	
	   );
	
	end component;
	
	signal Cout1,Cout2, Cout3, Cout4: std_logic;
	
	begin
	
	  U0: FullAdder port map ( A(0), B(0), Cin, S(0), Cout1);
	  U1: FullAdder port map ( A(1), B(1), Cout1, S(1), Cout2);
	  U2: FullAdder port map ( A(2), B(2), Cout2, S(2), Cout3);
	  U3: FullAdder port map ( A(3), B(3), Cout3, S(3), Cout4);
	  Cout<= Cout4;
	  V<= Cout4 xor Cout3;
	
	end struct_sumador;
	