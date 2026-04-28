Library ieee;
Use ieee.std_logic_1164.all;
Use ieee.numeric_std.all;

Entity LogicUnit is
Generic (N: natural := 64);
Port( 	A, B: in std_logic_vector(N-1 downto 0);
      	Y: out std_logic_vector(N-1 downto 0);
	-- Control signals 
	LogicFN: in std_logic_vector(1 downto 0)); 
End Entity LogicUnit;

Architecture rtl of LogicUnit is 
	Signal q1, q2, q3: std_logic_vector(N-1 downto 0);
Begin

	-- Performs XOR operation on operands A and B
	q1 <= A XOR B;
	-- Performs OR operation on operands A and B
	q2 <= A OR B;
	-- Performs AND operation on operands A and B
	q3 <= A AND B;
	
	-- 4-channel MUX that selects which logical operation to output
	-- based on our control signal value
	Y <= 	q1 when LogicFN = "01" else 
		q2 when LogicFN = "10" else 
		q3 when LogicFN = "11" else
		B;
End Architecture rtl;
