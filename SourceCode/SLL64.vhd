library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

Entity SLL64 is
Generic ( N : natural := 64 );
Port ( X : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	-- Control signal
	ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SLL64;

Architecture rtl of SLL64 is 
	signal Y1, Y2, Y3 : std_logic_vector(N-1 downto 0);
	signal shiftCountBits: std_logic_vector(5 downto 0);
Begin
	shiftCountBits <= std_logic_vector(ShiftCount);

	--First Barrel Shifter for SLL of 0, 16, 32, 48
	Y1 <= 	X(N-17 downto 0) & x"0000" when shiftCountBits(5 downto 4) = "01" else 
		X(N-33 downto 0) & x"00000000" when shiftCountBits(5 downto 4) = "10" else 
		X(N-49 downto 0) & x"000000000000" when shiftCountBits(5 downto 4) = "11" else 
		X;

	--Second Barrel Shifter for SLL of 0, 4, 8, 12
	Y2 <= 	Y1(N-5 downto 0) & x"0" when shiftCountBits(3 downto 2) = "01" else 
		Y1(N-9 downto 0) & x"00" when shiftCountBits(3 downto 2) = "10" else 
		Y1(N-13 downto 0) & x"000" when shiftCountBits(3 downto 2) = "11" else 
		Y1;

	--Third Barrel Shifter for SLL of 0, 1, 2, 3
	Y3 <= 	Y2(N-2 downto 0) & "0" when shiftCountBits(1 downto 0) = "01" else 
		Y2(N-3 downto 0) & "00" when shiftCountBits(1 downto 0) = "10" else 
		Y2(N-4 downto 0) & "000" when shiftCountBits(1 downto 0) = "11" else 
		Y2;

	Y <= Y3;
End Architecture rtl;