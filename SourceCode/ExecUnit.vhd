library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_MISC.ALL;

Entity ExecUnit is
Generic ( N : natural := 64 );
Port ( A, B : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	-- Control signals
	NotA : in std_logic := '0';
	FuncClass : in std_logic_vector( 1 downto 0 );
	LogicFN : in std_logic_vector( 1 downto 0 );
	ShiftFN : in std_logic_vector( 1 downto 0 );
	AddnSub, ExtWord : in std_logic := '0';
	-- Status output
	Zero, AltB, AltBu : out std_logic
	);
End Entity ExecUnit;

architecture rtl of ExecUnit is 
	Signal	addY, YArith, YLogic, YShift, AltB64, AltBu64 : std_logic_vector( N-1 downto 0 );
	Signal	cout, ovfl, ialtb, ialtbu: std_logic;

begin
	-- Subentity Arithmetic Unit
	ArithUnit: entity Work.ArithUnit port map ( A, B, addY, YArith, NotA, AddnSub, ExtWord, cout, ovfl, Zero, ialtb, ialtbu);
	-- Subentity Logic Unit
	LogicUnit: entity Work.LogicUnit port map ( A, B, YLogic, LogicFN);
	-- Subentity Shift Unit
	ShiftUnit: entity Work.ShiftUnit port map ( A, B, YArith, YShift, ShiftFN, ExtWord);

	AltB <= ialtb;
	AltBu <= ialtbu;

	-- Pad AltB and AltBu with 63 zeros
	AltB64 <= x"000000000000000" & "000" & ialtb;
	AltBu64 <= x"000000000000000" & "000" & ialtbu;

	-- 4-Channel MUX that selects which operation to output
	-- based on the control signal FuncClass
	Y <= 	AltB64 when FuncClass = "01" else 
		YShift when FuncClass = "10" else 
		YLogic when FuncClass = "11" else
		AltBu64;

end architecture rtl;