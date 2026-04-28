library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;


Entity SRL64 is
Generic ( N : natural := 64 );
Port ( X : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	-- Control signal
	ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SRL64;

Architecture rtl of SRL64 is 
	signal Y1, Y2, Y3 : std_logic_vector(N-1 downto 0);
	signal shiftCountBits: std_logic_vector(5 downto 0);
Begin
	shiftCountBits <= std_logic_vector(ShiftCount);

	--First Barrel Shifter for SRL of 0, 16, 32, 48
	Y1 <= 	x"0000" & X(N-1 downto 16) when shiftCountBits(5 downto 4) = "01" else 
		x"00000000" & X(N-1 downto 32) when shiftCountBits(5 downto 4) = "10" else 
		x"000000000000" & X(N-1 downto 48) when shiftCountBits(5 downto 4) = "11" else 
		X;

	--Second Barrel Shifter for SRL of 0, 4, 8, 12
	Y2 <= 	x"0" & Y1(N-1 downto 4) when shiftCountBits(3 downto 2) = "01" else 
		x"00" & Y1(N-1 downto 8)  when shiftCountBits(3 downto 2) = "10" else 
		x"000" & Y1(N-1 downto 12) when shiftCountBits(3 downto 2) = "11" else 
		Y1;

	--Third Barrel Shifter for SRL of 0, 1, 2, 3
	Y3 <= 	"0" & Y2(N-1 downto 1) when shiftCountBits(1 downto 0) = "01" else 
		"00" & Y2(N-1 downto 2) when shiftCountBits(1 downto 0) = "10" else 
		"000" & Y2(N-1 downto 3) when shiftCountBits(1 downto 0) = "11" else 
		Y2;

	Y <= Y3;
End Architecture rtl;
