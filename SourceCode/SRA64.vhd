library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

Entity SRA64 is
Generic ( N : natural := 64 );
Port ( X : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	-- Control signal
	ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SRA64;

Architecture rtl of SRA64 is 
	--signal Y1, Y2, Y3 : std_logic_vector(N-1 downto 0);
	--signal signExt: std_logic_vector(N-1 downto 0);
	signal Y1,Y2,Y3: signed(N-1 downto 0);
	signal shiftCountBits: std_logic_vector(5 downto 0);
	--signal q1: std_logic_vector(N-1-to_integer(ShiftCount) downto 0);
Begin
	shiftCountBits <= std_logic_vector(ShiftCount);
-- With Shift_right instead
	
	--First Barrel Shifter for SRA of 0, 16, 32, 48
	Y1 <= 	shift_right(signed(X), 16) when shiftCountBits(5 downto 4) = "01" else
		shift_right(signed(X), 32) when shiftCountBits(5 downto 4) = "10" else 
		shift_right(signed(X), 48) when shiftCountBits(5 downto 4) = "11" else 
		shift_right(signed(X),0);

	--Second Barrel Shifter for SRA of 0, 4, 8, 12
	Y2 <= 	shift_right(signed(Y1), 4) when shiftCountBits(3 downto 2) = "01" else
		shift_right(signed(Y1), 8) when shiftCountBits(3 downto 2) = "10" else 
		shift_right(signed(Y1), 12) when shiftCountBits(3 downto 2) = "11" else 
		shift_right(signed(Y1),0);

	--Third Barrel Shifter for SRA of 0, 1, 2, 3
	Y3 <= 	shift_right(signed(Y2), 1) when shiftCountBits(1 downto 0) = "01" else
		shift_right(signed(Y2), 2) when shiftCountBits(1 downto 0) = "10" else 
		shift_right(signed(Y2), 3) when shiftCountBits(1 downto 0) = "11" else 
		shift_right(signed(Y2),0);

	

	Y <= std_logic_vector(Y3);

End Architecture rtl;