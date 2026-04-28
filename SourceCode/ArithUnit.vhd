library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

Entity ArithUnit is
	Generic ( N : natural := 64 );
	Port ( 
		A, B : in std_logic_vector( N-1 downto 0 );
		AddY, Y : out std_logic_vector( N-1 downto 0 );
		-- Control signals
		NotA, AddnSub, ExtWord : in std_logic := '0';
		-- Status signals
		Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
End Entity ArithUnit;

architecture rtl of ArithUnit is 
	signal a1, b1, s1: std_logic_vector(N-1 downto 0);
	signal cout1, cout2: std_logic;
	signal internalOvfl:std_logic;
	signal signExt: std_logic_vector(N-1 downto 0);
	signal output: std_logic_vector(N-1 downto 0);
begin
	--MUX for B
	BMUX: for i in 0 to N-1 generate
	begin
	b1(i) <= NOT B(i) when AddnSub = '1' else
	      B(i);
	end generate BMUX;

	--MUX for A
	AMUX: for i in 0 to N-1 generate
	begin
	a1(i) <= NOT A(i) when NotA = '1' else
	      A(i);
	end generate AMUX;

	-- 64-bit Ripple Adder
	add: entity Work.rippleadder port map ( a1, b1, AddnSub, s1, cout1, cout2);
	Cout <= cout1;
	AddY <= s1;

	--NOR
	Zero <= NOR_REDUCE(s1);
	
	--Overflow
	internalOvfl <= cout1 XOR cout2;
	Ovfl <= internalOvfl;
	
	--MUX for ExtWord

	signExt(31 downto 0) <= s1(31 downto 0);
  	signExt(N-1 downto 32) <= (N-1 downto 32 => s1(31));

	output <= signExt when ExtWord = '1' else
	      	s1;

	Y <= output;
	
	--AltB and AltBu
	AltBu <= NOT cout1;
	AltB <=  s1(N-1) XOR internalOvfl;
	
end architecture rtl;