library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity rippleadder is
	generic ( width : integer := 64 );
	port(
		Xin,Yin	: in std_logic_vector(width-1 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector(width-1 downto 0);
		Cout,C63 : out std_logic);
end rippleadder;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FullAdder is
     port (
          X, Y     :     in     std_logic;
          Cin      :     in     std_logic;
          S        :     out    std_logic;
	  Cout	   :	 out	std_logic);
end entity FullAdder;


architecture rtl of rippleadder is
	signal internalC:std_logic_vector (width downto 0);
begin
	internalC(0) <= Cin;
     		rippleAdder: for i in 0 to width-1
		generate
		begin
          		RippleAdder: entity Work.FullAdder port map ( Xin(i), Yin(i), internalC(i), S(i), internalC(i+1));
		end generate rippleAdder;
		Cout <= internalC(width);
		C63 <= internalC(width-1);
end architecture rtl;

Architecture rtl of FullAdder is
BEGIN
	S <= X XOR Y XOR Cin;
	Cout <= (X AND Y) OR (Cin AND (X OR Y));
END architecture rtl;
