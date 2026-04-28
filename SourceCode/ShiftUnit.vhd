library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.MATH_REAL.ALL;

Entity ShiftUnit is 
Generic ( N : natural := 64 );
Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	-- Control Signal
	ShiftFN : in std_logic_vector( 1 downto 0 );
	ExtWord : in std_logic );
End Entity ShiftUnit;

Architecture rtl of ShiftUnit is 
	signal sll64, srl64, sra64: std_logic_vector( N-1 downto 0 );
	signal A_Y1, A_Y2, A_Y3, A_Y4, A_Y5: std_logic_vector( N-1 downto 0 );
	signal seA_Y2, seA_Y3: std_logic_vector( N-1 downto 0 );
	signal shiftCount: unsigned( integer(ceil(log2(real(N))))-1 downto 0 );
	signal A_s: std_logic;
Begin
	--MUX for A, put lower word into upper word of 64-bit for 32-bit shift right instruction
	A_s <= ShiftFn(1) AND ExtWord;
	A_Y1 <= A(31 downto 0)& x"00000000" when A_s = '1' else 
	      	A;

	--Extract
	shiftCount <= unsigned("0" & B(4 downto 0)) when ExtWord = '1' else
		      unsigned(B(5 downto 0));

	--SLL, SRL, and SRA functions
	SLLcircuit: entity Work.SLL64 port map (A_Y1, sll64, shiftCount);
	SRLcircuit: entity Work.SRL64 port map (A_Y1, srl64, shiftCount);
	SRAcircuit: entity Work.SRA64 port map (A_Y1, sra64, shiftCount);

	--MUX for C and SLL
	A_Y2 <= sll64 when ShiftFn(0) = '1' else 
	      	C;

	--MUX for SRL and SRA
	A_Y3 <= sra64 when ShiftFn(0) = '1' else 
	      	srl64;

	--SgnExt Lower
	seA_Y2(31 downto 0) <= A_Y2(31 downto 0);
	seA_Y2(N-1 downto 32) <= (N-1 downto 32 => A_Y2(31));

	--MUX for A_Y2
	A_Y4 <= seA_Y2 when ExtWord = '1' else 
	      	A_Y2;

	--SgnExt Upper
	seA_Y3(31 downto 0) <= A_Y3(N-1 downto 32);
	seA_Y3(N-1 downto 32) <= (N-1 downto 32 => seA_Y3(31));

	--MUX for A_Y3
	A_Y5 <= seA_Y3 when ExtWord = '1' else 
	      	A_Y3;

	--MUX for output Y
	Y <= 	A_Y5 when ShiftFn(1) = '1' else 
		A_Y4;
End Architecture rtl;