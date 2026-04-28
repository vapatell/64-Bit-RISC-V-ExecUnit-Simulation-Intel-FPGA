-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/14/2020 16:35:12"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ArithUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	AddY : BUFFER std_logic_vector(63 DOWNTO 0);
	Y : BUFFER std_logic_vector(63 DOWNTO 0);
	NotA : IN std_logic;
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Cout : BUFFER std_logic;
	Ovfl : BUFFER std_logic;
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END ArithUnit;

-- Design Ports Information
-- AddY[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[1]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[3]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[5]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[7]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[8]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[9]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[10]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[11]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[12]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[13]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[14]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[15]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[16]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[17]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[18]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[19]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[20]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[21]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[22]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[23]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[24]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[25]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[26]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[27]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[28]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[29]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[30]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[31]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[32]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[33]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[34]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[35]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[36]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[37]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[38]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[39]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[40]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[41]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[42]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[43]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[44]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[45]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[46]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[47]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[48]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[49]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[50]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[51]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[52]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[53]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[54]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[55]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[56]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[57]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[58]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[59]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[60]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[61]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[62]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddY[63]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NotA	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ArithUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_AddY : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_NotA : std_logic;
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \AddY[0]~output_o\ : std_logic;
SIGNAL \AddY[1]~output_o\ : std_logic;
SIGNAL \AddY[2]~output_o\ : std_logic;
SIGNAL \AddY[3]~output_o\ : std_logic;
SIGNAL \AddY[4]~output_o\ : std_logic;
SIGNAL \AddY[5]~output_o\ : std_logic;
SIGNAL \AddY[6]~output_o\ : std_logic;
SIGNAL \AddY[7]~output_o\ : std_logic;
SIGNAL \AddY[8]~output_o\ : std_logic;
SIGNAL \AddY[9]~output_o\ : std_logic;
SIGNAL \AddY[10]~output_o\ : std_logic;
SIGNAL \AddY[11]~output_o\ : std_logic;
SIGNAL \AddY[12]~output_o\ : std_logic;
SIGNAL \AddY[13]~output_o\ : std_logic;
SIGNAL \AddY[14]~output_o\ : std_logic;
SIGNAL \AddY[15]~output_o\ : std_logic;
SIGNAL \AddY[16]~output_o\ : std_logic;
SIGNAL \AddY[17]~output_o\ : std_logic;
SIGNAL \AddY[18]~output_o\ : std_logic;
SIGNAL \AddY[19]~output_o\ : std_logic;
SIGNAL \AddY[20]~output_o\ : std_logic;
SIGNAL \AddY[21]~output_o\ : std_logic;
SIGNAL \AddY[22]~output_o\ : std_logic;
SIGNAL \AddY[23]~output_o\ : std_logic;
SIGNAL \AddY[24]~output_o\ : std_logic;
SIGNAL \AddY[25]~output_o\ : std_logic;
SIGNAL \AddY[26]~output_o\ : std_logic;
SIGNAL \AddY[27]~output_o\ : std_logic;
SIGNAL \AddY[28]~output_o\ : std_logic;
SIGNAL \AddY[29]~output_o\ : std_logic;
SIGNAL \AddY[30]~output_o\ : std_logic;
SIGNAL \AddY[31]~output_o\ : std_logic;
SIGNAL \AddY[32]~output_o\ : std_logic;
SIGNAL \AddY[33]~output_o\ : std_logic;
SIGNAL \AddY[34]~output_o\ : std_logic;
SIGNAL \AddY[35]~output_o\ : std_logic;
SIGNAL \AddY[36]~output_o\ : std_logic;
SIGNAL \AddY[37]~output_o\ : std_logic;
SIGNAL \AddY[38]~output_o\ : std_logic;
SIGNAL \AddY[39]~output_o\ : std_logic;
SIGNAL \AddY[40]~output_o\ : std_logic;
SIGNAL \AddY[41]~output_o\ : std_logic;
SIGNAL \AddY[42]~output_o\ : std_logic;
SIGNAL \AddY[43]~output_o\ : std_logic;
SIGNAL \AddY[44]~output_o\ : std_logic;
SIGNAL \AddY[45]~output_o\ : std_logic;
SIGNAL \AddY[46]~output_o\ : std_logic;
SIGNAL \AddY[47]~output_o\ : std_logic;
SIGNAL \AddY[48]~output_o\ : std_logic;
SIGNAL \AddY[49]~output_o\ : std_logic;
SIGNAL \AddY[50]~output_o\ : std_logic;
SIGNAL \AddY[51]~output_o\ : std_logic;
SIGNAL \AddY[52]~output_o\ : std_logic;
SIGNAL \AddY[53]~output_o\ : std_logic;
SIGNAL \AddY[54]~output_o\ : std_logic;
SIGNAL \AddY[55]~output_o\ : std_logic;
SIGNAL \AddY[56]~output_o\ : std_logic;
SIGNAL \AddY[57]~output_o\ : std_logic;
SIGNAL \AddY[58]~output_o\ : std_logic;
SIGNAL \AddY[59]~output_o\ : std_logic;
SIGNAL \AddY[60]~output_o\ : std_logic;
SIGNAL \AddY[61]~output_o\ : std_logic;
SIGNAL \AddY[62]~output_o\ : std_logic;
SIGNAL \AddY[63]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \NotA~input_o\ : std_logic;
SIGNAL \add|rippleAdder:0:RippleAdder|S~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \b1[1]~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:0:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:1:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:1:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \b1[2]~1_combout\ : std_logic;
SIGNAL \add|rippleAdder:2:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \b1[3]~2_combout\ : std_logic;
SIGNAL \add|rippleAdder:2:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:3:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \b1[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:3:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:4:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:4:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \b1[5]~4_combout\ : std_logic;
SIGNAL \add|rippleAdder:5:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \b1[6]~5_combout\ : std_logic;
SIGNAL \add|rippleAdder:5:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:6:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:6:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \b1[7]~6_combout\ : std_logic;
SIGNAL \add|rippleAdder:7:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \b1[8]~7_combout\ : std_logic;
SIGNAL \add|rippleAdder:7:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:8:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \b1[9]~8_combout\ : std_logic;
SIGNAL \add|rippleAdder:8:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:9:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:9:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \b1[10]~9_combout\ : std_logic;
SIGNAL \add|rippleAdder:10:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \b1[11]~10_combout\ : std_logic;
SIGNAL \add|rippleAdder:10:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:11:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \b1[12]~11_combout\ : std_logic;
SIGNAL \add|rippleAdder:11:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:12:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \b1[13]~12_combout\ : std_logic;
SIGNAL \add|rippleAdder:12:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:13:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:13:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \b1[14]~13_combout\ : std_logic;
SIGNAL \add|rippleAdder:14:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \b1[15]~14_combout\ : std_logic;
SIGNAL \add|rippleAdder:14:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:15:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:15:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \b1[16]~15_combout\ : std_logic;
SIGNAL \add|rippleAdder:16:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \b1[17]~16_combout\ : std_logic;
SIGNAL \add|rippleAdder:16:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:17:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:17:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \b1[18]~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:18:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \b1[19]~18_combout\ : std_logic;
SIGNAL \add|rippleAdder:18:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:19:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:19:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \b1[20]~19_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:20:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \b1[21]~20_combout\ : std_logic;
SIGNAL \add|rippleAdder:20:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:21:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \b1[22]~21_combout\ : std_logic;
SIGNAL \add|rippleAdder:21:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:22:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:22:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \b1[23]~22_combout\ : std_logic;
SIGNAL \add|rippleAdder:23:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:23:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \b1[24]~23_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:24:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:24:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \b1[25]~24_combout\ : std_logic;
SIGNAL \add|rippleAdder:25:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:25:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \b1[26]~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:26:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:26:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \b1[27]~26_combout\ : std_logic;
SIGNAL \add|rippleAdder:27:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:27:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \b1[28]~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:28:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:28:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \b1[29]~28_combout\ : std_logic;
SIGNAL \add|rippleAdder:29:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:29:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \b1[30]~29_combout\ : std_logic;
SIGNAL \add|rippleAdder:30:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:30:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \b1[31]~30_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:31:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \b1[32]~31_combout\ : std_logic;
SIGNAL \add|rippleAdder:31:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:32:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \b1[33]~32_combout\ : std_logic;
SIGNAL \add|rippleAdder:32:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:33:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:33:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \b1[34]~33_combout\ : std_logic;
SIGNAL \add|rippleAdder:34:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:34:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \b1[35]~34_combout\ : std_logic;
SIGNAL \add|rippleAdder:35:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:35:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \b1[36]~35_combout\ : std_logic;
SIGNAL \add|rippleAdder:36:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \b1[37]~36_combout\ : std_logic;
SIGNAL \add|rippleAdder:36:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:37:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \b1[38]~37_combout\ : std_logic;
SIGNAL \add|rippleAdder:37:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:38:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:38:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \b1[39]~38_combout\ : std_logic;
SIGNAL \add|rippleAdder:39:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:39:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \b1[40]~39_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:40:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \b1[41]~40_combout\ : std_logic;
SIGNAL \add|rippleAdder:40:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:41:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:41:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \b1[42]~41_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:42:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \b1[43]~42_combout\ : std_logic;
SIGNAL \add|rippleAdder:42:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:43:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \b1[44]~43_combout\ : std_logic;
SIGNAL \add|rippleAdder:43:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:44:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:44:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \b1[45]~44_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:45:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:45:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \b1[46]~45_combout\ : std_logic;
SIGNAL \add|rippleAdder:46:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:46:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \b1[47]~46_combout\ : std_logic;
SIGNAL \add|rippleAdder:47:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \b1[48]~47_combout\ : std_logic;
SIGNAL \add|rippleAdder:47:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:48:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \b1[49]~48_combout\ : std_logic;
SIGNAL \add|rippleAdder:48:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:49:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:49:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \b1[50]~49_combout\ : std_logic;
SIGNAL \add|rippleAdder:50:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \b1[51]~50_combout\ : std_logic;
SIGNAL \add|rippleAdder:50:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:51:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \b1[52]~51_combout\ : std_logic;
SIGNAL \add|rippleAdder:51:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:52:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:52:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \b1[53]~52_combout\ : std_logic;
SIGNAL \add|rippleAdder:53:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \b1[54]~53_combout\ : std_logic;
SIGNAL \add|rippleAdder:53:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:54:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:54:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \b1[55]~54_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:55:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:55:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \b1[56]~55_combout\ : std_logic;
SIGNAL \add|rippleAdder:56:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \b1[57]~56_combout\ : std_logic;
SIGNAL \add|rippleAdder:56:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:57:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \b1[58]~57_combout\ : std_logic;
SIGNAL \add|rippleAdder:57:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:58:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \b1[59]~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:58:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:59:RippleAdder|S~combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:59:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \b1[60]~59_combout\ : std_logic;
SIGNAL \add|rippleAdder:60:RippleAdder|S~combout\ : std_logic;
SIGNAL \add|rippleAdder:60:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \b1[61]~60_combout\ : std_logic;
SIGNAL \add|rippleAdder:61:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \b1[62]~61_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:61:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \add|rippleAdder:62:RippleAdder|S~combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \b1[63]~62_combout\ : std_logic;
SIGNAL \add|rippleAdder:62:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|S~combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;
SIGNAL \output~11_combout\ : std_logic;
SIGNAL \output~12_combout\ : std_logic;
SIGNAL \output~13_combout\ : std_logic;
SIGNAL \output~14_combout\ : std_logic;
SIGNAL \output~15_combout\ : std_logic;
SIGNAL \output~16_combout\ : std_logic;
SIGNAL \output~17_combout\ : std_logic;
SIGNAL \output~18_combout\ : std_logic;
SIGNAL \output~19_combout\ : std_logic;
SIGNAL \output~20_combout\ : std_logic;
SIGNAL \output~21_combout\ : std_logic;
SIGNAL \output~22_combout\ : std_logic;
SIGNAL \output~23_combout\ : std_logic;
SIGNAL \output~24_combout\ : std_logic;
SIGNAL \output~25_combout\ : std_logic;
SIGNAL \output~26_combout\ : std_logic;
SIGNAL \output~27_combout\ : std_logic;
SIGNAL \output~28_combout\ : std_logic;
SIGNAL \output~29_combout\ : std_logic;
SIGNAL \output~30_combout\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|S~0_combout\ : std_logic;
SIGNAL \output~31_combout\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|Cout~0_combout\ : std_logic;
SIGNAL \internalOvfl~2_combout\ : std_logic;
SIGNAL \WideOr0~19_combout\ : std_logic;
SIGNAL \WideOr0~17_combout\ : std_logic;
SIGNAL \WideOr0~18_combout\ : std_logic;
SIGNAL \WideOr0~16_combout\ : std_logic;
SIGNAL \WideOr0~20_combout\ : std_logic;
SIGNAL \WideOr0~7_combout\ : std_logic;
SIGNAL \WideOr0~8_combout\ : std_logic;
SIGNAL \WideOr0~9_combout\ : std_logic;
SIGNAL \WideOr0~6_combout\ : std_logic;
SIGNAL \WideOr0~10_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~5_combout\ : std_logic;
SIGNAL \WideOr0~12_combout\ : std_logic;
SIGNAL \WideOr0~13_combout\ : std_logic;
SIGNAL \WideOr0~11_combout\ : std_logic;
SIGNAL \WideOr0~14_combout\ : std_logic;
SIGNAL \WideOr0~15_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \AltB~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \add|rippleAdder:63:RippleAdder|ALT_INV_Cout~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
AddY <= ww_AddY;
Y <= ww_Y;
ww_NotA <= NotA;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\add|rippleAdder:63:RippleAdder|ALT_INV_Cout~0_combout\ <= NOT \add|rippleAdder:63:RippleAdder|Cout~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X25_Y73_N16
\AddY[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:0:RippleAdder|S~0_combout\,
	devoe => ww_devoe,
	o => \AddY[0]~output_o\);

-- Location: IOOBUF_X115_Y46_N9
\AddY[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:1:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\AddY[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:2:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[2]~output_o\);

-- Location: IOOBUF_X3_Y73_N9
\AddY[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:3:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\AddY[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:4:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\AddY[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:5:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\AddY[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:6:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\AddY[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:7:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[7]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\AddY[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:8:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[8]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\AddY[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:9:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[9]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\AddY[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:10:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\AddY[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:11:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[11]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\AddY[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:12:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[12]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\AddY[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:13:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[13]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\AddY[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:14:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[14]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\AddY[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:15:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[15]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\AddY[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:16:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[16]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\AddY[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:17:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[17]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\AddY[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:18:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[18]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\AddY[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:19:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[19]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\AddY[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:20:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\AddY[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:21:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[21]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\AddY[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:22:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[22]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\AddY[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:23:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[23]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\AddY[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:24:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[24]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\AddY[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:25:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[25]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\AddY[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:26:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[26]~output_o\);

-- Location: IOOBUF_X13_Y73_N16
\AddY[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:27:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[27]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\AddY[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:28:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[28]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\AddY[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:29:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[29]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\AddY[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:30:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[30]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\AddY[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:31:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\AddY[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:32:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[32]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\AddY[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:33:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[33]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\AddY[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:34:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[34]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\AddY[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:35:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[35]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\AddY[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:36:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[36]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\AddY[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:37:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[37]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\AddY[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:38:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[38]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\AddY[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:39:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[39]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\AddY[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:40:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[40]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\AddY[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:41:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[41]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\AddY[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:42:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[42]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\AddY[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:43:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[43]~output_o\);

-- Location: IOOBUF_X115_Y56_N16
\AddY[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:44:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[44]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\AddY[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:45:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[45]~output_o\);

-- Location: IOOBUF_X115_Y57_N16
\AddY[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:46:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[46]~output_o\);

-- Location: IOOBUF_X115_Y63_N2
\AddY[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:47:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[47]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\AddY[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:48:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[48]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\AddY[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:49:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[49]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\AddY[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:50:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[50]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\AddY[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:51:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[51]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\AddY[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:52:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[52]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\AddY[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:53:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[53]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\AddY[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:54:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[54]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\AddY[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:55:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[55]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\AddY[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:56:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[56]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\AddY[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:57:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[57]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\AddY[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:58:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[58]~output_o\);

-- Location: IOOBUF_X115_Y69_N23
\AddY[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:59:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[59]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\AddY[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:60:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[60]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\AddY[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:61:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[61]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\AddY[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:62:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[62]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\AddY[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:63:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \AddY[63]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:0:RippleAdder|S~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:1:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:2:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X5_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:3:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:4:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:5:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:6:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:7:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:8:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:9:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:10:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:11:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:12:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:13:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:14:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:15:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:16:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:17:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:18:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:19:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:20:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:21:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:22:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:23:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:24:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:25:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:26:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:27:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:28:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:29:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:30:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:31:RippleAdder|S~combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~0_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~1_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~3_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~6_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~7_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~9_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~10_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~11_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X115_Y61_N16
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~12_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~13_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~14_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X115_Y63_N9
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~15_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~16_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~17_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~18_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y68_N23
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~19_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X115_Y65_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~20_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~21_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~22_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~23_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~24_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~25_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~26_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~27_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~28_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~29_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X115_Y66_N23
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~30_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~31_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:63:RippleAdder|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \internalOvfl~2_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AltB~2_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add|rippleAdder:63:RippleAdder|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X115_Y12_N8
\NotA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NotA,
	o => \NotA~input_o\);

-- Location: LCCOMB_X66_Y69_N0
\add|rippleAdder:0:RippleAdder|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:0:RippleAdder|S~0_combout\ = \B[0]~input_o\ $ (\A[0]~input_o\ $ (\NotA~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:0:RippleAdder|S~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: LCCOMB_X66_Y69_N12
\b1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[1]~0_combout\ = \B[1]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[1]~0_combout\);

-- Location: LCCOMB_X66_Y69_N2
\add|rippleAdder:0:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:0:RippleAdder|Cout~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\ $ (\NotA~input_o\)))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:0:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X66_Y69_N30
\add|rippleAdder:1:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:1:RippleAdder|S~combout\ = \b1[1]~0_combout\ $ (\add|rippleAdder:0:RippleAdder|Cout~0_combout\ $ (\A[1]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~0_combout\,
	datab => \add|rippleAdder:0:RippleAdder|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:1:RippleAdder|S~combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X66_Y69_N24
\add|rippleAdder:1:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:1:RippleAdder|Cout~0_combout\ = (\b1[1]~0_combout\ & ((\add|rippleAdder:0:RippleAdder|Cout~0_combout\) # (\A[1]~input_o\ $ (\NotA~input_o\)))) # (!\b1[1]~0_combout\ & (\add|rippleAdder:0:RippleAdder|Cout~0_combout\ & (\A[1]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[1]~0_combout\,
	datab => \add|rippleAdder:0:RippleAdder|Cout~0_combout\,
	datac => \A[1]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:1:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X66_Y69_N26
\b1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[2]~1_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[2]~1_combout\);

-- Location: LCCOMB_X66_Y69_N20
\add|rippleAdder:2:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:2:RippleAdder|S~combout\ = \A[2]~input_o\ $ (\add|rippleAdder:1:RippleAdder|Cout~0_combout\ $ (\b1[2]~1_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \add|rippleAdder:1:RippleAdder|Cout~0_combout\,
	datac => \b1[2]~1_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:2:RippleAdder|S~combout\);

-- Location: IOIBUF_X65_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X66_Y69_N16
\b1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[3]~2_combout\ = \B[3]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[3]~2_combout\);

-- Location: LCCOMB_X66_Y69_N14
\add|rippleAdder:2:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:2:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:1:RippleAdder|Cout~0_combout\ & ((\b1[2]~1_combout\) # (\A[2]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:1:RippleAdder|Cout~0_combout\ & (\b1[2]~1_combout\ & (\A[2]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \add|rippleAdder:1:RippleAdder|Cout~0_combout\,
	datac => \b1[2]~1_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:2:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X66_Y69_N10
\add|rippleAdder:3:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:3:RippleAdder|S~combout\ = \A[3]~input_o\ $ (\b1[3]~2_combout\ $ (\add|rippleAdder:2:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \b1[3]~2_combout\,
	datac => \add|rippleAdder:2:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:3:RippleAdder|S~combout\);

-- Location: IOIBUF_X62_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X66_Y1_N16
\b1[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[4]~3_combout\ = \B[4]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[4]~3_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X66_Y69_N4
\add|rippleAdder:3:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:3:RippleAdder|Cout~0_combout\ = (\b1[3]~2_combout\ & ((\add|rippleAdder:2:RippleAdder|Cout~0_combout\) # (\A[3]~input_o\ $ (\NotA~input_o\)))) # (!\b1[3]~2_combout\ & (\add|rippleAdder:2:RippleAdder|Cout~0_combout\ & (\A[3]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \b1[3]~2_combout\,
	datac => \add|rippleAdder:2:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:3:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X66_Y1_N10
\add|rippleAdder:4:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:4:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[4]~3_combout\ $ (\A[4]~input_o\ $ (\add|rippleAdder:3:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[4]~3_combout\,
	datac => \A[4]~input_o\,
	datad => \add|rippleAdder:3:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:4:RippleAdder|S~combout\);

-- Location: LCCOMB_X66_Y1_N12
\add|rippleAdder:4:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:4:RippleAdder|Cout~0_combout\ = (\b1[4]~3_combout\ & ((\add|rippleAdder:3:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[4]~input_o\)))) # (!\b1[4]~3_combout\ & (\add|rippleAdder:3:RippleAdder|Cout~0_combout\ & (\NotA~input_o\ $ 
-- (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[4]~3_combout\,
	datac => \A[4]~input_o\,
	datad => \add|rippleAdder:3:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:4:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X67_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X69_Y0_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X66_Y1_N6
\b1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[5]~4_combout\ = \B[5]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[5]~4_combout\);

-- Location: LCCOMB_X66_Y1_N24
\add|rippleAdder:5:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:5:RippleAdder|S~combout\ = \add|rippleAdder:4:RippleAdder|Cout~0_combout\ $ (\A[5]~input_o\ $ (\NotA~input_o\ $ (\b1[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:4:RippleAdder|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \NotA~input_o\,
	datad => \b1[5]~4_combout\,
	combout => \add|rippleAdder:5:RippleAdder|S~combout\);

-- Location: IOIBUF_X65_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X66_Y1_N4
\b1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[6]~5_combout\ = \B[6]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[6]~5_combout\);

-- Location: LCCOMB_X66_Y1_N2
\add|rippleAdder:5:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:5:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:4:RippleAdder|Cout~0_combout\ & ((\b1[5]~4_combout\) # (\A[5]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:4:RippleAdder|Cout~0_combout\ & (\b1[5]~4_combout\ & (\A[5]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:4:RippleAdder|Cout~0_combout\,
	datab => \A[5]~input_o\,
	datac => \NotA~input_o\,
	datad => \b1[5]~4_combout\,
	combout => \add|rippleAdder:5:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X66_Y1_N30
\add|rippleAdder:6:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:6:RippleAdder|S~combout\ = \A[6]~input_o\ $ (\b1[6]~5_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:5:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \b1[6]~5_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:5:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:6:RippleAdder|S~combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X66_Y1_N8
\add|rippleAdder:6:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:6:RippleAdder|Cout~0_combout\ = (\b1[6]~5_combout\ & ((\add|rippleAdder:5:RippleAdder|Cout~0_combout\) # (\A[6]~input_o\ $ (\NotA~input_o\)))) # (!\b1[6]~5_combout\ & (\add|rippleAdder:5:RippleAdder|Cout~0_combout\ & (\A[6]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \b1[6]~5_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:5:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:6:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X65_Y0_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X66_Y1_N18
\b1[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[7]~6_combout\ = \B[7]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[7]~6_combout\);

-- Location: LCCOMB_X66_Y1_N20
\add|rippleAdder:7:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:7:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[7]~input_o\ $ (\add|rippleAdder:6:RippleAdder|Cout~0_combout\ $ (\b1[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[7]~input_o\,
	datac => \add|rippleAdder:6:RippleAdder|Cout~0_combout\,
	datad => \b1[7]~6_combout\,
	combout => \add|rippleAdder:7:RippleAdder|S~combout\);

-- Location: IOIBUF_X67_Y0_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X66_Y1_N0
\b1[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[8]~7_combout\ = \B[8]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[8]~7_combout\);

-- Location: LCCOMB_X66_Y1_N22
\add|rippleAdder:7:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:7:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:6:RippleAdder|Cout~0_combout\ & ((\b1[7]~6_combout\) # (\NotA~input_o\ $ (\A[7]~input_o\)))) # (!\add|rippleAdder:6:RippleAdder|Cout~0_combout\ & (\b1[7]~6_combout\ & (\NotA~input_o\ $ 
-- (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[7]~input_o\,
	datac => \add|rippleAdder:6:RippleAdder|Cout~0_combout\,
	datad => \b1[7]~6_combout\,
	combout => \add|rippleAdder:7:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X66_Y1_N26
\add|rippleAdder:8:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:8:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[8]~7_combout\ $ (\add|rippleAdder:7:RippleAdder|Cout~0_combout\ $ (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[8]~7_combout\,
	datac => \add|rippleAdder:7:RippleAdder|Cout~0_combout\,
	datad => \A[8]~input_o\,
	combout => \add|rippleAdder:8:RippleAdder|S~combout\);

-- Location: IOIBUF_X85_Y0_N8
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X82_Y1_N0
\b1[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[9]~8_combout\ = \B[9]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[9]~8_combout\);

-- Location: LCCOMB_X66_Y1_N28
\add|rippleAdder:8:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:8:RippleAdder|Cout~0_combout\ = (\b1[8]~7_combout\ & ((\add|rippleAdder:7:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[8]~input_o\)))) # (!\b1[8]~7_combout\ & (\add|rippleAdder:7:RippleAdder|Cout~0_combout\ & (\NotA~input_o\ $ 
-- (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[8]~7_combout\,
	datac => \add|rippleAdder:7:RippleAdder|Cout~0_combout\,
	datad => \A[8]~input_o\,
	combout => \add|rippleAdder:8:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X82_Y1_N18
\add|rippleAdder:9:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:9:RippleAdder|S~combout\ = \A[9]~input_o\ $ (\b1[9]~8_combout\ $ (\add|rippleAdder:8:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \b1[9]~8_combout\,
	datac => \add|rippleAdder:8:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:9:RippleAdder|S~combout\);

-- Location: IOIBUF_X87_Y0_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X82_Y1_N20
\add|rippleAdder:9:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:9:RippleAdder|Cout~0_combout\ = (\b1[9]~8_combout\ & ((\add|rippleAdder:8:RippleAdder|Cout~0_combout\) # (\A[9]~input_o\ $ (\NotA~input_o\)))) # (!\b1[9]~8_combout\ & (\add|rippleAdder:8:RippleAdder|Cout~0_combout\ & (\A[9]~input_o\ $ 
-- (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \b1[9]~8_combout\,
	datac => \add|rippleAdder:8:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:9:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X85_Y0_N1
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X82_Y1_N30
\b1[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[10]~9_combout\ = \B[10]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[10]~9_combout\);

-- Location: LCCOMB_X82_Y1_N16
\add|rippleAdder:10:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:10:RippleAdder|S~combout\ = \A[10]~input_o\ $ (\add|rippleAdder:9:RippleAdder|Cout~0_combout\ $ (\b1[10]~9_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \add|rippleAdder:9:RippleAdder|Cout~0_combout\,
	datac => \b1[10]~9_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:10:RippleAdder|S~combout\);

-- Location: IOIBUF_X83_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X82_Y1_N12
\b1[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[11]~10_combout\ = \B[11]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[11]~10_combout\);

-- Location: LCCOMB_X82_Y1_N2
\add|rippleAdder:10:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:10:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:9:RippleAdder|Cout~0_combout\ & ((\b1[10]~9_combout\) # (\A[10]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:9:RippleAdder|Cout~0_combout\ & (\b1[10]~9_combout\ & (\A[10]~input_o\ 
-- $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \add|rippleAdder:9:RippleAdder|Cout~0_combout\,
	datac => \b1[10]~9_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:10:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X81_Y0_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X82_Y1_N14
\add|rippleAdder:11:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:11:RippleAdder|S~combout\ = \b1[11]~10_combout\ $ (\add|rippleAdder:10:RippleAdder|Cout~0_combout\ $ (\A[11]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[11]~10_combout\,
	datab => \add|rippleAdder:10:RippleAdder|Cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:11:RippleAdder|S~combout\);

-- Location: IOIBUF_X87_Y0_N22
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X82_Y1_N10
\b1[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[12]~11_combout\ = \B[12]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[12]~11_combout\);

-- Location: LCCOMB_X82_Y1_N24
\add|rippleAdder:11:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:11:RippleAdder|Cout~0_combout\ = (\b1[11]~10_combout\ & ((\add|rippleAdder:10:RippleAdder|Cout~0_combout\) # (\A[11]~input_o\ $ (\NotA~input_o\)))) # (!\b1[11]~10_combout\ & (\add|rippleAdder:10:RippleAdder|Cout~0_combout\ & 
-- (\A[11]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[11]~10_combout\,
	datab => \add|rippleAdder:10:RippleAdder|Cout~0_combout\,
	datac => \A[11]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:11:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X82_Y1_N4
\add|rippleAdder:12:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:12:RippleAdder|S~combout\ = \b1[12]~11_combout\ $ (\add|rippleAdder:11:RippleAdder|Cout~0_combout\ $ (\A[12]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[12]~11_combout\,
	datab => \add|rippleAdder:11:RippleAdder|Cout~0_combout\,
	datac => \A[12]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:12:RippleAdder|S~combout\);

-- Location: IOIBUF_X83_Y0_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X82_Y4_N0
\b1[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[13]~12_combout\ = \B[13]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[13]~12_combout\);

-- Location: LCCOMB_X82_Y1_N22
\add|rippleAdder:12:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:12:RippleAdder|Cout~0_combout\ = (\b1[12]~11_combout\ & ((\add|rippleAdder:11:RippleAdder|Cout~0_combout\) # (\A[12]~input_o\ $ (\NotA~input_o\)))) # (!\b1[12]~11_combout\ & (\add|rippleAdder:11:RippleAdder|Cout~0_combout\ & 
-- (\A[12]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[12]~11_combout\,
	datab => \add|rippleAdder:11:RippleAdder|Cout~0_combout\,
	datac => \A[12]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:12:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X82_Y4_N18
\add|rippleAdder:13:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:13:RippleAdder|S~combout\ = \A[13]~input_o\ $ (\b1[13]~12_combout\ $ (\add|rippleAdder:12:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \b1[13]~12_combout\,
	datac => \add|rippleAdder:12:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:13:RippleAdder|S~combout\);

-- Location: LCCOMB_X82_Y4_N12
\add|rippleAdder:13:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:13:RippleAdder|Cout~0_combout\ = (\b1[13]~12_combout\ & ((\add|rippleAdder:12:RippleAdder|Cout~0_combout\) # (\A[13]~input_o\ $ (\NotA~input_o\)))) # (!\b1[13]~12_combout\ & (\add|rippleAdder:12:RippleAdder|Cout~0_combout\ & 
-- (\A[13]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \b1[13]~12_combout\,
	datac => \add|rippleAdder:12:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:13:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X83_Y0_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X82_Y4_N6
\b1[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[14]~13_combout\ = \B[14]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[14]~13_combout\);

-- Location: LCCOMB_X82_Y4_N8
\add|rippleAdder:14:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:14:RippleAdder|S~combout\ = \add|rippleAdder:13:RippleAdder|Cout~0_combout\ $ (\A[14]~input_o\ $ (\b1[14]~13_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:13:RippleAdder|Cout~0_combout\,
	datab => \A[14]~input_o\,
	datac => \b1[14]~13_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:14:RippleAdder|S~combout\);

-- Location: IOIBUF_X79_Y0_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X82_Y4_N20
\b1[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[15]~14_combout\ = \B[15]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[15]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[15]~14_combout\);

-- Location: LCCOMB_X82_Y4_N10
\add|rippleAdder:14:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:14:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:13:RippleAdder|Cout~0_combout\ & ((\b1[14]~13_combout\) # (\A[14]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:13:RippleAdder|Cout~0_combout\ & (\b1[14]~13_combout\ & 
-- (\A[14]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:13:RippleAdder|Cout~0_combout\,
	datab => \A[14]~input_o\,
	datac => \b1[14]~13_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:14:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X91_Y0_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X82_Y4_N30
\add|rippleAdder:15:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:15:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[15]~14_combout\ $ (\add|rippleAdder:14:RippleAdder|Cout~0_combout\ $ (\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[15]~14_combout\,
	datac => \add|rippleAdder:14:RippleAdder|Cout~0_combout\,
	datad => \A[15]~input_o\,
	combout => \add|rippleAdder:15:RippleAdder|S~combout\);

-- Location: IOIBUF_X89_Y0_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X82_Y4_N24
\add|rippleAdder:15:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:15:RippleAdder|Cout~0_combout\ = (\b1[15]~14_combout\ & ((\add|rippleAdder:14:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[15]~input_o\)))) # (!\b1[15]~14_combout\ & (\add|rippleAdder:14:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[15]~14_combout\,
	datac => \add|rippleAdder:14:RippleAdder|Cout~0_combout\,
	datad => \A[15]~input_o\,
	combout => \add|rippleAdder:15:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X89_Y0_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X82_Y4_N26
\b1[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[16]~15_combout\ = \B[16]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[16]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[16]~15_combout\);

-- Location: LCCOMB_X82_Y4_N28
\add|rippleAdder:16:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:16:RippleAdder|S~combout\ = \A[16]~input_o\ $ (\add|rippleAdder:15:RippleAdder|Cout~0_combout\ $ (\b1[16]~15_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \add|rippleAdder:15:RippleAdder|Cout~0_combout\,
	datac => \b1[16]~15_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:16:RippleAdder|S~combout\);

-- Location: IOIBUF_X79_Y0_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X82_Y4_N16
\b1[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[17]~16_combout\ = \B[17]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[17]~16_combout\);

-- Location: LCCOMB_X82_Y4_N14
\add|rippleAdder:16:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:16:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:15:RippleAdder|Cout~0_combout\ & ((\b1[16]~15_combout\) # (\A[16]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:15:RippleAdder|Cout~0_combout\ & (\b1[16]~15_combout\ & 
-- (\A[16]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \add|rippleAdder:15:RippleAdder|Cout~0_combout\,
	datac => \b1[16]~15_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:16:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X82_Y4_N2
\add|rippleAdder:17:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:17:RippleAdder|S~combout\ = \A[17]~input_o\ $ (\b1[17]~16_combout\ $ (\add|rippleAdder:16:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \b1[17]~16_combout\,
	datac => \add|rippleAdder:16:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:17:RippleAdder|S~combout\);

-- Location: LCCOMB_X82_Y4_N4
\add|rippleAdder:17:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:17:RippleAdder|Cout~0_combout\ = (\b1[17]~16_combout\ & ((\add|rippleAdder:16:RippleAdder|Cout~0_combout\) # (\A[17]~input_o\ $ (\NotA~input_o\)))) # (!\b1[17]~16_combout\ & (\add|rippleAdder:16:RippleAdder|Cout~0_combout\ & 
-- (\A[17]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \b1[17]~16_combout\,
	datac => \add|rippleAdder:16:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:17:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X52_Y2_N24
\b1[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[18]~17_combout\ = \B[18]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[18]~17_combout\);

-- Location: IOIBUF_X52_Y0_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X68_Y2_N8
\add|rippleAdder:18:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:18:RippleAdder|S~combout\ = \add|rippleAdder:17:RippleAdder|Cout~0_combout\ $ (\b1[18]~17_combout\ $ (\NotA~input_o\ $ (\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:17:RippleAdder|Cout~0_combout\,
	datab => \b1[18]~17_combout\,
	datac => \NotA~input_o\,
	datad => \A[18]~input_o\,
	combout => \add|rippleAdder:18:RippleAdder|S~combout\);

-- Location: IOIBUF_X47_Y0_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X46_Y1_N2
\b1[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[19]~18_combout\ = \B[19]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[19]~18_combout\);

-- Location: LCCOMB_X46_Y1_N24
\add|rippleAdder:18:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:18:RippleAdder|Cout~0_combout\ = (\b1[18]~17_combout\ & ((\add|rippleAdder:17:RippleAdder|Cout~0_combout\) # (\A[18]~input_o\ $ (\NotA~input_o\)))) # (!\b1[18]~17_combout\ & (\add|rippleAdder:17:RippleAdder|Cout~0_combout\ & 
-- (\A[18]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[18]~17_combout\,
	datab => \A[18]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:17:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:18:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X46_Y1_N12
\add|rippleAdder:19:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:19:RippleAdder|S~combout\ = \A[19]~input_o\ $ (\b1[19]~18_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:18:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \b1[19]~18_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:18:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:19:RippleAdder|S~combout\);

-- Location: LCCOMB_X46_Y1_N30
\add|rippleAdder:19:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:19:RippleAdder|Cout~0_combout\ = (\b1[19]~18_combout\ & ((\add|rippleAdder:18:RippleAdder|Cout~0_combout\) # (\A[19]~input_o\ $ (\NotA~input_o\)))) # (!\b1[19]~18_combout\ & (\add|rippleAdder:18:RippleAdder|Cout~0_combout\ & 
-- (\A[19]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \b1[19]~18_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:18:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:19:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X46_Y1_N16
\b1[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[20]~19_combout\ = \B[20]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[20]~19_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X46_Y1_N18
\add|rippleAdder:20:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:20:RippleAdder|S~combout\ = \add|rippleAdder:19:RippleAdder|Cout~0_combout\ $ (\b1[20]~19_combout\ $ (\NotA~input_o\ $ (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:19:RippleAdder|Cout~0_combout\,
	datab => \b1[20]~19_combout\,
	datac => \NotA~input_o\,
	datad => \A[20]~input_o\,
	combout => \add|rippleAdder:20:RippleAdder|S~combout\);

-- Location: IOIBUF_X49_Y0_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X46_Y69_N16
\b1[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[21]~20_combout\ = \AddnSub~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[21]~input_o\,
	combout => \b1[21]~20_combout\);

-- Location: LCCOMB_X46_Y1_N28
\add|rippleAdder:20:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:20:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:19:RippleAdder|Cout~0_combout\ & ((\b1[20]~19_combout\) # (\NotA~input_o\ $ (\A[20]~input_o\)))) # (!\add|rippleAdder:19:RippleAdder|Cout~0_combout\ & (\b1[20]~19_combout\ & 
-- (\NotA~input_o\ $ (\A[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:19:RippleAdder|Cout~0_combout\,
	datab => \b1[20]~19_combout\,
	datac => \NotA~input_o\,
	datad => \A[20]~input_o\,
	combout => \add|rippleAdder:20:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X46_Y1_N22
\add|rippleAdder:21:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:21:RippleAdder|S~combout\ = \A[21]~input_o\ $ (\b1[21]~20_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:20:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \b1[21]~20_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:20:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:21:RippleAdder|S~combout\);

-- Location: IOIBUF_X42_Y0_N22
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X46_Y1_N10
\b1[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[22]~21_combout\ = \AddnSub~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[22]~input_o\,
	combout => \b1[22]~21_combout\);

-- Location: LCCOMB_X46_Y1_N8
\add|rippleAdder:21:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:21:RippleAdder|Cout~0_combout\ = (\b1[21]~20_combout\ & ((\add|rippleAdder:20:RippleAdder|Cout~0_combout\) # (\A[21]~input_o\ $ (\NotA~input_o\)))) # (!\b1[21]~20_combout\ & (\add|rippleAdder:20:RippleAdder|Cout~0_combout\ & 
-- (\A[21]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \b1[21]~20_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:20:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:21:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X46_Y1_N4
\add|rippleAdder:22:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:22:RippleAdder|S~combout\ = \b1[22]~21_combout\ $ (\add|rippleAdder:21:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[22]~21_combout\,
	datab => \add|rippleAdder:21:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[22]~input_o\,
	combout => \add|rippleAdder:22:RippleAdder|S~combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X46_Y1_N14
\add|rippleAdder:22:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:22:RippleAdder|Cout~0_combout\ = (\b1[22]~21_combout\ & ((\add|rippleAdder:21:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[22]~input_o\)))) # (!\b1[22]~21_combout\ & (\add|rippleAdder:21:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[22]~21_combout\,
	datab => \add|rippleAdder:21:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[22]~input_o\,
	combout => \add|rippleAdder:22:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X42_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X46_Y1_N0
\b1[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[23]~22_combout\ = \B[23]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[23]~22_combout\);

-- Location: LCCOMB_X46_Y1_N26
\add|rippleAdder:23:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:23:RippleAdder|S~combout\ = \A[23]~input_o\ $ (\add|rippleAdder:22:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[23]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \add|rippleAdder:22:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[23]~22_combout\,
	combout => \add|rippleAdder:23:RippleAdder|S~combout\);

-- Location: LCCOMB_X46_Y1_N20
\add|rippleAdder:23:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:23:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:22:RippleAdder|Cout~0_combout\ & ((\b1[23]~22_combout\) # (\A[23]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:22:RippleAdder|Cout~0_combout\ & (\b1[23]~22_combout\ & 
-- (\A[23]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \add|rippleAdder:22:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[23]~22_combout\,
	combout => \add|rippleAdder:23:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X11_Y73_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X19_Y69_N0
\b1[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[24]~23_combout\ = \AddnSub~input_o\ $ (\B[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[24]~input_o\,
	combout => \b1[24]~23_combout\);

-- Location: IOIBUF_X9_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X19_Y69_N18
\add|rippleAdder:24:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:24:RippleAdder|S~combout\ = \add|rippleAdder:23:RippleAdder|Cout~0_combout\ $ (\b1[24]~23_combout\ $ (\NotA~input_o\ $ (\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:23:RippleAdder|Cout~0_combout\,
	datab => \b1[24]~23_combout\,
	datac => \NotA~input_o\,
	datad => \A[24]~input_o\,
	combout => \add|rippleAdder:24:RippleAdder|S~combout\);

-- Location: IOIBUF_X18_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X19_Y69_N4
\add|rippleAdder:24:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:24:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:23:RippleAdder|Cout~0_combout\ & ((\b1[24]~23_combout\) # (\NotA~input_o\ $ (\A[24]~input_o\)))) # (!\add|rippleAdder:23:RippleAdder|Cout~0_combout\ & (\b1[24]~23_combout\ & 
-- (\NotA~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:23:RippleAdder|Cout~0_combout\,
	datab => \b1[24]~23_combout\,
	datac => \NotA~input_o\,
	datad => \A[24]~input_o\,
	combout => \add|rippleAdder:24:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X18_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X19_Y69_N14
\b1[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[25]~24_combout\ = \B[25]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[25]~24_combout\);

-- Location: LCCOMB_X19_Y69_N24
\add|rippleAdder:25:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:25:RippleAdder|S~combout\ = \A[25]~input_o\ $ (\add|rippleAdder:24:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[25]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \add|rippleAdder:24:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[25]~24_combout\,
	combout => \add|rippleAdder:25:RippleAdder|S~combout\);

-- Location: LCCOMB_X19_Y69_N10
\add|rippleAdder:25:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:25:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:24:RippleAdder|Cout~0_combout\ & ((\b1[25]~24_combout\) # (\A[25]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:24:RippleAdder|Cout~0_combout\ & (\b1[25]~24_combout\ & 
-- (\A[25]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \add|rippleAdder:24:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[25]~24_combout\,
	combout => \add|rippleAdder:25:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X16_Y73_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X19_Y69_N20
\b1[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[26]~25_combout\ = \B[26]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[26]~25_combout\);

-- Location: IOIBUF_X7_Y73_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X19_Y69_N22
\add|rippleAdder:26:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:26:RippleAdder|S~combout\ = \add|rippleAdder:25:RippleAdder|Cout~0_combout\ $ (\b1[26]~25_combout\ $ (\NotA~input_o\ $ (\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:25:RippleAdder|Cout~0_combout\,
	datab => \b1[26]~25_combout\,
	datac => \NotA~input_o\,
	datad => \A[26]~input_o\,
	combout => \add|rippleAdder:26:RippleAdder|S~combout\);

-- Location: LCCOMB_X19_Y69_N16
\add|rippleAdder:26:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:26:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:25:RippleAdder|Cout~0_combout\ & ((\b1[26]~25_combout\) # (\NotA~input_o\ $ (\A[26]~input_o\)))) # (!\add|rippleAdder:25:RippleAdder|Cout~0_combout\ & (\b1[26]~25_combout\ & 
-- (\NotA~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:25:RippleAdder|Cout~0_combout\,
	datab => \b1[26]~25_combout\,
	datac => \NotA~input_o\,
	datad => \A[26]~input_o\,
	combout => \add|rippleAdder:26:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X16_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X19_Y69_N2
\b1[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[27]~26_combout\ = \B[27]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[27]~26_combout\);

-- Location: LCCOMB_X19_Y69_N28
\add|rippleAdder:27:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:27:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:26:RippleAdder|Cout~0_combout\ $ (\A[27]~input_o\ $ (\b1[27]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:26:RippleAdder|Cout~0_combout\,
	datac => \A[27]~input_o\,
	datad => \b1[27]~26_combout\,
	combout => \add|rippleAdder:27:RippleAdder|S~combout\);

-- Location: LCCOMB_X19_Y69_N30
\add|rippleAdder:27:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:27:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:26:RippleAdder|Cout~0_combout\ & ((\b1[27]~26_combout\) # (\NotA~input_o\ $ (\A[27]~input_o\)))) # (!\add|rippleAdder:26:RippleAdder|Cout~0_combout\ & (\b1[27]~26_combout\ & 
-- (\NotA~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:26:RippleAdder|Cout~0_combout\,
	datac => \A[27]~input_o\,
	datad => \b1[27]~26_combout\,
	combout => \add|rippleAdder:27:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X20_Y73_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X19_Y69_N8
\b1[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[28]~27_combout\ = \AddnSub~input_o\ $ (\B[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[28]~input_o\,
	combout => \b1[28]~27_combout\);

-- Location: IOIBUF_X11_Y73_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X19_Y69_N26
\add|rippleAdder:28:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:28:RippleAdder|S~combout\ = \add|rippleAdder:27:RippleAdder|Cout~0_combout\ $ (\b1[28]~27_combout\ $ (\NotA~input_o\ $ (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:27:RippleAdder|Cout~0_combout\,
	datab => \b1[28]~27_combout\,
	datac => \NotA~input_o\,
	datad => \A[28]~input_o\,
	combout => \add|rippleAdder:28:RippleAdder|S~combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X19_Y69_N12
\add|rippleAdder:28:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:28:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:27:RippleAdder|Cout~0_combout\ & ((\b1[28]~27_combout\) # (\NotA~input_o\ $ (\A[28]~input_o\)))) # (!\add|rippleAdder:27:RippleAdder|Cout~0_combout\ & (\b1[28]~27_combout\ & 
-- (\NotA~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:27:RippleAdder|Cout~0_combout\,
	datab => \b1[28]~27_combout\,
	datac => \NotA~input_o\,
	datad => \A[28]~input_o\,
	combout => \add|rippleAdder:28:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X55_Y69_N8
\b1[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[29]~28_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[29]~28_combout\);

-- Location: LCCOMB_X55_Y69_N26
\add|rippleAdder:29:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:29:RippleAdder|S~combout\ = \A[29]~input_o\ $ (\add|rippleAdder:28:RippleAdder|Cout~0_combout\ $ (\b1[29]~28_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \add|rippleAdder:28:RippleAdder|Cout~0_combout\,
	datac => \b1[29]~28_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:29:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N12
\add|rippleAdder:29:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:29:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:28:RippleAdder|Cout~0_combout\ & ((\b1[29]~28_combout\) # (\A[29]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:28:RippleAdder|Cout~0_combout\ & (\b1[29]~28_combout\ & 
-- (\A[29]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \add|rippleAdder:28:RippleAdder|Cout~0_combout\,
	datac => \b1[29]~28_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:29:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X55_Y69_N22
\b1[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[30]~29_combout\ = \B[30]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[30]~29_combout\);

-- Location: LCCOMB_X55_Y69_N0
\add|rippleAdder:30:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:30:RippleAdder|S~combout\ = \add|rippleAdder:29:RippleAdder|Cout~0_combout\ $ (\A[30]~input_o\ $ (\b1[30]~29_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:29:RippleAdder|Cout~0_combout\,
	datab => \A[30]~input_o\,
	datac => \b1[30]~29_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:30:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N2
\add|rippleAdder:30:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:30:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:29:RippleAdder|Cout~0_combout\ & ((\b1[30]~29_combout\) # (\A[30]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:29:RippleAdder|Cout~0_combout\ & (\b1[30]~29_combout\ & 
-- (\A[30]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:29:RippleAdder|Cout~0_combout\,
	datab => \A[30]~input_o\,
	datac => \b1[30]~29_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:30:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X54_Y73_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X55_Y69_N28
\b1[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[31]~30_combout\ = \B[31]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[31]~30_combout\);

-- Location: IOIBUF_X52_Y73_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X55_Y69_N6
\add|rippleAdder:31:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:31:RippleAdder|S~combout\ = \add|rippleAdder:30:RippleAdder|Cout~0_combout\ $ (\b1[31]~30_combout\ $ (\A[31]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:30:RippleAdder|Cout~0_combout\,
	datab => \b1[31]~30_combout\,
	datac => \A[31]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:31:RippleAdder|S~combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X55_Y69_N10
\b1[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[32]~31_combout\ = \B[32]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[32]~31_combout\);

-- Location: LCCOMB_X55_Y69_N24
\add|rippleAdder:31:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:31:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:30:RippleAdder|Cout~0_combout\ & ((\b1[31]~30_combout\) # (\A[31]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:30:RippleAdder|Cout~0_combout\ & (\b1[31]~30_combout\ & 
-- (\A[31]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:30:RippleAdder|Cout~0_combout\,
	datab => \b1[31]~30_combout\,
	datac => \A[31]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:31:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X55_Y69_N4
\add|rippleAdder:32:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:32:RippleAdder|S~combout\ = \b1[32]~31_combout\ $ (\add|rippleAdder:31:RippleAdder|Cout~0_combout\ $ (\A[32]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[32]~31_combout\,
	datab => \add|rippleAdder:31:RippleAdder|Cout~0_combout\,
	datac => \A[32]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:32:RippleAdder|S~combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X55_Y69_N16
\b1[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[33]~32_combout\ = \B[33]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[33]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[33]~32_combout\);

-- Location: LCCOMB_X55_Y69_N30
\add|rippleAdder:32:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:32:RippleAdder|Cout~0_combout\ = (\b1[32]~31_combout\ & ((\add|rippleAdder:31:RippleAdder|Cout~0_combout\) # (\A[32]~input_o\ $ (\NotA~input_o\)))) # (!\b1[32]~31_combout\ & (\add|rippleAdder:31:RippleAdder|Cout~0_combout\ & 
-- (\A[32]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[32]~31_combout\,
	datab => \add|rippleAdder:31:RippleAdder|Cout~0_combout\,
	datac => \A[32]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:32:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N18
\add|rippleAdder:33:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:33:RippleAdder|S~combout\ = \A[33]~input_o\ $ (\b1[33]~32_combout\ $ (\add|rippleAdder:32:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \b1[33]~32_combout\,
	datac => \add|rippleAdder:32:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:33:RippleAdder|S~combout\);

-- Location: LCCOMB_X55_Y69_N20
\add|rippleAdder:33:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:33:RippleAdder|Cout~0_combout\ = (\b1[33]~32_combout\ & ((\add|rippleAdder:32:RippleAdder|Cout~0_combout\) # (\A[33]~input_o\ $ (\NotA~input_o\)))) # (!\b1[33]~32_combout\ & (\add|rippleAdder:32:RippleAdder|Cout~0_combout\ & 
-- (\A[33]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \b1[33]~32_combout\,
	datac => \add|rippleAdder:32:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:33:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X47_Y73_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X47_Y69_N8
\b1[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[34]~33_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[34]~input_o\,
	combout => \b1[34]~33_combout\);

-- Location: LCCOMB_X47_Y69_N2
\add|rippleAdder:34:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:34:RippleAdder|S~combout\ = \add|rippleAdder:33:RippleAdder|Cout~0_combout\ $ (\A[34]~input_o\ $ (\b1[34]~33_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:33:RippleAdder|Cout~0_combout\,
	datab => \A[34]~input_o\,
	datac => \b1[34]~33_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:34:RippleAdder|S~combout\);

-- Location: LCCOMB_X47_Y69_N12
\add|rippleAdder:34:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:34:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:33:RippleAdder|Cout~0_combout\ & ((\b1[34]~33_combout\) # (\A[34]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:33:RippleAdder|Cout~0_combout\ & (\b1[34]~33_combout\ & 
-- (\A[34]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:33:RippleAdder|Cout~0_combout\,
	datab => \A[34]~input_o\,
	datac => \b1[34]~33_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:34:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X47_Y69_N30
\b1[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[35]~34_combout\ = \B[35]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[35]~34_combout\);

-- Location: LCCOMB_X47_Y69_N0
\add|rippleAdder:35:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:35:RippleAdder|S~combout\ = \add|rippleAdder:34:RippleAdder|Cout~0_combout\ $ (\A[35]~input_o\ $ (\b1[35]~34_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:34:RippleAdder|Cout~0_combout\,
	datab => \A[35]~input_o\,
	datac => \b1[35]~34_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:35:RippleAdder|S~combout\);

-- Location: IOIBUF_X38_Y73_N22
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X47_Y69_N18
\add|rippleAdder:35:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:35:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:34:RippleAdder|Cout~0_combout\ & ((\b1[35]~34_combout\) # (\A[35]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:34:RippleAdder|Cout~0_combout\ & (\b1[35]~34_combout\ & 
-- (\A[35]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:34:RippleAdder|Cout~0_combout\,
	datab => \A[35]~input_o\,
	datac => \b1[35]~34_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:35:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X58_Y0_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X47_Y69_N4
\b1[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[36]~35_combout\ = \AddnSub~input_o\ $ (\B[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[36]~input_o\,
	combout => \b1[36]~35_combout\);

-- Location: LCCOMB_X47_Y69_N6
\add|rippleAdder:36:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:36:RippleAdder|S~combout\ = \A[36]~input_o\ $ (\add|rippleAdder:35:RippleAdder|Cout~0_combout\ $ (\b1[36]~35_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \add|rippleAdder:35:RippleAdder|Cout~0_combout\,
	datac => \b1[36]~35_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:36:RippleAdder|S~combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X47_Y69_N10
\b1[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[37]~36_combout\ = \B[37]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[37]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[37]~36_combout\);

-- Location: LCCOMB_X47_Y69_N24
\add|rippleAdder:36:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:36:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:35:RippleAdder|Cout~0_combout\ & ((\b1[36]~35_combout\) # (\A[36]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:35:RippleAdder|Cout~0_combout\ & (\b1[36]~35_combout\ & 
-- (\A[36]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \add|rippleAdder:35:RippleAdder|Cout~0_combout\,
	datac => \b1[36]~35_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:36:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X23_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X47_Y69_N20
\add|rippleAdder:37:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:37:RippleAdder|S~combout\ = \b1[37]~36_combout\ $ (\add|rippleAdder:36:RippleAdder|Cout~0_combout\ $ (\A[37]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[37]~36_combout\,
	datab => \add|rippleAdder:36:RippleAdder|Cout~0_combout\,
	datac => \A[37]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:37:RippleAdder|S~combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X46_Y69_N10
\b1[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[38]~37_combout\ = \AddnSub~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \b1[38]~37_combout\);

-- Location: LCCOMB_X47_Y69_N22
\add|rippleAdder:37:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:37:RippleAdder|Cout~0_combout\ = (\b1[37]~36_combout\ & ((\add|rippleAdder:36:RippleAdder|Cout~0_combout\) # (\A[37]~input_o\ $ (\NotA~input_o\)))) # (!\b1[37]~36_combout\ & (\add|rippleAdder:36:RippleAdder|Cout~0_combout\ & 
-- (\A[37]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[37]~36_combout\,
	datab => \add|rippleAdder:36:RippleAdder|Cout~0_combout\,
	datac => \A[37]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:37:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X42_Y73_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X46_Y69_N4
\add|rippleAdder:38:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:38:RippleAdder|S~combout\ = \b1[38]~37_combout\ $ (\add|rippleAdder:37:RippleAdder|Cout~0_combout\ $ (\A[38]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[38]~37_combout\,
	datab => \add|rippleAdder:37:RippleAdder|Cout~0_combout\,
	datac => \A[38]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:38:RippleAdder|S~combout\);

-- Location: LCCOMB_X46_Y69_N6
\add|rippleAdder:38:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:38:RippleAdder|Cout~0_combout\ = (\b1[38]~37_combout\ & ((\add|rippleAdder:37:RippleAdder|Cout~0_combout\) # (\A[38]~input_o\ $ (\NotA~input_o\)))) # (!\b1[38]~37_combout\ & (\add|rippleAdder:37:RippleAdder|Cout~0_combout\ & 
-- (\A[38]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[38]~37_combout\,
	datab => \add|rippleAdder:37:RippleAdder|Cout~0_combout\,
	datac => \A[38]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:38:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X45_Y73_N8
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X46_Y69_N8
\b1[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[39]~38_combout\ = \AddnSub~input_o\ $ (\B[39]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[39]~input_o\,
	combout => \b1[39]~38_combout\);

-- Location: LCCOMB_X46_Y69_N26
\add|rippleAdder:39:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:39:RippleAdder|S~combout\ = \add|rippleAdder:38:RippleAdder|Cout~0_combout\ $ (\A[39]~input_o\ $ (\b1[39]~38_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:38:RippleAdder|Cout~0_combout\,
	datab => \A[39]~input_o\,
	datac => \b1[39]~38_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:39:RippleAdder|S~combout\);

-- Location: LCCOMB_X47_Y69_N16
\add|rippleAdder:39:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:39:RippleAdder|Cout~0_combout\ = (\b1[39]~38_combout\ & ((\add|rippleAdder:38:RippleAdder|Cout~0_combout\) # (\A[39]~input_o\ $ (\NotA~input_o\)))) # (!\b1[39]~38_combout\ & (\add|rippleAdder:38:RippleAdder|Cout~0_combout\ & 
-- (\A[39]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[39]~38_combout\,
	datab => \A[39]~input_o\,
	datac => \add|rippleAdder:38:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:39:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X107_Y73_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X105_Y69_N16
\b1[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[40]~39_combout\ = \B[40]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[40]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[40]~39_combout\);

-- Location: IOIBUF_X107_Y73_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X105_Y69_N10
\add|rippleAdder:40:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:40:RippleAdder|S~combout\ = \add|rippleAdder:39:RippleAdder|Cout~0_combout\ $ (\b1[40]~39_combout\ $ (\NotA~input_o\ $ (\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:39:RippleAdder|Cout~0_combout\,
	datab => \b1[40]~39_combout\,
	datac => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \add|rippleAdder:40:RippleAdder|S~combout\);

-- Location: IOIBUF_X115_Y54_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X105_Y69_N30
\b1[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[41]~40_combout\ = \AddnSub~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[41]~input_o\,
	combout => \b1[41]~40_combout\);

-- Location: LCCOMB_X105_Y69_N4
\add|rippleAdder:40:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:40:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:39:RippleAdder|Cout~0_combout\ & ((\b1[40]~39_combout\) # (\NotA~input_o\ $ (\A[40]~input_o\)))) # (!\add|rippleAdder:39:RippleAdder|Cout~0_combout\ & (\b1[40]~39_combout\ & 
-- (\NotA~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:39:RippleAdder|Cout~0_combout\,
	datab => \b1[40]~39_combout\,
	datac => \NotA~input_o\,
	datad => \A[40]~input_o\,
	combout => \add|rippleAdder:40:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X105_Y73_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X105_Y69_N24
\add|rippleAdder:41:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:41:RippleAdder|S~combout\ = \b1[41]~40_combout\ $ (\add|rippleAdder:40:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[41]~40_combout\,
	datab => \add|rippleAdder:40:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[41]~input_o\,
	combout => \add|rippleAdder:41:RippleAdder|S~combout\);

-- Location: LCCOMB_X105_Y69_N26
\add|rippleAdder:41:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:41:RippleAdder|Cout~0_combout\ = (\b1[41]~40_combout\ & ((\add|rippleAdder:40:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[41]~input_o\)))) # (!\b1[41]~40_combout\ & (\add|rippleAdder:40:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[41]~40_combout\,
	datab => \add|rippleAdder:40:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \A[41]~input_o\,
	combout => \add|rippleAdder:41:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X107_Y73_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X105_Y69_N28
\b1[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[42]~41_combout\ = \AddnSub~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datad => \B[42]~input_o\,
	combout => \b1[42]~41_combout\);

-- Location: IOIBUF_X105_Y73_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X105_Y69_N6
\add|rippleAdder:42:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:42:RippleAdder|S~combout\ = \add|rippleAdder:41:RippleAdder|Cout~0_combout\ $ (\b1[42]~41_combout\ $ (\NotA~input_o\ $ (\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:41:RippleAdder|Cout~0_combout\,
	datab => \b1[42]~41_combout\,
	datac => \NotA~input_o\,
	datad => \A[42]~input_o\,
	combout => \add|rippleAdder:42:RippleAdder|S~combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X115_Y69_N1
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X105_Y69_N18
\b1[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[43]~42_combout\ = \B[43]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[43]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[43]~42_combout\);

-- Location: LCCOMB_X105_Y69_N0
\add|rippleAdder:42:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:42:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:41:RippleAdder|Cout~0_combout\ & ((\b1[42]~41_combout\) # (\NotA~input_o\ $ (\A[42]~input_o\)))) # (!\add|rippleAdder:41:RippleAdder|Cout~0_combout\ & (\b1[42]~41_combout\ & 
-- (\NotA~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:41:RippleAdder|Cout~0_combout\,
	datab => \b1[42]~41_combout\,
	datac => \NotA~input_o\,
	datad => \A[42]~input_o\,
	combout => \add|rippleAdder:42:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X105_Y69_N12
\add|rippleAdder:43:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:43:RippleAdder|S~combout\ = \A[43]~input_o\ $ (\b1[43]~42_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:42:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \b1[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:42:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:43:RippleAdder|S~combout\);

-- Location: IOIBUF_X115_Y55_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X114_Y62_N16
\b1[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[44]~43_combout\ = \B[44]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[44]~43_combout\);

-- Location: LCCOMB_X105_Y69_N22
\add|rippleAdder:43:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:43:RippleAdder|Cout~0_combout\ = (\b1[43]~42_combout\ & ((\add|rippleAdder:42:RippleAdder|Cout~0_combout\) # (\A[43]~input_o\ $ (\NotA~input_o\)))) # (!\b1[43]~42_combout\ & (\add|rippleAdder:42:RippleAdder|Cout~0_combout\ & 
-- (\A[43]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \b1[43]~42_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:42:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:43:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X115_Y62_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X114_Y62_N10
\add|rippleAdder:44:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:44:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[44]~43_combout\ $ (\add|rippleAdder:43:RippleAdder|Cout~0_combout\ $ (\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[44]~43_combout\,
	datac => \add|rippleAdder:43:RippleAdder|Cout~0_combout\,
	datad => \A[44]~input_o\,
	combout => \add|rippleAdder:44:RippleAdder|S~combout\);

-- Location: LCCOMB_X114_Y62_N20
\add|rippleAdder:44:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:44:RippleAdder|Cout~0_combout\ = (\b1[44]~43_combout\ & ((\add|rippleAdder:43:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[44]~input_o\)))) # (!\b1[44]~43_combout\ & (\add|rippleAdder:43:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[44]~43_combout\,
	datac => \add|rippleAdder:43:RippleAdder|Cout~0_combout\,
	datad => \A[44]~input_o\,
	combout => \add|rippleAdder:44:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X115_Y58_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X114_Y62_N14
\b1[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[45]~44_combout\ = \AddnSub~input_o\ $ (\B[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \b1[45]~44_combout\);

-- Location: IOIBUF_X115_Y59_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X114_Y62_N0
\add|rippleAdder:45:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:45:RippleAdder|S~combout\ = \NotA~input_o\ $ (\add|rippleAdder:44:RippleAdder|Cout~0_combout\ $ (\b1[45]~44_combout\ $ (\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:44:RippleAdder|Cout~0_combout\,
	datac => \b1[45]~44_combout\,
	datad => \A[45]~input_o\,
	combout => \add|rippleAdder:45:RippleAdder|S~combout\);

-- Location: IOIBUF_X115_Y62_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X114_Y62_N26
\add|rippleAdder:45:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:45:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:44:RippleAdder|Cout~0_combout\ & ((\b1[45]~44_combout\) # (\NotA~input_o\ $ (\A[45]~input_o\)))) # (!\add|rippleAdder:44:RippleAdder|Cout~0_combout\ & (\b1[45]~44_combout\ & 
-- (\NotA~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \add|rippleAdder:44:RippleAdder|Cout~0_combout\,
	datac => \b1[45]~44_combout\,
	datad => \A[45]~input_o\,
	combout => \add|rippleAdder:45:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X115_Y55_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X114_Y62_N12
\b1[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[46]~45_combout\ = \B[46]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[46]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[46]~45_combout\);

-- Location: LCCOMB_X114_Y62_N22
\add|rippleAdder:46:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:46:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[46]~input_o\ $ (\add|rippleAdder:45:RippleAdder|Cout~0_combout\ $ (\b1[46]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[46]~input_o\,
	datac => \add|rippleAdder:45:RippleAdder|Cout~0_combout\,
	datad => \b1[46]~45_combout\,
	combout => \add|rippleAdder:46:RippleAdder|S~combout\);

-- Location: IOIBUF_X115_Y51_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X114_Y62_N8
\add|rippleAdder:46:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:46:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:45:RippleAdder|Cout~0_combout\ & ((\b1[46]~45_combout\) # (\NotA~input_o\ $ (\A[46]~input_o\)))) # (!\add|rippleAdder:45:RippleAdder|Cout~0_combout\ & (\b1[46]~45_combout\ & 
-- (\NotA~input_o\ $ (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[46]~input_o\,
	datac => \add|rippleAdder:45:RippleAdder|Cout~0_combout\,
	datad => \b1[46]~45_combout\,
	combout => \add|rippleAdder:46:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X115_Y59_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X114_Y62_N18
\b1[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[47]~46_combout\ = \AddnSub~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[47]~input_o\,
	combout => \b1[47]~46_combout\);

-- Location: LCCOMB_X114_Y62_N4
\add|rippleAdder:47:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:47:RippleAdder|S~combout\ = \NotA~input_o\ $ (\A[47]~input_o\ $ (\add|rippleAdder:46:RippleAdder|Cout~0_combout\ $ (\b1[47]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[47]~input_o\,
	datac => \add|rippleAdder:46:RippleAdder|Cout~0_combout\,
	datad => \b1[47]~46_combout\,
	combout => \add|rippleAdder:47:RippleAdder|S~combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X114_Y62_N24
\b1[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[48]~47_combout\ = \B[48]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[48]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[48]~47_combout\);

-- Location: LCCOMB_X114_Y62_N30
\add|rippleAdder:47:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:47:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:46:RippleAdder|Cout~0_combout\ & ((\b1[47]~46_combout\) # (\NotA~input_o\ $ (\A[47]~input_o\)))) # (!\add|rippleAdder:46:RippleAdder|Cout~0_combout\ & (\b1[47]~46_combout\ & 
-- (\NotA~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \A[47]~input_o\,
	datac => \add|rippleAdder:46:RippleAdder|Cout~0_combout\,
	datad => \b1[47]~46_combout\,
	combout => \add|rippleAdder:47:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X115_Y62_N22
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: LCCOMB_X114_Y62_N2
\add|rippleAdder:48:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:48:RippleAdder|S~combout\ = \NotA~input_o\ $ (\b1[48]~47_combout\ $ (\add|rippleAdder:47:RippleAdder|Cout~0_combout\ $ (\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[48]~47_combout\,
	datac => \add|rippleAdder:47:RippleAdder|Cout~0_combout\,
	datad => \A[48]~input_o\,
	combout => \add|rippleAdder:48:RippleAdder|S~combout\);

-- Location: IOIBUF_X96_Y73_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X96_Y69_N0
\b1[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[49]~48_combout\ = \B[49]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[49]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[49]~48_combout\);

-- Location: LCCOMB_X114_Y62_N28
\add|rippleAdder:48:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:48:RippleAdder|Cout~0_combout\ = (\b1[48]~47_combout\ & ((\add|rippleAdder:47:RippleAdder|Cout~0_combout\) # (\NotA~input_o\ $ (\A[48]~input_o\)))) # (!\b1[48]~47_combout\ & (\add|rippleAdder:47:RippleAdder|Cout~0_combout\ & 
-- (\NotA~input_o\ $ (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NotA~input_o\,
	datab => \b1[48]~47_combout\,
	datac => \add|rippleAdder:47:RippleAdder|Cout~0_combout\,
	datad => \A[48]~input_o\,
	combout => \add|rippleAdder:48:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X96_Y69_N10
\add|rippleAdder:49:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:49:RippleAdder|S~combout\ = \A[49]~input_o\ $ (\b1[49]~48_combout\ $ (\add|rippleAdder:48:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \b1[49]~48_combout\,
	datac => \add|rippleAdder:48:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:49:RippleAdder|S~combout\);

-- Location: IOIBUF_X102_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X96_Y69_N4
\add|rippleAdder:49:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:49:RippleAdder|Cout~0_combout\ = (\b1[49]~48_combout\ & ((\add|rippleAdder:48:RippleAdder|Cout~0_combout\) # (\A[49]~input_o\ $ (\NotA~input_o\)))) # (!\b1[49]~48_combout\ & (\add|rippleAdder:48:RippleAdder|Cout~0_combout\ & 
-- (\A[49]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \b1[49]~48_combout\,
	datac => \add|rippleAdder:48:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:49:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X96_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X96_Y69_N14
\b1[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[50]~49_combout\ = \B[50]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[50]~49_combout\);

-- Location: LCCOMB_X96_Y69_N24
\add|rippleAdder:50:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:50:RippleAdder|S~combout\ = \A[50]~input_o\ $ (\add|rippleAdder:49:RippleAdder|Cout~0_combout\ $ (\b1[50]~49_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \add|rippleAdder:49:RippleAdder|Cout~0_combout\,
	datac => \b1[50]~49_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:50:RippleAdder|S~combout\);

-- Location: IOIBUF_X98_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X100_Y73_N22
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X96_Y69_N20
\b1[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[51]~50_combout\ = \B[51]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[51]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[51]~50_combout\);

-- Location: LCCOMB_X96_Y69_N26
\add|rippleAdder:50:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:50:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:49:RippleAdder|Cout~0_combout\ & ((\b1[50]~49_combout\) # (\A[50]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:49:RippleAdder|Cout~0_combout\ & (\b1[50]~49_combout\ & 
-- (\A[50]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \add|rippleAdder:49:RippleAdder|Cout~0_combout\,
	datac => \b1[50]~49_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:50:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X96_Y69_N6
\add|rippleAdder:51:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:51:RippleAdder|S~combout\ = \A[51]~input_o\ $ (\b1[51]~50_combout\ $ (\add|rippleAdder:50:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \b1[51]~50_combout\,
	datac => \add|rippleAdder:50:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:51:RippleAdder|S~combout\);

-- Location: IOIBUF_X98_Y73_N22
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X96_Y69_N2
\b1[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[52]~51_combout\ = \B[52]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[52]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \b1[52]~51_combout\);

-- Location: LCCOMB_X96_Y69_N8
\add|rippleAdder:51:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:51:RippleAdder|Cout~0_combout\ = (\b1[51]~50_combout\ & ((\add|rippleAdder:50:RippleAdder|Cout~0_combout\) # (\A[51]~input_o\ $ (\NotA~input_o\)))) # (!\b1[51]~50_combout\ & (\add|rippleAdder:50:RippleAdder|Cout~0_combout\ & 
-- (\A[51]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \b1[51]~50_combout\,
	datac => \add|rippleAdder:50:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:51:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X96_Y69_N12
\add|rippleAdder:52:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:52:RippleAdder|S~combout\ = \A[52]~input_o\ $ (\b1[52]~51_combout\ $ (\add|rippleAdder:51:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \b1[52]~51_combout\,
	datac => \add|rippleAdder:51:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:52:RippleAdder|S~combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X96_Y69_N30
\add|rippleAdder:52:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:52:RippleAdder|Cout~0_combout\ = (\b1[52]~51_combout\ & ((\add|rippleAdder:51:RippleAdder|Cout~0_combout\) # (\A[52]~input_o\ $ (\NotA~input_o\)))) # (!\b1[52]~51_combout\ & (\add|rippleAdder:51:RippleAdder|Cout~0_combout\ & 
-- (\A[52]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \b1[52]~51_combout\,
	datac => \add|rippleAdder:51:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:52:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X89_Y73_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X88_Y69_N8
\b1[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[53]~52_combout\ = \B[53]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[53]~52_combout\);

-- Location: LCCOMB_X88_Y69_N2
\add|rippleAdder:53:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:53:RippleAdder|S~combout\ = \A[53]~input_o\ $ (\add|rippleAdder:52:RippleAdder|Cout~0_combout\ $ (\b1[53]~52_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \add|rippleAdder:52:RippleAdder|Cout~0_combout\,
	datac => \b1[53]~52_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:53:RippleAdder|S~combout\);

-- Location: IOIBUF_X83_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X88_Y69_N6
\b1[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[54]~53_combout\ = \AddnSub~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[54]~input_o\,
	combout => \b1[54]~53_combout\);

-- Location: LCCOMB_X88_Y69_N28
\add|rippleAdder:53:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:53:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:52:RippleAdder|Cout~0_combout\ & ((\b1[53]~52_combout\) # (\A[53]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:52:RippleAdder|Cout~0_combout\ & (\b1[53]~52_combout\ & 
-- (\A[53]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \add|rippleAdder:52:RippleAdder|Cout~0_combout\,
	datac => \b1[53]~52_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:53:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X87_Y73_N22
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X88_Y69_N16
\add|rippleAdder:54:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:54:RippleAdder|S~combout\ = \b1[54]~53_combout\ $ (\add|rippleAdder:53:RippleAdder|Cout~0_combout\ $ (\A[54]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[54]~53_combout\,
	datab => \add|rippleAdder:53:RippleAdder|Cout~0_combout\,
	datac => \A[54]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:54:RippleAdder|S~combout\);

-- Location: LCCOMB_X88_Y69_N10
\add|rippleAdder:54:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:54:RippleAdder|Cout~0_combout\ = (\b1[54]~53_combout\ & ((\add|rippleAdder:53:RippleAdder|Cout~0_combout\) # (\A[54]~input_o\ $ (\NotA~input_o\)))) # (!\b1[54]~53_combout\ & (\add|rippleAdder:53:RippleAdder|Cout~0_combout\ & 
-- (\A[54]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[54]~53_combout\,
	datab => \add|rippleAdder:53:RippleAdder|Cout~0_combout\,
	datac => \A[54]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:54:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X88_Y69_N20
\b1[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[55]~54_combout\ = \AddnSub~input_o\ $ (\B[55]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[55]~input_o\,
	combout => \b1[55]~54_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X88_Y69_N14
\add|rippleAdder:55:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:55:RippleAdder|S~combout\ = \add|rippleAdder:54:RippleAdder|Cout~0_combout\ $ (\b1[55]~54_combout\ $ (\A[55]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:54:RippleAdder|Cout~0_combout\,
	datab => \b1[55]~54_combout\,
	datac => \A[55]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:55:RippleAdder|S~combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X88_Y69_N24
\add|rippleAdder:55:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:55:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:54:RippleAdder|Cout~0_combout\ & ((\b1[55]~54_combout\) # (\A[55]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:54:RippleAdder|Cout~0_combout\ & (\b1[55]~54_combout\ & 
-- (\A[55]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:54:RippleAdder|Cout~0_combout\,
	datab => \b1[55]~54_combout\,
	datac => \A[55]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:55:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X85_Y73_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X88_Y69_N26
\b1[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[56]~55_combout\ = \AddnSub~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[56]~input_o\,
	combout => \b1[56]~55_combout\);

-- Location: LCCOMB_X88_Y69_N4
\add|rippleAdder:56:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:56:RippleAdder|S~combout\ = \A[56]~input_o\ $ (\add|rippleAdder:55:RippleAdder|Cout~0_combout\ $ (\b1[56]~55_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \add|rippleAdder:55:RippleAdder|Cout~0_combout\,
	datac => \b1[56]~55_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:56:RippleAdder|S~combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X88_Y69_N0
\b1[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[57]~56_combout\ = \AddnSub~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[57]~input_o\,
	combout => \b1[57]~56_combout\);

-- Location: LCCOMB_X88_Y69_N22
\add|rippleAdder:56:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:56:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:55:RippleAdder|Cout~0_combout\ & ((\b1[56]~55_combout\) # (\A[56]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:55:RippleAdder|Cout~0_combout\ & (\b1[56]~55_combout\ & 
-- (\A[56]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \add|rippleAdder:55:RippleAdder|Cout~0_combout\,
	datac => \b1[56]~55_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:56:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X88_Y69_N18
\add|rippleAdder:57:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:57:RippleAdder|S~combout\ = \A[57]~input_o\ $ (\b1[57]~56_combout\ $ (\add|rippleAdder:56:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \b1[57]~56_combout\,
	datac => \add|rippleAdder:56:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:57:RippleAdder|S~combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X85_Y69_N24
\b1[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[58]~57_combout\ = \B[58]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[58]~57_combout\);

-- Location: LCCOMB_X88_Y69_N12
\add|rippleAdder:57:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:57:RippleAdder|Cout~0_combout\ = (\b1[57]~56_combout\ & ((\add|rippleAdder:56:RippleAdder|Cout~0_combout\) # (\A[57]~input_o\ $ (\NotA~input_o\)))) # (!\b1[57]~56_combout\ & (\add|rippleAdder:56:RippleAdder|Cout~0_combout\ & 
-- (\A[57]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \b1[57]~56_combout\,
	datac => \add|rippleAdder:56:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:57:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X85_Y69_N18
\add|rippleAdder:58:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:58:RippleAdder|S~combout\ = \A[58]~input_o\ $ (\b1[58]~57_combout\ $ (\NotA~input_o\ $ (\add|rippleAdder:57:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \b1[58]~57_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:57:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:58:RippleAdder|S~combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X85_Y69_N22
\b1[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[59]~58_combout\ = \B[59]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[59]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[59]~58_combout\);

-- Location: IOIBUF_X85_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X85_Y69_N12
\add|rippleAdder:58:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:58:RippleAdder|Cout~0_combout\ = (\b1[58]~57_combout\ & ((\add|rippleAdder:57:RippleAdder|Cout~0_combout\) # (\A[58]~input_o\ $ (\NotA~input_o\)))) # (!\b1[58]~57_combout\ & (\add|rippleAdder:57:RippleAdder|Cout~0_combout\ & 
-- (\A[58]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \b1[58]~57_combout\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:57:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:58:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X85_Y69_N0
\add|rippleAdder:59:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:59:RippleAdder|S~combout\ = \b1[59]~58_combout\ $ (\A[59]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:58:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[59]~58_combout\,
	datab => \A[59]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:58:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:59:RippleAdder|S~combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X85_Y69_N2
\add|rippleAdder:59:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:59:RippleAdder|Cout~0_combout\ = (\b1[59]~58_combout\ & ((\add|rippleAdder:58:RippleAdder|Cout~0_combout\) # (\A[59]~input_o\ $ (\NotA~input_o\)))) # (!\b1[59]~58_combout\ & (\add|rippleAdder:58:RippleAdder|Cout~0_combout\ & 
-- (\A[59]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[59]~58_combout\,
	datab => \A[59]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:58:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:59:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X87_Y73_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X88_Y69_N30
\b1[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[60]~59_combout\ = \AddnSub~input_o\ $ (\B[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[60]~input_o\,
	combout => \b1[60]~59_combout\);

-- Location: LCCOMB_X85_Y69_N4
\add|rippleAdder:60:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:60:RippleAdder|S~combout\ = \A[60]~input_o\ $ (\add|rippleAdder:59:RippleAdder|Cout~0_combout\ $ (\NotA~input_o\ $ (\b1[60]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \add|rippleAdder:59:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[60]~59_combout\,
	combout => \add|rippleAdder:60:RippleAdder|S~combout\);

-- Location: LCCOMB_X85_Y69_N6
\add|rippleAdder:60:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:60:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:59:RippleAdder|Cout~0_combout\ & ((\b1[60]~59_combout\) # (\A[60]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:59:RippleAdder|Cout~0_combout\ & (\b1[60]~59_combout\ & 
-- (\A[60]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \add|rippleAdder:59:RippleAdder|Cout~0_combout\,
	datac => \NotA~input_o\,
	datad => \b1[60]~59_combout\,
	combout => \add|rippleAdder:60:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X85_Y69_N16
\b1[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[61]~60_combout\ = \AddnSub~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AddnSub~input_o\,
	datad => \B[61]~input_o\,
	combout => \b1[61]~60_combout\);

-- Location: LCCOMB_X85_Y69_N10
\add|rippleAdder:61:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:61:RippleAdder|S~combout\ = \add|rippleAdder:60:RippleAdder|Cout~0_combout\ $ (\A[61]~input_o\ $ (\NotA~input_o\ $ (\b1[61]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:60:RippleAdder|Cout~0_combout\,
	datab => \A[61]~input_o\,
	datac => \NotA~input_o\,
	datad => \b1[61]~60_combout\,
	combout => \add|rippleAdder:61:RippleAdder|S~combout\);

-- Location: IOIBUF_X81_Y73_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X85_Y69_N30
\b1[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[62]~61_combout\ = \B[62]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[62]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[62]~61_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X85_Y69_N20
\add|rippleAdder:61:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:61:RippleAdder|Cout~0_combout\ = (\add|rippleAdder:60:RippleAdder|Cout~0_combout\ & ((\b1[61]~60_combout\) # (\A[61]~input_o\ $ (\NotA~input_o\)))) # (!\add|rippleAdder:60:RippleAdder|Cout~0_combout\ & (\b1[61]~60_combout\ & 
-- (\A[61]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:60:RippleAdder|Cout~0_combout\,
	datab => \A[61]~input_o\,
	datac => \NotA~input_o\,
	datad => \b1[61]~60_combout\,
	combout => \add|rippleAdder:61:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X85_Y69_N8
\add|rippleAdder:62:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:62:RippleAdder|S~combout\ = \b1[62]~61_combout\ $ (\A[62]~input_o\ $ (\NotA~input_o\ $ (\add|rippleAdder:61:RippleAdder|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[62]~61_combout\,
	datab => \A[62]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:61:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:62:RippleAdder|S~combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X85_Y69_N28
\b1[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \b1[63]~62_combout\ = \B[63]~input_o\ $ (\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \b1[63]~62_combout\);

-- Location: LCCOMB_X85_Y69_N26
\add|rippleAdder:62:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:62:RippleAdder|Cout~0_combout\ = (\b1[62]~61_combout\ & ((\add|rippleAdder:61:RippleAdder|Cout~0_combout\) # (\A[62]~input_o\ $ (\NotA~input_o\)))) # (!\b1[62]~61_combout\ & (\add|rippleAdder:61:RippleAdder|Cout~0_combout\ & 
-- (\A[62]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[62]~61_combout\,
	datab => \A[62]~input_o\,
	datac => \NotA~input_o\,
	datad => \add|rippleAdder:61:RippleAdder|Cout~0_combout\,
	combout => \add|rippleAdder:62:RippleAdder|Cout~0_combout\);

-- Location: IOIBUF_X31_Y73_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X47_Y69_N26
\add|rippleAdder:63:RippleAdder|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:63:RippleAdder|S~combout\ = \b1[63]~62_combout\ $ (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ $ (\A[63]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[63]~62_combout\,
	datab => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datac => \A[63]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:63:RippleAdder|S~combout\);

-- Location: IOIBUF_X113_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X61_Y69_N16
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:32:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:32:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X61_Y69_N18
\output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:33:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:33:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~1_combout\);

-- Location: LCCOMB_X61_Y69_N20
\output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:34:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:34:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X61_Y69_N14
\output~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:35:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:35:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X61_Y69_N24
\output~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:36:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:36:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~4_combout\);

-- Location: LCCOMB_X61_Y69_N2
\output~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:37:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \ExtWord~input_o\,
	datad => \add|rippleAdder:37:RippleAdder|S~combout\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X61_Y69_N28
\output~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:38:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:38:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X61_Y69_N22
\output~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:39:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:39:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~7_combout\);

-- Location: LCCOMB_X114_Y65_N8
\output~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:40:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:40:RippleAdder|S~combout\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~8_combout\);

-- Location: LCCOMB_X96_Y72_N24
\output~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:41:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:41:RippleAdder|S~combout\,
	combout => \output~9_combout\);

-- Location: LCCOMB_X61_Y69_N0
\output~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:42:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:42:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~10_combout\);

-- Location: LCCOMB_X61_Y69_N10
\output~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~11_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:43:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:43:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~11_combout\);

-- Location: LCCOMB_X114_Y65_N18
\output~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~12_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:44:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:44:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~12_combout\);

-- Location: LCCOMB_X114_Y65_N20
\output~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~13_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:45:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:45:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~13_combout\);

-- Location: LCCOMB_X114_Y65_N14
\output~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~14_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:46:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \add|rippleAdder:46:RippleAdder|S~combout\,
	combout => \output~14_combout\);

-- Location: LCCOMB_X114_Y65_N0
\output~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~15_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:47:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:47:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~15_combout\);

-- Location: LCCOMB_X114_Y65_N10
\output~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~16_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:48:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:48:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~16_combout\);

-- Location: LCCOMB_X114_Y65_N4
\output~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~17_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:49:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:49:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~17_combout\);

-- Location: LCCOMB_X61_Y69_N4
\output~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~18_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:50:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:50:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~18_combout\);

-- Location: LCCOMB_X114_Y65_N22
\output~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~19_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:51:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:51:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~19_combout\);

-- Location: LCCOMB_X114_Y65_N16
\output~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~20_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:52:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:52:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~20_combout\);

-- Location: LCCOMB_X114_Y65_N26
\output~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~21_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:53:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:53:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~21_combout\);

-- Location: LCCOMB_X61_Y69_N6
\output~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~22_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:54:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \add|rippleAdder:54:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~22_combout\);

-- Location: LCCOMB_X114_Y65_N12
\output~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~23_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:55:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:55:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~23_combout\);

-- Location: LCCOMB_X96_Y72_N2
\output~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~24_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:56:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:31:RippleAdder|S~combout\,
	datab => \add|rippleAdder:56:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	combout => \output~24_combout\);

-- Location: LCCOMB_X114_Y65_N6
\output~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~25_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:57:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:57:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~25_combout\);

-- Location: LCCOMB_X61_Y69_N8
\output~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~26_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:58:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:58:RippleAdder|S~combout\,
	datac => \ExtWord~input_o\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \output~26_combout\);

-- Location: LCCOMB_X114_Y65_N24
\output~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~27_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:59:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:59:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~27_combout\);

-- Location: LCCOMB_X114_Y65_N2
\output~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~28_combout\ = (\ExtWord~input_o\ & ((\add|rippleAdder:31:RippleAdder|S~combout\))) # (!\ExtWord~input_o\ & (\add|rippleAdder:60:RippleAdder|S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:60:RippleAdder|S~combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~28_combout\);

-- Location: LCCOMB_X114_Y65_N28
\output~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~29_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:61:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:61:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~29_combout\);

-- Location: LCCOMB_X114_Y65_N30
\output~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~30_combout\ = (\ExtWord~input_o\ & (\add|rippleAdder:31:RippleAdder|S~combout\)) # (!\ExtWord~input_o\ & ((\add|rippleAdder:62:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:62:RippleAdder|S~combout\,
	datad => \ExtWord~input_o\,
	combout => \output~30_combout\);

-- Location: LCCOMB_X66_Y69_N22
\add|rippleAdder:63:RippleAdder|S~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:63:RippleAdder|S~0_combout\ = \B[63]~input_o\ $ (\AddnSub~input_o\ $ (\A[63]~input_o\ $ (\NotA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[63]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:63:RippleAdder|S~0_combout\);

-- Location: LCCOMB_X66_Y69_N8
\output~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~31_combout\ = (\ExtWord~input_o\ & (((\add|rippleAdder:31:RippleAdder|S~combout\)))) # (!\ExtWord~input_o\ & (\add|rippleAdder:63:RippleAdder|S~0_combout\ $ (((\add|rippleAdder:62:RippleAdder|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:63:RippleAdder|S~0_combout\,
	datab => \add|rippleAdder:31:RippleAdder|S~combout\,
	datac => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datad => \ExtWord~input_o\,
	combout => \output~31_combout\);

-- Location: LCCOMB_X47_Y69_N28
\add|rippleAdder:63:RippleAdder|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add|rippleAdder:63:RippleAdder|Cout~0_combout\ = (\b1[63]~62_combout\ & ((\add|rippleAdder:62:RippleAdder|Cout~0_combout\) # (\A[63]~input_o\ $ (\NotA~input_o\)))) # (!\b1[63]~62_combout\ & (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & 
-- (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[63]~62_combout\,
	datab => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datac => \A[63]~input_o\,
	datad => \NotA~input_o\,
	combout => \add|rippleAdder:63:RippleAdder|Cout~0_combout\);

-- Location: LCCOMB_X47_Y69_N14
\internalOvfl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \internalOvfl~2_combout\ = (\b1[63]~62_combout\ & (!\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\)))) # (!\b1[63]~62_combout\ & (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & (\A[63]~input_o\ $ 
-- (!\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1[63]~62_combout\,
	datab => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datac => \A[63]~input_o\,
	datad => \NotA~input_o\,
	combout => \internalOvfl~2_combout\);

-- Location: LCCOMB_X85_Y69_N14
\WideOr0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~19_combout\ = (\add|rippleAdder:61:RippleAdder|S~combout\) # ((\add|rippleAdder:62:RippleAdder|S~combout\) # ((\add|rippleAdder:60:RippleAdder|S~combout\) # (\add|rippleAdder:0:RippleAdder|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:61:RippleAdder|S~combout\,
	datab => \add|rippleAdder:62:RippleAdder|S~combout\,
	datac => \add|rippleAdder:60:RippleAdder|S~combout\,
	datad => \add|rippleAdder:0:RippleAdder|S~0_combout\,
	combout => \WideOr0~19_combout\);

-- Location: LCCOMB_X96_Y69_N18
\WideOr0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~17_combout\ = (\add|rippleAdder:55:RippleAdder|S~combout\) # ((\add|rippleAdder:53:RippleAdder|S~combout\) # ((\add|rippleAdder:54:RippleAdder|S~combout\) # (\add|rippleAdder:52:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:55:RippleAdder|S~combout\,
	datab => \add|rippleAdder:53:RippleAdder|S~combout\,
	datac => \add|rippleAdder:54:RippleAdder|S~combout\,
	datad => \add|rippleAdder:52:RippleAdder|S~combout\,
	combout => \WideOr0~17_combout\);

-- Location: LCCOMB_X96_Y69_N28
\WideOr0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~18_combout\ = (\add|rippleAdder:59:RippleAdder|S~combout\) # ((\add|rippleAdder:58:RippleAdder|S~combout\) # ((\add|rippleAdder:57:RippleAdder|S~combout\) # (\add|rippleAdder:56:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:59:RippleAdder|S~combout\,
	datab => \add|rippleAdder:58:RippleAdder|S~combout\,
	datac => \add|rippleAdder:57:RippleAdder|S~combout\,
	datad => \add|rippleAdder:56:RippleAdder|S~combout\,
	combout => \WideOr0~18_combout\);

-- Location: LCCOMB_X96_Y69_N16
\WideOr0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~16_combout\ = (\add|rippleAdder:51:RippleAdder|S~combout\) # ((\add|rippleAdder:50:RippleAdder|S~combout\) # ((\add|rippleAdder:48:RippleAdder|S~combout\) # (\add|rippleAdder:49:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:51:RippleAdder|S~combout\,
	datab => \add|rippleAdder:50:RippleAdder|S~combout\,
	datac => \add|rippleAdder:48:RippleAdder|S~combout\,
	datad => \add|rippleAdder:49:RippleAdder|S~combout\,
	combout => \WideOr0~16_combout\);

-- Location: LCCOMB_X96_Y69_N22
\WideOr0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~20_combout\ = (\WideOr0~19_combout\) # ((\WideOr0~17_combout\) # ((\WideOr0~18_combout\) # (\WideOr0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~19_combout\,
	datab => \WideOr0~17_combout\,
	datac => \WideOr0~18_combout\,
	datad => \WideOr0~16_combout\,
	combout => \WideOr0~20_combout\);

-- Location: LCCOMB_X46_Y1_N6
\WideOr0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~7_combout\ = (\add|rippleAdder:22:RippleAdder|S~combout\) # ((\add|rippleAdder:20:RippleAdder|S~combout\) # ((\add|rippleAdder:21:RippleAdder|S~combout\) # (\add|rippleAdder:23:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:22:RippleAdder|S~combout\,
	datab => \add|rippleAdder:20:RippleAdder|S~combout\,
	datac => \add|rippleAdder:21:RippleAdder|S~combout\,
	datad => \add|rippleAdder:23:RippleAdder|S~combout\,
	combout => \WideOr0~7_combout\);

-- Location: LCCOMB_X19_Y69_N6
\WideOr0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~8_combout\ = (\add|rippleAdder:25:RippleAdder|S~combout\) # ((\add|rippleAdder:24:RippleAdder|S~combout\) # ((\add|rippleAdder:26:RippleAdder|S~combout\) # (\add|rippleAdder:27:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:25:RippleAdder|S~combout\,
	datab => \add|rippleAdder:24:RippleAdder|S~combout\,
	datac => \add|rippleAdder:26:RippleAdder|S~combout\,
	datad => \add|rippleAdder:27:RippleAdder|S~combout\,
	combout => \WideOr0~8_combout\);

-- Location: LCCOMB_X55_Y69_N14
\WideOr0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~9_combout\ = (\add|rippleAdder:28:RippleAdder|S~combout\) # ((\add|rippleAdder:30:RippleAdder|S~combout\) # ((\add|rippleAdder:29:RippleAdder|S~combout\) # (\add|rippleAdder:31:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:28:RippleAdder|S~combout\,
	datab => \add|rippleAdder:30:RippleAdder|S~combout\,
	datac => \add|rippleAdder:29:RippleAdder|S~combout\,
	datad => \add|rippleAdder:31:RippleAdder|S~combout\,
	combout => \WideOr0~9_combout\);

-- Location: LCCOMB_X73_Y1_N24
\WideOr0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~6_combout\ = (\add|rippleAdder:19:RippleAdder|S~combout\) # ((\add|rippleAdder:18:RippleAdder|S~combout\) # ((\add|rippleAdder:16:RippleAdder|S~combout\) # (\add|rippleAdder:17:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:19:RippleAdder|S~combout\,
	datab => \add|rippleAdder:18:RippleAdder|S~combout\,
	datac => \add|rippleAdder:16:RippleAdder|S~combout\,
	datad => \add|rippleAdder:17:RippleAdder|S~combout\,
	combout => \WideOr0~6_combout\);

-- Location: LCCOMB_X70_Y1_N24
\WideOr0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~10_combout\ = (\WideOr0~7_combout\) # ((\WideOr0~8_combout\) # ((\WideOr0~9_combout\) # (\WideOr0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~7_combout\,
	datab => \WideOr0~8_combout\,
	datac => \WideOr0~9_combout\,
	datad => \WideOr0~6_combout\,
	combout => \WideOr0~10_combout\);

-- Location: LCCOMB_X66_Y1_N14
\WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (\add|rippleAdder:4:RippleAdder|S~combout\) # ((\add|rippleAdder:7:RippleAdder|S~combout\) # ((\add|rippleAdder:6:RippleAdder|S~combout\) # (\add|rippleAdder:5:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:4:RippleAdder|S~combout\,
	datab => \add|rippleAdder:7:RippleAdder|S~combout\,
	datac => \add|rippleAdder:6:RippleAdder|S~combout\,
	datad => \add|rippleAdder:5:RippleAdder|S~combout\,
	combout => \WideOr0~2_combout\);

-- Location: LCCOMB_X82_Y1_N8
\WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (\add|rippleAdder:8:RippleAdder|S~combout\) # ((\add|rippleAdder:10:RippleAdder|S~combout\) # ((\add|rippleAdder:11:RippleAdder|S~combout\) # (\add|rippleAdder:9:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:8:RippleAdder|S~combout\,
	datab => \add|rippleAdder:10:RippleAdder|S~combout\,
	datac => \add|rippleAdder:11:RippleAdder|S~combout\,
	datad => \add|rippleAdder:9:RippleAdder|S~combout\,
	combout => \WideOr0~3_combout\);

-- Location: LCCOMB_X82_Y1_N26
\WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (\add|rippleAdder:13:RippleAdder|S~combout\) # ((\add|rippleAdder:15:RippleAdder|S~combout\) # ((\add|rippleAdder:14:RippleAdder|S~combout\) # (\add|rippleAdder:12:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:13:RippleAdder|S~combout\,
	datab => \add|rippleAdder:15:RippleAdder|S~combout\,
	datac => \add|rippleAdder:14:RippleAdder|S~combout\,
	datad => \add|rippleAdder:12:RippleAdder|S~combout\,
	combout => \WideOr0~4_combout\);

-- Location: LCCOMB_X66_Y69_N18
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\add|rippleAdder:3:RippleAdder|S~combout\) # (\add|rippleAdder:2:RippleAdder|S~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:3:RippleAdder|S~combout\,
	datad => \add|rippleAdder:2:RippleAdder|S~combout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X66_Y69_N28
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\add|rippleAdder:1:RippleAdder|S~combout\) # ((\WideOr0~0_combout\) # (\add|rippleAdder:62:RippleAdder|Cout~0_combout\ $ (\add|rippleAdder:63:RippleAdder|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:1:RippleAdder|S~combout\,
	datab => \WideOr0~0_combout\,
	datac => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datad => \add|rippleAdder:63:RippleAdder|S~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X82_Y1_N28
\WideOr0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~5_combout\ = (\WideOr0~2_combout\) # ((\WideOr0~3_combout\) # ((\WideOr0~4_combout\) # (\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~2_combout\,
	datab => \WideOr0~3_combout\,
	datac => \WideOr0~4_combout\,
	datad => \WideOr0~1_combout\,
	combout => \WideOr0~5_combout\);

-- Location: LCCOMB_X61_Y69_N12
\WideOr0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~12_combout\ = (\add|rippleAdder:38:RippleAdder|S~combout\) # ((\add|rippleAdder:39:RippleAdder|S~combout\) # ((\add|rippleAdder:36:RippleAdder|S~combout\) # (\add|rippleAdder:37:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:38:RippleAdder|S~combout\,
	datab => \add|rippleAdder:39:RippleAdder|S~combout\,
	datac => \add|rippleAdder:36:RippleAdder|S~combout\,
	datad => \add|rippleAdder:37:RippleAdder|S~combout\,
	combout => \WideOr0~12_combout\);

-- Location: LCCOMB_X105_Y69_N8
\WideOr0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~13_combout\ = (\add|rippleAdder:43:RippleAdder|S~combout\) # ((\add|rippleAdder:41:RippleAdder|S~combout\) # ((\add|rippleAdder:42:RippleAdder|S~combout\) # (\add|rippleAdder:40:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:43:RippleAdder|S~combout\,
	datab => \add|rippleAdder:41:RippleAdder|S~combout\,
	datac => \add|rippleAdder:42:RippleAdder|S~combout\,
	datad => \add|rippleAdder:40:RippleAdder|S~combout\,
	combout => \WideOr0~13_combout\);

-- Location: LCCOMB_X61_Y69_N26
\WideOr0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~11_combout\ = (\add|rippleAdder:33:RippleAdder|S~combout\) # ((\add|rippleAdder:35:RippleAdder|S~combout\) # ((\add|rippleAdder:34:RippleAdder|S~combout\) # (\add|rippleAdder:32:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:33:RippleAdder|S~combout\,
	datab => \add|rippleAdder:35:RippleAdder|S~combout\,
	datac => \add|rippleAdder:34:RippleAdder|S~combout\,
	datad => \add|rippleAdder:32:RippleAdder|S~combout\,
	combout => \WideOr0~11_combout\);

-- Location: LCCOMB_X114_Y62_N6
\WideOr0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~14_combout\ = (\add|rippleAdder:44:RippleAdder|S~combout\) # ((\add|rippleAdder:47:RippleAdder|S~combout\) # ((\add|rippleAdder:46:RippleAdder|S~combout\) # (\add|rippleAdder:45:RippleAdder|S~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add|rippleAdder:44:RippleAdder|S~combout\,
	datab => \add|rippleAdder:47:RippleAdder|S~combout\,
	datac => \add|rippleAdder:46:RippleAdder|S~combout\,
	datad => \add|rippleAdder:45:RippleAdder|S~combout\,
	combout => \WideOr0~14_combout\);

-- Location: LCCOMB_X62_Y69_N16
\WideOr0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~15_combout\ = (\WideOr0~12_combout\) # ((\WideOr0~13_combout\) # ((\WideOr0~11_combout\) # (\WideOr0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~12_combout\,
	datab => \WideOr0~13_combout\,
	datac => \WideOr0~11_combout\,
	datad => \WideOr0~14_combout\,
	combout => \WideOr0~15_combout\);

-- Location: LCCOMB_X70_Y1_N18
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~20_combout\) # ((\WideOr0~10_combout\) # ((\WideOr0~5_combout\) # (\WideOr0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~20_combout\,
	datab => \WideOr0~10_combout\,
	datac => \WideOr0~5_combout\,
	datad => \WideOr0~15_combout\,
	combout => \WideOr0~combout\);

-- Location: LCCOMB_X66_Y69_N6
\AltB~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~2_combout\ = (\b1[63]~62_combout\ & ((\A[63]~input_o\ $ (\NotA~input_o\)) # (!\add|rippleAdder:62:RippleAdder|Cout~0_combout\))) # (!\b1[63]~62_combout\ & (!\add|rippleAdder:62:RippleAdder|Cout~0_combout\ & (\A[63]~input_o\ $ (\NotA~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \b1[63]~62_combout\,
	datac => \add|rippleAdder:62:RippleAdder|Cout~0_combout\,
	datad => \NotA~input_o\,
	combout => \AltB~2_combout\);

ww_AddY(0) <= \AddY[0]~output_o\;

ww_AddY(1) <= \AddY[1]~output_o\;

ww_AddY(2) <= \AddY[2]~output_o\;

ww_AddY(3) <= \AddY[3]~output_o\;

ww_AddY(4) <= \AddY[4]~output_o\;

ww_AddY(5) <= \AddY[5]~output_o\;

ww_AddY(6) <= \AddY[6]~output_o\;

ww_AddY(7) <= \AddY[7]~output_o\;

ww_AddY(8) <= \AddY[8]~output_o\;

ww_AddY(9) <= \AddY[9]~output_o\;

ww_AddY(10) <= \AddY[10]~output_o\;

ww_AddY(11) <= \AddY[11]~output_o\;

ww_AddY(12) <= \AddY[12]~output_o\;

ww_AddY(13) <= \AddY[13]~output_o\;

ww_AddY(14) <= \AddY[14]~output_o\;

ww_AddY(15) <= \AddY[15]~output_o\;

ww_AddY(16) <= \AddY[16]~output_o\;

ww_AddY(17) <= \AddY[17]~output_o\;

ww_AddY(18) <= \AddY[18]~output_o\;

ww_AddY(19) <= \AddY[19]~output_o\;

ww_AddY(20) <= \AddY[20]~output_o\;

ww_AddY(21) <= \AddY[21]~output_o\;

ww_AddY(22) <= \AddY[22]~output_o\;

ww_AddY(23) <= \AddY[23]~output_o\;

ww_AddY(24) <= \AddY[24]~output_o\;

ww_AddY(25) <= \AddY[25]~output_o\;

ww_AddY(26) <= \AddY[26]~output_o\;

ww_AddY(27) <= \AddY[27]~output_o\;

ww_AddY(28) <= \AddY[28]~output_o\;

ww_AddY(29) <= \AddY[29]~output_o\;

ww_AddY(30) <= \AddY[30]~output_o\;

ww_AddY(31) <= \AddY[31]~output_o\;

ww_AddY(32) <= \AddY[32]~output_o\;

ww_AddY(33) <= \AddY[33]~output_o\;

ww_AddY(34) <= \AddY[34]~output_o\;

ww_AddY(35) <= \AddY[35]~output_o\;

ww_AddY(36) <= \AddY[36]~output_o\;

ww_AddY(37) <= \AddY[37]~output_o\;

ww_AddY(38) <= \AddY[38]~output_o\;

ww_AddY(39) <= \AddY[39]~output_o\;

ww_AddY(40) <= \AddY[40]~output_o\;

ww_AddY(41) <= \AddY[41]~output_o\;

ww_AddY(42) <= \AddY[42]~output_o\;

ww_AddY(43) <= \AddY[43]~output_o\;

ww_AddY(44) <= \AddY[44]~output_o\;

ww_AddY(45) <= \AddY[45]~output_o\;

ww_AddY(46) <= \AddY[46]~output_o\;

ww_AddY(47) <= \AddY[47]~output_o\;

ww_AddY(48) <= \AddY[48]~output_o\;

ww_AddY(49) <= \AddY[49]~output_o\;

ww_AddY(50) <= \AddY[50]~output_o\;

ww_AddY(51) <= \AddY[51]~output_o\;

ww_AddY(52) <= \AddY[52]~output_o\;

ww_AddY(53) <= \AddY[53]~output_o\;

ww_AddY(54) <= \AddY[54]~output_o\;

ww_AddY(55) <= \AddY[55]~output_o\;

ww_AddY(56) <= \AddY[56]~output_o\;

ww_AddY(57) <= \AddY[57]~output_o\;

ww_AddY(58) <= \AddY[58]~output_o\;

ww_AddY(59) <= \AddY[59]~output_o\;

ww_AddY(60) <= \AddY[60]~output_o\;

ww_AddY(61) <= \AddY[61]~output_o\;

ww_AddY(62) <= \AddY[62]~output_o\;

ww_AddY(63) <= \AddY[63]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


