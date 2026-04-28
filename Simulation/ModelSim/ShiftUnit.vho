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

-- DATE "04/17/2020 17:24:26"

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

ENTITY 	ShiftUnit IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	C : IN std_logic_vector(63 DOWNTO 0);
	Y : OUT std_logic_vector(63 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	ExtWord : IN std_logic
	);
END ShiftUnit;

-- Design Ports Information
-- B[6]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[7]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[8]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[9]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[10]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[11]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[13]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[14]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[15]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[16]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[17]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[18]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[19]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[20]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[21]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[22]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[23]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[24]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[25]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[26]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[27]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[28]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[29]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[30]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[31]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[32]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[33]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[34]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[35]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[36]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[37]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[38]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[39]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[40]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[41]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[42]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[43]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[44]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[45]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[46]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[47]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[48]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[49]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[50]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[51]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[52]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[53]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[54]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[55]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[56]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[57]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[58]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[59]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[60]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[61]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[62]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[63]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftUnit IS
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
SIGNAL ww_C : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ExtWord : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
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
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~48_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[60]~70_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \C[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Y~54_combout\ : std_logic;
SIGNAL \Y~55_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~32_combout\ : std_logic;
SIGNAL \shiftCount[5]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[41]~24_combout\ : std_logic;
SIGNAL \A_s~0_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[9]~1_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[9]~2_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \A_Y1[33]~0_combout\ : std_logic;
SIGNAL \A_Y1[1]~1_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~33_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~0_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[1]~34_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[1]~35_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A_Y1[5]~13_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \A_Y1[37]~12_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~46_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~23_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[13]~24_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[45]~28_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[13]~25_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~47_combout\ : std_logic;
SIGNAL \SRAcircuit|Equal7~0_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[11]~21_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[43]~27_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[11]~22_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A_Y1[35]~10_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~20_combout\ : std_logic;
SIGNAL \A_Y1[3]~11_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[3]~44_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[3]~45_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[8]~15_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[8]~14_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[8]~16_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y3~13_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y3~12_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~14_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~15_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A_Y1[34]~8_combout\ : std_logic;
SIGNAL \A_Y1[2]~9_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~42_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[42]~26_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[10]~18_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[10]~19_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~17_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~43_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~41_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~9_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~16_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A_Y1[4]~7_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A_Y1[36]~6_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~40_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~10_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[12]~11_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[12]~12_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[12]~13_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~41_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~8_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A_Y1[6]~5_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A_Y1[38]~4_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~38_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[14]~8_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[46]~25_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[14]~9_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~7_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~39_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A_Y1[39]~2_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[15]~4_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[15]~5_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[15]~6_combout\ : std_logic;
SIGNAL \A_Y1[7]~3_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~3_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~36_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~37_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~10_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~11_combout\ : std_logic;
SIGNAL \A_Y3[0]~0_combout\ : std_logic;
SIGNAL \A_Y3[0]~1_combout\ : std_logic;
SIGNAL \Y~52_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[34]~24_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[34]~25_combout\ : std_logic;
SIGNAL \SRAcircuit|Equal2~0_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[33]~66_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[33]~67_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[33]~65_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[33]~119_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[41]~63_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[41]~64_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[41]~118_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[33]~35_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[51]~27_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[45]~71_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[45]~72_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[45]~121_combout\ : std_logic;
SIGNAL \SRAcircuit|Equal4~0_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[37]~69_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[37]~70_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[37]~68_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[37]~120_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[33]~36_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[33]~37_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[38]~37_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[38]~38_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[38]~36_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[38]~113_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[46]~34_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[46]~35_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[46]~112_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[34]~28_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[34]~32_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[34]~33_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[34]~31_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[34]~111_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[42]~29_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[42]~30_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[42]~110_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[34]~26_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[34]~29_combout\ : std_logic;
SIGNAL \seA_Y3[20]~0_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[43]~55_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[43]~56_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[43]~114_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[35]~57_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[35]~58_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[35]~59_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[35]~115_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[35]~33_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~49_combout\ : std_logic;
SIGNAL \A_Y1[63]~14_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[47]~117_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[39]~61_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[39]~62_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[39]~60_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[39]~116_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~50_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[35]~34_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[40]~41_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[40]~39_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[40]~40_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[40]~42_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[32]~45_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[32]~44_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[32]~43_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[32]~46_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[32]~30_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[36]~48_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[36]~47_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[36]~49_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[36]~50_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[44]~53_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[44]~51_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[44]~52_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[44]~54_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[32]~31_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[32]~32_combout\ : std_logic;
SIGNAL \seA_Y3[0]~1_combout\ : std_logic;
SIGNAL \seA_Y3[0]~2_combout\ : std_logic;
SIGNAL \A_Y1[61]~27_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~38_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[45]~39_combout\ : std_logic;
SIGNAL \A_Y1[53]~28_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~65_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~66_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[41]~40_combout\ : std_logic;
SIGNAL \A_Y1[57]~29_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[41]~41_combout\ : std_logic;
SIGNAL \A_Y1[49]~30_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~67_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~68_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[33]~69_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~32_combout\ : std_logic;
SIGNAL \A_Y1[48]~22_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[32]~33_combout\ : std_logic;
SIGNAL \A_Y1[56]~21_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~30_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[40]~31_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[28]~58_combout\ : std_logic;
SIGNAL \A_Y1[60]~19_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[44]~28_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[44]~29_combout\ : std_logic;
SIGNAL \A_Y1[52]~20_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~56_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~57_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[32]~59_combout\ : std_logic;
SIGNAL \A_Y1[58]~25_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~36_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[42]~37_combout\ : std_logic;
SIGNAL \A_Y1[50]~26_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~62_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~63_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~34_combout\ : std_logic;
SIGNAL \A_Y1[62]~23_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[46]~35_combout\ : std_logic;
SIGNAL \A_Y1[54]~24_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~60_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~61_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[34]~64_combout\ : std_logic;
SIGNAL \seA_Y3[0]~3_combout\ : std_logic;
SIGNAL \A_Y1[55]~15_combout\ : std_logic;
SIGNAL \A_Y1[47]~16_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~51_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~52_combout\ : std_logic;
SIGNAL \A_Y1[51]~18_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~53_combout\ : std_logic;
SIGNAL \A_Y1[59]~17_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[43]~26_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[43]~27_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~54_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[35]~55_combout\ : std_logic;
SIGNAL \seA_Y3[0]~4_combout\ : std_logic;
SIGNAL \seA_Y3[0]~5_combout\ : std_logic;
SIGNAL \Y~53_combout\ : std_logic;
SIGNAL \Y~56_combout\ : std_logic;
SIGNAL \Y~57_combout\ : std_logic;
SIGNAL \Y~58_combout\ : std_logic;
SIGNAL \Y~61_combout\ : std_logic;
SIGNAL \C[1]~input_o\ : std_logic;
SIGNAL \Y~62_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[36]~38_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~74_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~75_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[36]~39_combout\ : std_logic;
SIGNAL \seA_Y3[1]~6_combout\ : std_logic;
SIGNAL \seA_Y3[1]~7_combout\ : std_logic;
SIGNAL \seA_Y3[1]~8_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~17_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[36]~76_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[36]~77_combout\ : std_logic;
SIGNAL \seA_Y3[1]~9_combout\ : std_logic;
SIGNAL \seA_Y3[1]~10_combout\ : std_logic;
SIGNAL \Y~59_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[25]~73_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[16]~42_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[16]~43_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~44_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~72_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~73_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[16]~74_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[16]~75_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~71_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~20_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~30_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~42_combout\ : std_logic;
SIGNAL \A_Y3[1]~2_combout\ : std_logic;
SIGNAL \A_Y3[1]~3_combout\ : std_logic;
SIGNAL \Y~60_combout\ : std_logic;
SIGNAL \Y~63_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~80_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[37]~82_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[37]~83_combout\ : std_logic;
SIGNAL \seA_Y3[2]~13_combout\ : std_logic;
SIGNAL \seA_Y3[2]~14_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[37]~40_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~81_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[37]~41_combout\ : std_logic;
SIGNAL \seA_Y3[2]~11_combout\ : std_logic;
SIGNAL \seA_Y3[2]~12_combout\ : std_logic;
SIGNAL \seA_Y3[2]~15_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~21_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[17]~45_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[17]~76_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~79_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~212_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~78_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~22_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~43_combout\ : std_logic;
SIGNAL \A_Y3[2]~4_combout\ : std_logic;
SIGNAL \A_Y3[2]~5_combout\ : std_logic;
SIGNAL \Y~65_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~4_combout\ : std_logic;
SIGNAL \Y~369_combout\ : std_logic;
SIGNAL \C[2]~input_o\ : std_logic;
SIGNAL \Y~66_combout\ : std_logic;
SIGNAL \Y~64_combout\ : std_logic;
SIGNAL \Y~67_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~87_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~88_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[38]~43_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[38]~44_combout\ : std_logic;
SIGNAL \seA_Y3[3]~16_combout\ : std_logic;
SIGNAL \seA_Y3[3]~17_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[38]~89_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[38]~90_combout\ : std_logic;
SIGNAL \seA_Y3[3]~18_combout\ : std_logic;
SIGNAL \seA_Y3[3]~19_combout\ : std_logic;
SIGNAL \seA_Y3[3]~20_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[4]~84_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[4]~42_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~213_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[18]~78_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~86_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~44_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~24_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~23_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~25_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~18_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[18]~77_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~85_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~31_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~26_combout\ : std_logic;
SIGNAL \A_Y3[3]~6_combout\ : std_logic;
SIGNAL \A_Y3[3]~7_combout\ : std_logic;
SIGNAL \Y~68_combout\ : std_logic;
SIGNAL \C[3]~input_o\ : std_logic;
SIGNAL \Y~69_combout\ : std_logic;
SIGNAL \Y~70_combout\ : std_logic;
SIGNAL \Y~71_combout\ : std_logic;
SIGNAL \Y~72_combout\ : std_logic;
SIGNAL \Y~73_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~113_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~5_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~10_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~6_combout\ : std_logic;
SIGNAL \Y~74_combout\ : std_logic;
SIGNAL \Y~77_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[5]~94_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[19]~80_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~214_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~91_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[7]~92_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[6]~93_combout\ : std_logic;
SIGNAL \Y~78_combout\ : std_logic;
SIGNAL \Y~79_combout\ : std_logic;
SIGNAL \C[4]~input_o\ : std_logic;
SIGNAL \Y~80_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[5]~48_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[6]~45_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[19]~79_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[7]~46_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[7]~47_combout\ : std_logic;
SIGNAL \Y~75_combout\ : std_logic;
SIGNAL \Y~76_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~95_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~96_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[39]~49_combout\ : std_logic;
SIGNAL \seA_Y3[4]~21_combout\ : std_logic;
SIGNAL \seA_Y3[4]~22_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[39]~97_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[39]~98_combout\ : std_logic;
SIGNAL \seA_Y3[4]~23_combout\ : std_logic;
SIGNAL \seA_Y3[4]~24_combout\ : std_logic;
SIGNAL \seA_Y3[4]~25_combout\ : std_logic;
SIGNAL \Y~81_combout\ : std_logic;
SIGNAL \Y~370_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~101_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~102_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[40]~52_combout\ : std_logic;
SIGNAL \seA_Y3[5]~26_combout\ : std_logic;
SIGNAL \seA_Y3[5]~27_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[40]~103_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[40]~104_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[40]~105_combout\ : std_logic;
SIGNAL \seA_Y3[5]~28_combout\ : std_logic;
SIGNAL \seA_Y3[5]~29_combout\ : std_logic;
SIGNAL \seA_Y3[5]~30_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[20]~83_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~215_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~99_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[8]~100_combout\ : std_logic;
SIGNAL \Y~86_combout\ : std_logic;
SIGNAL \Y~87_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[20]~81_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[20]~82_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[8]~50_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[8]~51_combout\ : std_logic;
SIGNAL \Y~84_combout\ : std_logic;
SIGNAL \Y~85_combout\ : std_logic;
SIGNAL \Y~88_combout\ : std_logic;
SIGNAL \C[5]~input_o\ : std_logic;
SIGNAL \Y~89_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~114_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~11_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~7_combout\ : std_logic;
SIGNAL \Y~82_combout\ : std_logic;
SIGNAL \Y~83_combout\ : std_logic;
SIGNAL \Y~371_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~12_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~8_combout\ : std_logic;
SIGNAL \Y~90_combout\ : std_logic;
SIGNAL \Y~91_combout\ : std_logic;
SIGNAL \C[6]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[21]~86_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~216_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~106_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[9]~107_combout\ : std_logic;
SIGNAL \Y~94_combout\ : std_logic;
SIGNAL \Y~95_combout\ : std_logic;
SIGNAL \Y~96_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[21]~84_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[21]~85_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[9]~53_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[9]~54_combout\ : std_logic;
SIGNAL \Y~92_combout\ : std_logic;
SIGNAL \Y~93_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~108_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~109_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[41]~55_combout\ : std_logic;
SIGNAL \seA_Y3[6]~31_combout\ : std_logic;
SIGNAL \seA_Y3[6]~32_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[41]~110_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[41]~111_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[41]~112_combout\ : std_logic;
SIGNAL \seA_Y3[6]~33_combout\ : std_logic;
SIGNAL \seA_Y3[6]~34_combout\ : std_logic;
SIGNAL \seA_Y3[6]~35_combout\ : std_logic;
SIGNAL \Y~97_combout\ : std_logic;
SIGNAL \Y~372_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~115_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~116_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[42]~58_combout\ : std_logic;
SIGNAL \seA_Y3[7]~36_combout\ : std_logic;
SIGNAL \seA_Y3[7]~37_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[42]~118_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[42]~117_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[42]~119_combout\ : std_logic;
SIGNAL \seA_Y3[7]~38_combout\ : std_logic;
SIGNAL \seA_Y3[7]~39_combout\ : std_logic;
SIGNAL \seA_Y3[7]~40_combout\ : std_logic;
SIGNAL \C[7]~input_o\ : std_logic;
SIGNAL \Y~102_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~217_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[22]~89_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~113_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[10]~114_combout\ : std_logic;
SIGNAL \Y~103_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[22]~87_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[22]~88_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[10]~56_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[10]~57_combout\ : std_logic;
SIGNAL \Y~100_combout\ : std_logic;
SIGNAL \Y~101_combout\ : std_logic;
SIGNAL \Y~104_combout\ : std_logic;
SIGNAL \Y~105_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~13_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~9_combout\ : std_logic;
SIGNAL \Y~98_combout\ : std_logic;
SIGNAL \Y~99_combout\ : std_logic;
SIGNAL \Y~373_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~10_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~14_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[8]~123_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[8]~15_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~11_combout\ : std_logic;
SIGNAL \Y~112_combout\ : std_logic;
SIGNAL \Y~113_combout\ : std_logic;
SIGNAL \C[8]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y1[23]~92_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~218_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~120_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[11]~121_combout\ : std_logic;
SIGNAL \Y~108_combout\ : std_logic;
SIGNAL \Y~109_combout\ : std_logic;
SIGNAL \Y~110_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[23]~90_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[23]~91_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[11]~60_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[11]~59_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[11]~61_combout\ : std_logic;
SIGNAL \Y~106_combout\ : std_logic;
SIGNAL \Y~107_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[44]~122_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[43]~62_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~123_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[43]~124_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[43]~125_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[43]~126_combout\ : std_logic;
SIGNAL \seA_Y3[8]~43_combout\ : std_logic;
SIGNAL \seA_Y3[8]~44_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[43]~63_combout\ : std_logic;
SIGNAL \seA_Y3[8]~41_combout\ : std_logic;
SIGNAL \seA_Y3[8]~42_combout\ : std_logic;
SIGNAL \seA_Y3[8]~45_combout\ : std_logic;
SIGNAL \Y~111_combout\ : std_logic;
SIGNAL \Y~114_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~16_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[9]~124_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[9]~17_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~12_combout\ : std_logic;
SIGNAL \Y~115_combout\ : std_logic;
SIGNAL \C[9]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y2[12]~142_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[24]~93_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~46_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[24]~94_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[12]~64_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[12]~65_combout\ : std_logic;
SIGNAL \Y~116_combout\ : std_logic;
SIGNAL \Y~117_combout\ : std_logic;
SIGNAL \Y~118_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~127_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~128_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[12]~129_combout\ : std_logic;
SIGNAL \Y~119_combout\ : std_logic;
SIGNAL \Y~120_combout\ : std_logic;
SIGNAL \seA_Y3[9]~48_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[44]~131_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~130_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[44]~132_combout\ : std_logic;
SIGNAL \seA_Y3[9]~49_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[44]~66_combout\ : std_logic;
SIGNAL \seA_Y3[9]~46_combout\ : std_logic;
SIGNAL \seA_Y3[9]~47_combout\ : std_logic;
SIGNAL \seA_Y3[9]~50_combout\ : std_logic;
SIGNAL \Y~121_combout\ : std_logic;
SIGNAL \Y~374_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[25]~95_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~47_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[25]~96_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[13]~67_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[13]~68_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[13]~69_combout\ : std_logic;
SIGNAL \Y~124_combout\ : std_logic;
SIGNAL \Y~125_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~133_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~134_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[13]~135_combout\ : std_logic;
SIGNAL \Y~126_combout\ : std_logic;
SIGNAL \Y~127_combout\ : std_logic;
SIGNAL \C[10]~input_o\ : std_logic;
SIGNAL \Y~128_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~136_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[45]~70_combout\ : std_logic;
SIGNAL \seA_Y3[10]~51_combout\ : std_logic;
SIGNAL \seA_Y3[10]~52_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[45]~137_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[45]~138_combout\ : std_logic;
SIGNAL \seA_Y3[10]~53_combout\ : std_logic;
SIGNAL \seA_Y3[10]~54_combout\ : std_logic;
SIGNAL \seA_Y3[10]~55_combout\ : std_logic;
SIGNAL \Y~129_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~18_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[10]~125_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[10]~19_combout\ : std_logic;
SIGNAL \Y~122_combout\ : std_logic;
SIGNAL \Y~123_combout\ : std_logic;
SIGNAL \Y~375_combout\ : std_logic;
SIGNAL \seA_Y3[11]~58_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[46]~143_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~142_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[46]~144_combout\ : std_logic;
SIGNAL \seA_Y3[11]~59_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[46]~74_combout\ : std_logic;
SIGNAL \seA_Y3[11]~56_combout\ : std_logic;
SIGNAL \seA_Y3[11]~57_combout\ : std_logic;
SIGNAL \seA_Y3[11]~60_combout\ : std_logic;
SIGNAL \C[11]~input_o\ : std_logic;
SIGNAL \Y~134_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~48_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~139_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[26]~97_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~140_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[14]~141_combout\ : std_logic;
SIGNAL \Y~135_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[26]~98_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[14]~71_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[14]~72_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[14]~73_combout\ : std_logic;
SIGNAL \Y~132_combout\ : std_logic;
SIGNAL \Y~133_combout\ : std_logic;
SIGNAL \Y~136_combout\ : std_logic;
SIGNAL \Y~137_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~20_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[11]~126_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[11]~21_combout\ : std_logic;
SIGNAL \Y~130_combout\ : std_logic;
SIGNAL \Y~131_combout\ : std_logic;
SIGNAL \Y~376_combout\ : std_logic;
SIGNAL \C[12]~input_o\ : std_logic;
SIGNAL \Y~141_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~49_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~145_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[27]~99_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~146_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[15]~147_combout\ : std_logic;
SIGNAL \Y~142_combout\ : std_logic;
SIGNAL \Y~143_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~148_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[47]~219_combout\ : std_logic;
SIGNAL \seA_Y3[12]~63_combout\ : std_logic;
SIGNAL \seA_Y3[12]~64_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[47]~149_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[54]~151_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~150_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[47]~78_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[47]~79_combout\ : std_logic;
SIGNAL \seA_Y3[12]~61_combout\ : std_logic;
SIGNAL \seA_Y3[12]~62_combout\ : std_logic;
SIGNAL \seA_Y3[12]~65_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[15]~76_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[27]~100_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[15]~75_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[15]~77_combout\ : std_logic;
SIGNAL \Y~139_combout\ : std_logic;
SIGNAL \Y~140_combout\ : std_logic;
SIGNAL \Y~144_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~22_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[12]~23_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~13_combout\ : std_logic;
SIGNAL \Y~138_combout\ : std_logic;
SIGNAL \Y~377_combout\ : std_logic;
SIGNAL \C[13]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y2[16]~81_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[16]~80_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~50_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[28]~101_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[28]~102_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[16]~82_combout\ : std_logic;
SIGNAL \Y~146_combout\ : std_logic;
SIGNAL \Y~147_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~152_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~153_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[16]~154_combout\ : std_logic;
SIGNAL \Y~148_combout\ : std_logic;
SIGNAL \Y~149_combout\ : std_logic;
SIGNAL \Y~150_combout\ : std_logic;
SIGNAL \seA_Y3[13]~68_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[48]~155_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~156_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[48]~157_combout\ : std_logic;
SIGNAL \seA_Y3[13]~69_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[48]~83_combout\ : std_logic;
SIGNAL \seA_Y3[13]~66_combout\ : std_logic;
SIGNAL \seA_Y3[13]~67_combout\ : std_logic;
SIGNAL \seA_Y3[13]~70_combout\ : std_logic;
SIGNAL \Y~151_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~24_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[13]~25_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~14_combout\ : std_logic;
SIGNAL \Y~145_combout\ : std_logic;
SIGNAL \Y~378_combout\ : std_logic;
SIGNAL \C[14]~input_o\ : std_logic;
SIGNAL \Y~155_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~51_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~158_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[29]~103_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~159_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[17]~160_combout\ : std_logic;
SIGNAL \Y~156_combout\ : std_logic;
SIGNAL \Y~157_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~162_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[49]~161_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[49]~163_combout\ : std_logic;
SIGNAL \seA_Y3[14]~73_combout\ : std_logic;
SIGNAL \seA_Y3[14]~74_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[49]~87_combout\ : std_logic;
SIGNAL \seA_Y3[14]~71_combout\ : std_logic;
SIGNAL \seA_Y3[14]~72_combout\ : std_logic;
SIGNAL \seA_Y3[14]~75_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[29]~104_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[17]~85_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[17]~84_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[17]~86_combout\ : std_logic;
SIGNAL \Y~153_combout\ : std_logic;
SIGNAL \Y~154_combout\ : std_logic;
SIGNAL \Y~158_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~26_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[14]~27_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~15_combout\ : std_logic;
SIGNAL \Y~152_combout\ : std_logic;
SIGNAL \Y~379_combout\ : std_logic;
SIGNAL \C[15]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[50]~167_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~168_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[50]~169_combout\ : std_logic;
SIGNAL \seA_Y3[15]~78_combout\ : std_logic;
SIGNAL \seA_Y3[15]~79_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[50]~91_combout\ : std_logic;
SIGNAL \seA_Y3[15]~76_combout\ : std_logic;
SIGNAL \seA_Y3[15]~77_combout\ : std_logic;
SIGNAL \seA_Y3[15]~80_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~52_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~164_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[30]~105_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~165_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[18]~166_combout\ : std_logic;
SIGNAL \Y~162_combout\ : std_logic;
SIGNAL \Y~163_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[30]~106_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[18]~89_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[18]~88_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[18]~90_combout\ : std_logic;
SIGNAL \Y~160_combout\ : std_logic;
SIGNAL \Y~161_combout\ : std_logic;
SIGNAL \Y~164_combout\ : std_logic;
SIGNAL \Y~165_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~28_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[15]~29_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~16_combout\ : std_logic;
SIGNAL \Y~159_combout\ : std_logic;
SIGNAL \Y~166_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~30_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~31_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~127_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~32_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[16]~33_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~17_combout\ : std_logic;
SIGNAL \Y~167_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[51]~94_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[51]~93_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[51]~145_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[51]~95_combout\ : std_logic;
SIGNAL \seA_Y3[16]~81_combout\ : std_logic;
SIGNAL \seA_Y3[16]~82_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[51]~172_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[51]~173_combout\ : std_logic;
SIGNAL \seA_Y3[16]~83_combout\ : std_logic;
SIGNAL \seA_Y3[16]~84_combout\ : std_logic;
SIGNAL \seA_Y3[16]~85_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[31]~53_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[31]~54_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~170_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[19]~171_combout\ : std_logic;
SIGNAL \Y~170_combout\ : std_logic;
SIGNAL \Y~171_combout\ : std_logic;
SIGNAL \C[16]~input_o\ : std_logic;
SIGNAL \Y~172_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[19]~92_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[31]~107_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[31]~108_combout\ : std_logic;
SIGNAL \SRAcircuit|Y1[31]~109_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[19]~143_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[19]~144_combout\ : std_logic;
SIGNAL \Y~168_combout\ : std_logic;
SIGNAL \Y~169_combout\ : std_logic;
SIGNAL \Y~173_combout\ : std_logic;
SIGNAL \Y~380_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[52]~221_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[52]~177_combout\ : std_logic;
SIGNAL \seA_Y3[17]~88_combout\ : std_logic;
SIGNAL \seA_Y3[17]~89_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[52]~99_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[52]~100_combout\ : std_logic;
SIGNAL \seA_Y3[17]~86_combout\ : std_logic;
SIGNAL \seA_Y3[17]~87_combout\ : std_logic;
SIGNAL \seA_Y3[17]~90_combout\ : std_logic;
SIGNAL \C[17]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y3~19_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~220_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~175_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[20]~176_combout\ : std_logic;
SIGNAL \Y~177_combout\ : std_logic;
SIGNAL \Y~178_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[20]~96_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[20]~97_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[20]~98_combout\ : std_logic;
SIGNAL \Y~175_combout\ : std_logic;
SIGNAL \Y~176_combout\ : std_logic;
SIGNAL \Y~179_combout\ : std_logic;
SIGNAL \Y~180_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~34_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~35_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[17]~36_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~18_combout\ : std_logic;
SIGNAL \Y~174_combout\ : std_logic;
SIGNAL \Y~381_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~37_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~38_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[18]~39_combout\ : std_logic;
SIGNAL \Y~181_combout\ : std_logic;
SIGNAL \Y~182_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[21]~146_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[21]~101_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[21]~102_combout\ : std_logic;
SIGNAL \Y~183_combout\ : std_logic;
SIGNAL \Y~184_combout\ : std_logic;
SIGNAL \C[18]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~174_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~178_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~179_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[21]~180_combout\ : std_logic;
SIGNAL \Y~185_combout\ : std_logic;
SIGNAL \Y~186_combout\ : std_logic;
SIGNAL \Y~187_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[53]~222_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[53]~181_combout\ : std_logic;
SIGNAL \seA_Y3[18]~93_combout\ : std_logic;
SIGNAL \seA_Y3[18]~94_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[53]~103_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[53]~104_combout\ : std_logic;
SIGNAL \seA_Y3[18]~91_combout\ : std_logic;
SIGNAL \seA_Y3[18]~92_combout\ : std_logic;
SIGNAL \seA_Y3[18]~95_combout\ : std_logic;
SIGNAL \Y~188_combout\ : std_logic;
SIGNAL \Y~382_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[54]~223_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[54]~107_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[54]~108_combout\ : std_logic;
SIGNAL \seA_Y3[19]~96_combout\ : std_logic;
SIGNAL \seA_Y3[19]~97_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[54]~185_combout\ : std_logic;
SIGNAL \seA_Y3[19]~98_combout\ : std_logic;
SIGNAL \seA_Y3[19]~99_combout\ : std_logic;
SIGNAL \seA_Y3[19]~100_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~182_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~183_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[22]~184_combout\ : std_logic;
SIGNAL \Y~193_combout\ : std_logic;
SIGNAL \Y~194_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[22]~105_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[22]~147_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[22]~106_combout\ : std_logic;
SIGNAL \Y~191_combout\ : std_logic;
SIGNAL \Y~192_combout\ : std_logic;
SIGNAL \Y~195_combout\ : std_logic;
SIGNAL \C[19]~input_o\ : std_logic;
SIGNAL \Y~196_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~40_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~41_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[19]~42_combout\ : std_logic;
SIGNAL \Y~189_combout\ : std_logic;
SIGNAL \Y~190_combout\ : std_logic;
SIGNAL \Y~383_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~186_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~187_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[23]~188_combout\ : std_logic;
SIGNAL \Y~200_combout\ : std_logic;
SIGNAL \Y~201_combout\ : std_logic;
SIGNAL \C[20]~input_o\ : std_logic;
SIGNAL \Y~202_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[55]~189_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[55]~190_combout\ : std_logic;
SIGNAL \seA_Y3[20]~103_combout\ : std_logic;
SIGNAL \seA_Y3[20]~104_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[55]~148_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[55]~112_combout\ : std_logic;
SIGNAL \seA_Y3[20]~101_combout\ : std_logic;
SIGNAL \seA_Y3[20]~102_combout\ : std_logic;
SIGNAL \seA_Y3[20]~105_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[23]~110_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[23]~109_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[23]~111_combout\ : std_logic;
SIGNAL \Y~198_combout\ : std_logic;
SIGNAL \Y~199_combout\ : std_logic;
SIGNAL \Y~203_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~43_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~44_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~19_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~20_combout\ : std_logic;
SIGNAL \Y~197_combout\ : std_logic;
SIGNAL \Y~384_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~45_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~46_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~21_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~22_combout\ : std_logic;
SIGNAL \Y~204_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~191_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~192_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[24]~193_combout\ : std_logic;
SIGNAL \Y~207_combout\ : std_logic;
SIGNAL \Y~208_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[24]~113_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[24]~114_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[24]~115_combout\ : std_logic;
SIGNAL \Y~205_combout\ : std_logic;
SIGNAL \Y~206_combout\ : std_logic;
SIGNAL \Y~209_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[56]~149_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[56]~116_combout\ : std_logic;
SIGNAL \seA_Y3[21]~106_combout\ : std_logic;
SIGNAL \seA_Y3[21]~107_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[56]~194_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[56]~195_combout\ : std_logic;
SIGNAL \seA_Y3[21]~108_combout\ : std_logic;
SIGNAL \seA_Y3[21]~109_combout\ : std_logic;
SIGNAL \seA_Y3[21]~110_combout\ : std_logic;
SIGNAL \C[21]~input_o\ : std_logic;
SIGNAL \Y~210_combout\ : std_logic;
SIGNAL \Y~385_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~47_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~48_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~23_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~24_combout\ : std_logic;
SIGNAL \Y~211_combout\ : std_logic;
SIGNAL \C[22]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~196_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~197_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[25]~198_combout\ : std_logic;
SIGNAL \Y~214_combout\ : std_logic;
SIGNAL \Y~215_combout\ : std_logic;
SIGNAL \Y~216_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[25]~118_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[25]~117_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[25]~119_combout\ : std_logic;
SIGNAL \Y~212_combout\ : std_logic;
SIGNAL \Y~213_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[57]~150_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[57]~120_combout\ : std_logic;
SIGNAL \seA_Y3[22]~111_combout\ : std_logic;
SIGNAL \seA_Y3[22]~112_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[57]~199_combout\ : std_logic;
SIGNAL \seA_Y3[22]~113_combout\ : std_logic;
SIGNAL \seA_Y3[22]~114_combout\ : std_logic;
SIGNAL \seA_Y3[22]~115_combout\ : std_logic;
SIGNAL \Y~217_combout\ : std_logic;
SIGNAL \Y~386_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~49_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~50_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~25_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~26_combout\ : std_logic;
SIGNAL \Y~218_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[58]~151_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[58]~124_combout\ : std_logic;
SIGNAL \seA_Y3[23]~116_combout\ : std_logic;
SIGNAL \seA_Y3[23]~117_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[58]~203_combout\ : std_logic;
SIGNAL \seA_Y3[23]~118_combout\ : std_logic;
SIGNAL \seA_Y3[23]~119_combout\ : std_logic;
SIGNAL \seA_Y3[23]~120_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[26]~122_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[26]~121_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[26]~123_combout\ : std_logic;
SIGNAL \Y~219_combout\ : std_logic;
SIGNAL \Y~220_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~200_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~201_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[26]~202_combout\ : std_logic;
SIGNAL \Y~221_combout\ : std_logic;
SIGNAL \Y~222_combout\ : std_logic;
SIGNAL \Y~223_combout\ : std_logic;
SIGNAL \C[23]~input_o\ : std_logic;
SIGNAL \Y~224_combout\ : std_logic;
SIGNAL \Y~387_combout\ : std_logic;
SIGNAL \C[24]~input_o\ : std_logic;
SIGNAL \Y~228_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~204_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[2]~205_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[27]~206_combout\ : std_logic;
SIGNAL \Y~229_combout\ : std_logic;
SIGNAL \Y~230_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[27]~152_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[27]~125_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[27]~126_combout\ : std_logic;
SIGNAL \Y~226_combout\ : std_logic;
SIGNAL \Y~227_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[59]~127_combout\ : std_logic;
SIGNAL \seA_Y3[24]~121_combout\ : std_logic;
SIGNAL \seA_Y3[24]~122_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[59]~207_combout\ : std_logic;
SIGNAL \seA_Y3[24]~123_combout\ : std_logic;
SIGNAL \seA_Y3[24]~124_combout\ : std_logic;
SIGNAL \seA_Y3[24]~125_combout\ : std_logic;
SIGNAL \Y~231_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[16]~0_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~51_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~52_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~27_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~28_combout\ : std_logic;
SIGNAL \Y~225_combout\ : std_logic;
SIGNAL \Y~388_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[28]~128_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[28]~153_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[28]~129_combout\ : std_logic;
SIGNAL \Y~233_combout\ : std_logic;
SIGNAL \Y~234_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[28]~208_combout\ : std_logic;
SIGNAL \Y~235_combout\ : std_logic;
SIGNAL \Y~236_combout\ : std_logic;
SIGNAL \Y~237_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[60]~130_combout\ : std_logic;
SIGNAL \seA_Y3[25]~126_combout\ : std_logic;
SIGNAL \seA_Y3[25]~127_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[60]~224_combout\ : std_logic;
SIGNAL \seA_Y3[25]~128_combout\ : std_logic;
SIGNAL \seA_Y3[25]~129_combout\ : std_logic;
SIGNAL \seA_Y3[25]~130_combout\ : std_logic;
SIGNAL \C[25]~input_o\ : std_logic;
SIGNAL \Y~238_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~53_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~54_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~29_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~30_combout\ : std_logic;
SIGNAL \Y~232_combout\ : std_logic;
SIGNAL \Y~389_combout\ : std_logic;
SIGNAL \C[26]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[29]~209_combout\ : std_logic;
SIGNAL \Y~242_combout\ : std_logic;
SIGNAL \Y~243_combout\ : std_logic;
SIGNAL \Y~244_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[29]~132_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[29]~131_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[29]~133_combout\ : std_logic;
SIGNAL \Y~240_combout\ : std_logic;
SIGNAL \Y~241_combout\ : std_logic;
SIGNAL \seA_Y3[26]~133_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[61]~225_combout\ : std_logic;
SIGNAL \seA_Y3[26]~134_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[61]~134_combout\ : std_logic;
SIGNAL \seA_Y3[26]~131_combout\ : std_logic;
SIGNAL \seA_Y3[26]~132_combout\ : std_logic;
SIGNAL \seA_Y3[26]~135_combout\ : std_logic;
SIGNAL \Y~245_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~55_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~56_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~32_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~31_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~33_combout\ : std_logic;
SIGNAL \Y~239_combout\ : std_logic;
SIGNAL \Y~390_combout\ : std_logic;
SIGNAL \seA_Y3[27]~138_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[62]~226_combout\ : std_logic;
SIGNAL \seA_Y3[27]~139_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[62]~138_combout\ : std_logic;
SIGNAL \seA_Y3[27]~136_combout\ : std_logic;
SIGNAL \seA_Y3[27]~137_combout\ : std_logic;
SIGNAL \seA_Y3[27]~140_combout\ : std_logic;
SIGNAL \C[27]~input_o\ : std_logic;
SIGNAL \SRAcircuit|Y2[30]~136_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[30]~135_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[30]~137_combout\ : std_logic;
SIGNAL \Y~247_combout\ : std_logic;
SIGNAL \Y~248_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[30]~210_combout\ : std_logic;
SIGNAL \Y~249_combout\ : std_logic;
SIGNAL \Y~250_combout\ : std_logic;
SIGNAL \Y~251_combout\ : std_logic;
SIGNAL \Y~252_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~57_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~58_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~35_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~34_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~36_combout\ : std_logic;
SIGNAL \Y~246_combout\ : std_logic;
SIGNAL \Y~391_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[31]~139_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[31]~140_combout\ : std_logic;
SIGNAL \SRAcircuit|Y2[31]~141_combout\ : std_logic;
SIGNAL \Y~254_combout\ : std_logic;
SIGNAL \Y~255_combout\ : std_logic;
SIGNAL \C[28]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y2[31]~211_combout\ : std_logic;
SIGNAL \Y~256_combout\ : std_logic;
SIGNAL \Y~257_combout\ : std_logic;
SIGNAL \Y~258_combout\ : std_logic;
SIGNAL \seA_Y3[28]~143_combout\ : std_logic;
SIGNAL \SRLcircuit|Y2[63]~227_combout\ : std_logic;
SIGNAL \seA_Y3[28]~144_combout\ : std_logic;
SIGNAL \seA_Y3[28]~141_combout\ : std_logic;
SIGNAL \seA_Y3[28]~142_combout\ : std_logic;
SIGNAL \seA_Y3[28]~145_combout\ : std_logic;
SIGNAL \Y~259_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~37_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~59_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~60_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~38_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~39_combout\ : std_logic;
SIGNAL \Y~253_combout\ : std_logic;
SIGNAL \Y~392_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~20_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~27_combout\ : std_logic;
SIGNAL \seA_Y3[29]~146_combout\ : std_logic;
SIGNAL \seA_Y3[29]~147_combout\ : std_logic;
SIGNAL \Y~263_combout\ : std_logic;
SIGNAL \Y~264_combout\ : std_logic;
SIGNAL \Y~261_combout\ : std_logic;
SIGNAL \Y~262_combout\ : std_logic;
SIGNAL \Y~265_combout\ : std_logic;
SIGNAL \C[29]~input_o\ : std_logic;
SIGNAL \Y~266_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~40_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~61_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~62_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~41_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~42_combout\ : std_logic;
SIGNAL \Y~260_combout\ : std_logic;
SIGNAL \Y~393_combout\ : std_logic;
SIGNAL \Y~268_combout\ : std_logic;
SIGNAL \Y~269_combout\ : std_logic;
SIGNAL \seA_Y3[30]~149_combout\ : std_logic;
SIGNAL \seA_Y3[30]~148_combout\ : std_logic;
SIGNAL \seA_Y3[30]~150_combout\ : std_logic;
SIGNAL \seA_Y3[32]~151_combout\ : std_logic;
SIGNAL \seA_Y3[30]~152_combout\ : std_logic;
SIGNAL \C[30]~input_o\ : std_logic;
SIGNAL \Y~270_combout\ : std_logic;
SIGNAL \Y~271_combout\ : std_logic;
SIGNAL \Y~272_combout\ : std_logic;
SIGNAL \Y~273_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~43_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~63_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~64_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~44_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~45_combout\ : std_logic;
SIGNAL \Y~267_combout\ : std_logic;
SIGNAL \Y~394_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~65_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~66_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~47_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~46_combout\ : std_logic;
SIGNAL \seA_Y2[32]~0_combout\ : std_logic;
SIGNAL \C[31]~input_o\ : std_logic;
SIGNAL \seA_Y2[32]~1_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~38_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~39_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~32_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~33_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~34_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~35_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~36_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~37_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~28_combout\ : std_logic;
SIGNAL \SRAcircuit|Y3~29_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~33_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~31_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~32_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~34_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~37_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~35_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~36_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~38_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~29_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~21_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~22_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~23_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~24_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~27_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~25_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~26_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~28_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~30_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~39_combout\ : std_logic;
SIGNAL \A_Y3[31]~8_combout\ : std_logic;
SIGNAL \A_Y3[31]~9_combout\ : std_logic;
SIGNAL \seA_Y3[32]~153_combout\ : std_logic;
SIGNAL \A_Y5[0]~0_combout\ : std_logic;
SIGNAL \A_Y5[0]~1_combout\ : std_logic;
SIGNAL \Y~275_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~50_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~51_combout\ : std_logic;
SIGNAL \SRLcircuit|Y3~40_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~48_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[32]~1_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[32]~2_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~67_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~49_combout\ : std_logic;
SIGNAL \C[32]~input_o\ : std_logic;
SIGNAL \Y~276_combout\ : std_logic;
SIGNAL \Y~277_combout\ : std_logic;
SIGNAL \Y~274_combout\ : std_logic;
SIGNAL \Y~278_combout\ : std_logic;
SIGNAL \C[33]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[33]~3_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[33]~4_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~68_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~52_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~53_combout\ : std_logic;
SIGNAL \Y~279_combout\ : std_logic;
SIGNAL \Y~280_combout\ : std_logic;
SIGNAL \Y~281_combout\ : std_logic;
SIGNAL \C[34]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~55_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[34]~5_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[34]~6_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~69_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~54_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~56_combout\ : std_logic;
SIGNAL \Y~282_combout\ : std_logic;
SIGNAL \Y~283_combout\ : std_logic;
SIGNAL \Y~284_combout\ : std_logic;
SIGNAL \C[35]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[35]~7_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[35]~8_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~70_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~57_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~58_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~59_combout\ : std_logic;
SIGNAL \Y~285_combout\ : std_logic;
SIGNAL \Y~286_combout\ : std_logic;
SIGNAL \Y~287_combout\ : std_logic;
SIGNAL \C[36]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[36]~9_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[36]~10_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~71_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~61_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~60_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~62_combout\ : std_logic;
SIGNAL \Y~288_combout\ : std_logic;
SIGNAL \Y~289_combout\ : std_logic;
SIGNAL \Y~290_combout\ : std_logic;
SIGNAL \C[37]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~63_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[37]~11_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[37]~12_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~72_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~64_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~65_combout\ : std_logic;
SIGNAL \Y~291_combout\ : std_logic;
SIGNAL \Y~292_combout\ : std_logic;
SIGNAL \Y~293_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[38]~13_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[38]~14_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~73_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~66_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~67_combout\ : std_logic;
SIGNAL \C[38]~input_o\ : std_logic;
SIGNAL \Y~294_combout\ : std_logic;
SIGNAL \Y~295_combout\ : std_logic;
SIGNAL \Y~296_combout\ : std_logic;
SIGNAL \C[39]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[39]~15_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[39]~16_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~74_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~68_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~69_combout\ : std_logic;
SIGNAL \Y~297_combout\ : std_logic;
SIGNAL \Y~298_combout\ : std_logic;
SIGNAL \Y~299_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~55_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~75_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~76_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~70_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~71_combout\ : std_logic;
SIGNAL \C[40]~input_o\ : std_logic;
SIGNAL \Y~300_combout\ : std_logic;
SIGNAL \Y~301_combout\ : std_logic;
SIGNAL \Y~302_combout\ : std_logic;
SIGNAL \C[41]~input_o\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~56_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~77_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~78_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~72_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~73_combout\ : std_logic;
SIGNAL \Y~303_combout\ : std_logic;
SIGNAL \Y~304_combout\ : std_logic;
SIGNAL \Y~305_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~57_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~79_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~80_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~81_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~74_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~75_combout\ : std_logic;
SIGNAL \C[42]~input_o\ : std_logic;
SIGNAL \Y~306_combout\ : std_logic;
SIGNAL \Y~307_combout\ : std_logic;
SIGNAL \Y~308_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~82_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~58_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~83_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~84_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~76_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~77_combout\ : std_logic;
SIGNAL \C[43]~input_o\ : std_logic;
SIGNAL \Y~309_combout\ : std_logic;
SIGNAL \Y~310_combout\ : std_logic;
SIGNAL \Y~311_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~59_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~85_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~86_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~78_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~79_combout\ : std_logic;
SIGNAL \C[44]~input_o\ : std_logic;
SIGNAL \Y~312_combout\ : std_logic;
SIGNAL \Y~313_combout\ : std_logic;
SIGNAL \Y~314_combout\ : std_logic;
SIGNAL \SRLcircuit|Y1[2]~60_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~87_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~88_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~80_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~81_combout\ : std_logic;
SIGNAL \C[45]~input_o\ : std_logic;
SIGNAL \Y~315_combout\ : std_logic;
SIGNAL \Y~316_combout\ : std_logic;
SIGNAL \Y~317_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[46]~17_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[46]~18_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[50]~89_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[46]~90_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~82_combout\ : std_logic;
SIGNAL \C[46]~input_o\ : std_logic;
SIGNAL \Y~318_combout\ : std_logic;
SIGNAL \Y~319_combout\ : std_logic;
SIGNAL \Y~320_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[47]~19_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[47]~20_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[51]~91_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[47]~92_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~83_combout\ : std_logic;
SIGNAL \C[47]~input_o\ : std_logic;
SIGNAL \Y~321_combout\ : std_logic;
SIGNAL \Y~322_combout\ : std_logic;
SIGNAL \Y~323_combout\ : std_logic;
SIGNAL \C[48]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[48]~21_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[48]~22_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~93_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~84_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~85_combout\ : std_logic;
SIGNAL \Y~324_combout\ : std_logic;
SIGNAL \Y~325_combout\ : std_logic;
SIGNAL \Y~326_combout\ : std_logic;
SIGNAL \C[49]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[49]~23_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[49]~24_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~94_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~86_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~87_combout\ : std_logic;
SIGNAL \Y~327_combout\ : std_logic;
SIGNAL \Y~328_combout\ : std_logic;
SIGNAL \Y~329_combout\ : std_logic;
SIGNAL \C[50]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~95_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[50]~25_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[50]~26_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~96_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[50]~97_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~88_combout\ : std_logic;
SIGNAL \Y~330_combout\ : std_logic;
SIGNAL \Y~331_combout\ : std_logic;
SIGNAL \Y~332_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~98_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[51]~27_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[51]~28_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~99_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[51]~100_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~89_combout\ : std_logic;
SIGNAL \C[51]~input_o\ : std_logic;
SIGNAL \Y~333_combout\ : std_logic;
SIGNAL \Y~334_combout\ : std_logic;
SIGNAL \Y~335_combout\ : std_logic;
SIGNAL \C[52]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y1[52]~29_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[52]~30_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~101_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~90_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~91_combout\ : std_logic;
SIGNAL \Y~336_combout\ : std_logic;
SIGNAL \Y~337_combout\ : std_logic;
SIGNAL \Y~338_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[53]~31_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[53]~32_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~102_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~92_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~93_combout\ : std_logic;
SIGNAL \C[53]~input_o\ : std_logic;
SIGNAL \Y~339_combout\ : std_logic;
SIGNAL \Y~340_combout\ : std_logic;
SIGNAL \Y~341_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[54]~33_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[54]~34_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[54]~103_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[54]~104_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~94_combout\ : std_logic;
SIGNAL \C[54]~input_o\ : std_logic;
SIGNAL \Y~342_combout\ : std_logic;
SIGNAL \Y~343_combout\ : std_logic;
SIGNAL \Y~344_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[55]~35_combout\ : std_logic;
SIGNAL \SLLcircuit|Y1[55]~36_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[55]~105_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[55]~106_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~95_combout\ : std_logic;
SIGNAL \C[55]~input_o\ : std_logic;
SIGNAL \Y~345_combout\ : std_logic;
SIGNAL \Y~346_combout\ : std_logic;
SIGNAL \Y~347_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~107_combout\ : std_logic;
SIGNAL \A_Y1[24]~31_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[4]~108_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~96_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~97_combout\ : std_logic;
SIGNAL \C[56]~input_o\ : std_logic;
SIGNAL \Y~348_combout\ : std_logic;
SIGNAL \Y~349_combout\ : std_logic;
SIGNAL \Y~350_combout\ : std_logic;
SIGNAL \A_Y1[25]~32_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~109_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[5]~110_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~98_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~99_combout\ : std_logic;
SIGNAL \C[57]~input_o\ : std_logic;
SIGNAL \Y~351_combout\ : std_logic;
SIGNAL \Y~352_combout\ : std_logic;
SIGNAL \Y~353_combout\ : std_logic;
SIGNAL \C[58]~input_o\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~112_combout\ : std_logic;
SIGNAL \A_Y1[26]~33_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[6]~113_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[58]~111_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[58]~114_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~100_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~101_combout\ : std_logic;
SIGNAL \Y~354_combout\ : std_logic;
SIGNAL \Y~355_combout\ : std_logic;
SIGNAL \Y~356_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~102_combout\ : std_logic;
SIGNAL \A_Y1[27]~34_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~116_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[7]~117_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[59]~115_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[59]~118_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~103_combout\ : std_logic;
SIGNAL \C[59]~input_o\ : std_logic;
SIGNAL \Y~357_combout\ : std_logic;
SIGNAL \Y~358_combout\ : std_logic;
SIGNAL \Y~359_combout\ : std_logic;
SIGNAL \C[60]~input_o\ : std_logic;
SIGNAL \Y~360_combout\ : std_logic;
SIGNAL \A_Y1[28]~35_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[60]~119_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[60]~120_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~104_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~105_combout\ : std_logic;
SIGNAL \Y~361_combout\ : std_logic;
SIGNAL \Y~362_combout\ : std_logic;
SIGNAL \C[61]~input_o\ : std_logic;
SIGNAL \A_Y1[29]~36_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[61]~121_combout\ : std_logic;
SIGNAL \SLLcircuit|Y2[61]~122_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~106_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~107_combout\ : std_logic;
SIGNAL \Y~363_combout\ : std_logic;
SIGNAL \Y~364_combout\ : std_logic;
SIGNAL \Y~365_combout\ : std_logic;
SIGNAL \C[62]~input_o\ : std_logic;
SIGNAL \Y~366_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~109_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~110_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~111_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~108_combout\ : std_logic;
SIGNAL \SLLcircuit|Y[1]~112_combout\ : std_logic;
SIGNAL \Y~367_combout\ : std_logic;
SIGNAL \Y~368_combout\ : std_logic;
SIGNAL \A_Y5[0]~2_combout\ : std_logic;
SIGNAL \C[63]~input_o\ : std_logic;
SIGNAL \A_Y5[0]~4_combout\ : std_logic;
SIGNAL \A_Y5[0]~5_combout\ : std_logic;
SIGNAL \A_Y5[0]~6_combout\ : std_logic;
SIGNAL \A_Y5[0]~7_combout\ : std_logic;
SIGNAL \A_Y5[0]~3_combout\ : std_logic;
SIGNAL \A_Y5[0]~8_combout\ : std_logic;
SIGNAL \A_Y5[0]~9_combout\ : std_logic;
SIGNAL \A_Y5[0]~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
Y <= ww_Y;
ww_ShiftFN <= ShiftFN;
ww_ExtWord <= ExtWord;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X85_Y73_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~56_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~63_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~67_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~72_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~370_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~371_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~372_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~373_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~114_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~374_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~375_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~376_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~377_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~378_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~379_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~166_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~380_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~381_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~382_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~383_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~384_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~385_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~386_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~387_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~388_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~389_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~390_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~391_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~392_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~393_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~394_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Y5[0]~1_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~278_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~281_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~284_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~287_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~290_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~293_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~296_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~299_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~302_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~305_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~308_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~311_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X115_Y48_N2
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~314_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~317_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X115_Y46_N2
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~320_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~323_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~326_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~329_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~332_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~335_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~338_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~341_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~344_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~347_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~350_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~353_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~356_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~359_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~362_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X115_Y45_N16
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~365_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Y~368_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A_Y5[0]~10_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOIBUF_X38_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X62_Y42_N18
\SRLcircuit|Y2[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~48_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRLcircuit|Y2[2]~48_combout\);

-- Location: IOIBUF_X52_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X63_Y43_N8
\SRLcircuit|Y2[60]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[60]~70_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[60]~70_combout\);

-- Location: IOIBUF_X67_Y73_N15
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\C[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(0),
	o => \C[0]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X61_Y45_N12
\Y~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~54_combout\ = (!\B[0]~input_o\ & (!\B[1]~input_o\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Y~54_combout\);

-- Location: LCCOMB_X61_Y45_N6
\Y~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~55_combout\ = (\ShiftFN[0]~input_o\ & (\SRLcircuit|Y2[60]~70_combout\ & ((\Y~54_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\C[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[60]~70_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \C[0]~input_o\,
	datad => \Y~54_combout\,
	combout => \Y~55_combout\);

-- Location: IOIBUF_X65_Y73_N22
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X56_Y42_N10
\SRLcircuit|Y2[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~32_combout\ = (\B[3]~input_o\) # ((!\ExtWord~input_o\ & (\B[5]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~32_combout\);

-- Location: LCCOMB_X55_Y42_N8
\shiftCount[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shiftCount[5]~0_combout\ = (\B[5]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \shiftCount[5]~0_combout\);

-- Location: IOIBUF_X40_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X57_Y42_N24
\SRAcircuit|Y1[41]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[41]~24_combout\ = (\B[4]~input_o\ & ((\A[25]~input_o\))) # (!\B[4]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[41]~24_combout\);

-- Location: LCCOMB_X57_Y43_N8
\A_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_s~0_combout\ = (\ShiftFN[1]~input_o\ & \ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \A_s~0_combout\);

-- Location: IOIBUF_X58_Y0_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X59_Y38_N24
\SRLcircuit|Y1[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[9]~1_combout\ = (\B[4]~input_o\ & ((\A[57]~input_o\))) # (!\B[4]~input_o\ & (\A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[41]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[57]~input_o\,
	combout => \SRLcircuit|Y1[9]~1_combout\);

-- Location: LCCOMB_X56_Y42_N24
\SRLcircuit|Y1[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[9]~2_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[9]~1_combout\) # ((\SRAcircuit|Y1[41]~24_combout\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (\SRAcircuit|Y1[41]~24_combout\ & (!\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRAcircuit|Y1[41]~24_combout\,
	datac => \A_s~0_combout\,
	datad => \SRLcircuit|Y1[9]~1_combout\,
	combout => \SRLcircuit|Y1[9]~2_combout\);

-- Location: IOIBUF_X47_Y73_N1
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X56_Y42_N8
\A_Y1[33]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[33]~0_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[1]~input_o\)) # (!\ExtWord~input_o\ & ((\A[33]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[33]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[33]~input_o\,
	combout => \A_Y1[33]~0_combout\);

-- Location: LCCOMB_X56_Y42_N28
\A_Y1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[1]~1_combout\ = (\A[1]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \A_Y1[1]~1_combout\);

-- Location: LCCOMB_X54_Y41_N24
\SRLcircuit|Y2[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~33_combout\ = (!\B[4]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~33_combout\);

-- Location: IOIBUF_X0_Y34_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X55_Y38_N16
\SRLcircuit|Y1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~0_combout\ = (\shiftCount[5]~0_combout\ & ((\A[49]~input_o\) # ((\A[17]~input_o\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (\A[17]~input_o\ & (!\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[49]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~0_combout\);

-- Location: LCCOMB_X56_Y42_N6
\SRLcircuit|Y2[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[1]~34_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[2]~33_combout\ & (\A_Y1[1]~1_combout\)) # (!\SRLcircuit|Y2[2]~33_combout\ & 
-- ((\SRLcircuit|Y1[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[1]~1_combout\,
	datac => \SRLcircuit|Y2[2]~33_combout\,
	datad => \SRLcircuit|Y1[2]~0_combout\,
	combout => \SRLcircuit|Y2[1]~34_combout\);

-- Location: LCCOMB_X56_Y42_N2
\SRLcircuit|Y2[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[1]~35_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[1]~34_combout\ & (\SRLcircuit|Y1[9]~2_combout\)) # (!\SRLcircuit|Y2[1]~34_combout\ & ((\A_Y1[33]~0_combout\))))) # (!\SRLcircuit|Y2[2]~32_combout\ & 
-- (((\SRLcircuit|Y2[1]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \SRLcircuit|Y1[9]~2_combout\,
	datac => \A_Y1[33]~0_combout\,
	datad => \SRLcircuit|Y2[1]~34_combout\,
	combout => \SRLcircuit|Y2[1]~35_combout\);

-- Location: IOIBUF_X0_Y46_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X60_Y44_N16
\A_Y1[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[5]~13_combout\ = (\A[5]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \A_Y1[5]~13_combout\);

-- Location: IOIBUF_X0_Y43_N15
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X55_Y43_N10
\A_Y1[37]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[37]~12_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[5]~input_o\)) # (!\ExtWord~input_o\ & ((\A[37]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[37]~input_o\,
	combout => \A_Y1[37]~12_combout\);

-- Location: LCCOMB_X55_Y43_N12
\SRLcircuit|Y2[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~46_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((\A_Y1[37]~12_combout\) # (!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & (\A_Y1[5]~13_combout\ & (\SRLcircuit|Y2[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[5]~13_combout\,
	datac => \SRLcircuit|Y2[2]~33_combout\,
	datad => \A_Y1[37]~12_combout\,
	combout => \SRLcircuit|Y2[2]~46_combout\);

-- Location: IOIBUF_X40_Y73_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X55_Y43_N0
\SRLcircuit|Y1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~23_combout\ = (\shiftCount[5]~0_combout\ & ((\A[53]~input_o\) # ((\A_s~0_combout\ & \A[21]~input_o\)))) # (!\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \A[21]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SRLcircuit|Y1[2]~23_combout\);

-- Location: IOIBUF_X45_Y0_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X58_Y39_N0
\SRLcircuit|Y1[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[13]~24_combout\ = (\B[4]~input_o\ & (\A[61]~input_o\)) # (!\B[4]~input_o\ & ((\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[45]~input_o\,
	combout => \SRLcircuit|Y1[13]~24_combout\);

-- Location: IOIBUF_X115_Y47_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X58_Y39_N10
\SRAcircuit|Y1[45]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[45]~28_combout\ = (\B[4]~input_o\ & ((\A[29]~input_o\))) # (!\B[4]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[29]~input_o\,
	combout => \SRAcircuit|Y1[45]~28_combout\);

-- Location: LCCOMB_X58_Y39_N4
\SRLcircuit|Y1[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[13]~25_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[13]~24_combout\) # ((\A_s~0_combout\ & \SRAcircuit|Y1[45]~28_combout\)))) # (!\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & ((\SRAcircuit|Y1[45]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \SRLcircuit|Y1[13]~24_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \SRAcircuit|Y1[45]~28_combout\,
	combout => \SRLcircuit|Y1[13]~25_combout\);

-- Location: LCCOMB_X56_Y43_N16
\SRLcircuit|Y2[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~47_combout\ = (\SRLcircuit|Y2[2]~46_combout\ & ((\SRLcircuit|Y2[2]~33_combout\) # ((\SRLcircuit|Y1[13]~25_combout\)))) # (!\SRLcircuit|Y2[2]~46_combout\ & (!\SRLcircuit|Y2[2]~33_combout\ & (\SRLcircuit|Y1[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~46_combout\,
	datab => \SRLcircuit|Y2[2]~33_combout\,
	datac => \SRLcircuit|Y1[2]~23_combout\,
	datad => \SRLcircuit|Y1[13]~25_combout\,
	combout => \SRLcircuit|Y2[2]~47_combout\);

-- Location: LCCOMB_X53_Y40_N8
\SRAcircuit|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Equal7~0_combout\ = (\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRAcircuit|Equal7~0_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X54_Y39_N8
\SRLcircuit|Y1[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[11]~21_combout\ = (\B[4]~input_o\ & (\A[59]~input_o\)) # (!\B[4]~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[59]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[43]~input_o\,
	combout => \SRLcircuit|Y1[11]~21_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y36_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X54_Y39_N2
\SRAcircuit|Y1[43]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[43]~27_combout\ = (\B[4]~input_o\ & (\A[27]~input_o\)) # (!\B[4]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[4]~input_o\,
	datad => \A[11]~input_o\,
	combout => \SRAcircuit|Y1[43]~27_combout\);

-- Location: LCCOMB_X54_Y39_N4
\SRLcircuit|Y1[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[11]~22_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[11]~21_combout\) # ((\A_s~0_combout\ & \SRAcircuit|Y1[43]~27_combout\)))) # (!\shiftCount[5]~0_combout\ & (((!\A_s~0_combout\ & \SRAcircuit|Y1[43]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y1[11]~21_combout\,
	datac => \A_s~0_combout\,
	datad => \SRAcircuit|Y1[43]~27_combout\,
	combout => \SRLcircuit|Y1[11]~22_combout\);

-- Location: IOIBUF_X0_Y49_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X54_Y43_N8
\A_Y1[35]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[35]~10_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[3]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[35]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[3]~input_o\,
	datac => \A[35]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_Y1[35]~10_combout\);

-- Location: IOIBUF_X42_Y73_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X54_Y43_N18
\SRLcircuit|Y1[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~20_combout\ = (\shiftCount[5]~0_combout\ & ((\A[51]~input_o\) # ((\A[19]~input_o\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (\A[19]~input_o\ & (!\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A_s~0_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A[51]~input_o\,
	combout => \SRLcircuit|Y1[2]~20_combout\);

-- Location: LCCOMB_X54_Y43_N4
\A_Y1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[3]~11_combout\ = (\A[3]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_Y1[3]~11_combout\);

-- Location: LCCOMB_X55_Y42_N24
\SRLcircuit|Y2[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[3]~44_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[2]~33_combout\ & ((\A_Y1[3]~11_combout\))) # (!\SRLcircuit|Y2[2]~33_combout\ & 
-- (\SRLcircuit|Y1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~20_combout\,
	datab => \SRLcircuit|Y2[2]~32_combout\,
	datac => \A_Y1[3]~11_combout\,
	datad => \SRLcircuit|Y2[2]~33_combout\,
	combout => \SRLcircuit|Y2[3]~44_combout\);

-- Location: LCCOMB_X55_Y42_N2
\SRLcircuit|Y2[3]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[3]~45_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[3]~44_combout\ & (\SRLcircuit|Y1[11]~22_combout\)) # (!\SRLcircuit|Y2[3]~44_combout\ & ((\A_Y1[35]~10_combout\))))) # (!\SRLcircuit|Y2[2]~32_combout\ & 
-- (((\SRLcircuit|Y2[3]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[11]~22_combout\,
	datab => \SRLcircuit|Y2[2]~32_combout\,
	datac => \A_Y1[35]~10_combout\,
	datad => \SRLcircuit|Y2[3]~44_combout\,
	combout => \SRLcircuit|Y2[3]~45_combout\);

-- Location: IOIBUF_X115_Y51_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X57_Y44_N10
\SRLcircuit|Y1[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[8]~15_combout\ = (\B[4]~input_o\ & (\A[24]~input_o\)) # (!\B[4]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRLcircuit|Y1[8]~15_combout\);

-- Location: IOIBUF_X42_Y73_N1
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X57_Y44_N0
\SRLcircuit|Y1[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[8]~14_combout\ = (\B[4]~input_o\ & ((\A[56]~input_o\))) # (!\B[4]~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[40]~input_o\,
	datad => \A[56]~input_o\,
	combout => \SRLcircuit|Y1[8]~14_combout\);

-- Location: LCCOMB_X57_Y44_N12
\SRLcircuit|Y1[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[8]~16_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[8]~14_combout\) # ((\SRLcircuit|Y1[8]~15_combout\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (\SRLcircuit|Y1[8]~15_combout\ & (!\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[8]~15_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \A_s~0_combout\,
	datad => \SRLcircuit|Y1[8]~14_combout\,
	combout => \SRLcircuit|Y1[8]~16_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X56_Y44_N26
\SRLcircuit|Y3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~13_combout\ = (\B[4]~input_o\ & (\A[16]~input_o\)) # (!\B[4]~input_o\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	combout => \SRLcircuit|Y3~13_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X0_Y44_N22
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X56_Y44_N24
\SRLcircuit|Y3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~12_combout\ = (\B[4]~input_o\ & (\A[48]~input_o\)) # (!\B[4]~input_o\ & ((\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[4]~input_o\,
	datad => \A[32]~input_o\,
	combout => \SRLcircuit|Y3~12_combout\);

-- Location: LCCOMB_X56_Y44_N12
\SRLcircuit|Y3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~14_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y3~12_combout\) # ((\A_s~0_combout\ & \SRLcircuit|Y3~13_combout\)))) # (!\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\SRLcircuit|Y3~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \SRLcircuit|Y3~13_combout\,
	datad => \SRLcircuit|Y3~12_combout\,
	combout => \SRLcircuit|Y3~14_combout\);

-- Location: LCCOMB_X56_Y45_N18
\SRLcircuit|Y3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~15_combout\ = (!\B[1]~input_o\ & ((\B[3]~input_o\ & (\SRLcircuit|Y1[8]~16_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y3~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[8]~16_combout\,
	datab => \SRLcircuit|Y3~14_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y3~15_combout\);

-- Location: IOIBUF_X45_Y0_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X29_Y73_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X56_Y39_N18
\A_Y1[34]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[34]~8_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[2]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[34]~input_o\)))) # (!\ExtWord~input_o\ & (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[34]~input_o\,
	datab => \A[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_Y1[34]~8_combout\);

-- Location: LCCOMB_X56_Y39_N12
\A_Y1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[2]~9_combout\ = (\A[2]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_Y1[2]~9_combout\);

-- Location: LCCOMB_X56_Y39_N22
\SRLcircuit|Y2[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~42_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\A_Y1[34]~8_combout\) # ((!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & (((\SRLcircuit|Y2[2]~33_combout\ & \A_Y1[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[34]~8_combout\,
	datac => \SRLcircuit|Y2[2]~33_combout\,
	datad => \A_Y1[2]~9_combout\,
	combout => \SRLcircuit|Y2[2]~42_combout\);

-- Location: IOIBUF_X115_Y32_N8
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X57_Y38_N8
\SRAcircuit|Y1[42]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[42]~26_combout\ = (\B[4]~input_o\ & (\A[26]~input_o\)) # (!\B[4]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[42]~26_combout\);

-- Location: IOIBUF_X47_Y0_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X58_Y38_N0
\SRLcircuit|Y1[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[10]~18_combout\ = (\B[4]~input_o\ & ((\A[58]~input_o\))) # (!\B[4]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[58]~input_o\,
	combout => \SRLcircuit|Y1[10]~18_combout\);

-- Location: LCCOMB_X56_Y39_N24
\SRLcircuit|Y1[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[10]~19_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[10]~18_combout\) # ((\SRAcircuit|Y1[42]~26_combout\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (\SRAcircuit|Y1[42]~26_combout\ & (!\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRAcircuit|Y1[42]~26_combout\,
	datac => \A_s~0_combout\,
	datad => \SRLcircuit|Y1[10]~18_combout\,
	combout => \SRLcircuit|Y1[10]~19_combout\);

-- Location: IOIBUF_X0_Y42_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X56_Y39_N8
\SRLcircuit|Y1[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~17_combout\ = (\shiftCount[5]~0_combout\ & ((\A[50]~input_o\) # ((\A[18]~input_o\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (((\A[18]~input_o\ & !\A_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~17_combout\);

-- Location: LCCOMB_X56_Y39_N2
\SRLcircuit|Y2[2]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~43_combout\ = (\SRLcircuit|Y2[2]~42_combout\ & ((\SRLcircuit|Y1[10]~19_combout\) # ((\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~42_combout\ & (((\SRLcircuit|Y1[2]~17_combout\ & !\SRLcircuit|Y2[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~42_combout\,
	datab => \SRLcircuit|Y1[10]~19_combout\,
	datac => \SRLcircuit|Y1[2]~17_combout\,
	datad => \SRLcircuit|Y2[2]~33_combout\,
	combout => \SRLcircuit|Y2[2]~43_combout\);

-- Location: LCCOMB_X57_Y45_N4
\SRLcircuit|Y3~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~41_combout\ = (!\B[0]~input_o\ & (\B[1]~input_o\ & \SRLcircuit|Y2[2]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[2]~43_combout\,
	combout => \SRLcircuit|Y3~41_combout\);

-- Location: LCCOMB_X56_Y45_N8
\SRLcircuit|Y3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~9_combout\ = (\B[1]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \SRLcircuit|Y3~9_combout\);

-- Location: LCCOMB_X57_Y45_N14
\SRLcircuit|Y3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~16_combout\ = (\SRLcircuit|Y3~15_combout\) # ((\SRLcircuit|Y3~41_combout\) # ((\SRLcircuit|Y2[3]~45_combout\ & \SRLcircuit|Y3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[3]~45_combout\,
	datab => \SRLcircuit|Y3~15_combout\,
	datac => \SRLcircuit|Y3~41_combout\,
	datad => \SRLcircuit|Y3~9_combout\,
	combout => \SRLcircuit|Y3~16_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X54_Y42_N28
\A_Y1[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[4]~7_combout\ = (\A[4]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_Y1[4]~7_combout\);

-- Location: IOIBUF_X23_Y73_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X54_Y42_N18
\A_Y1[36]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[36]~6_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[4]~input_o\)) # (!\ExtWord~input_o\ & ((\A[36]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \A[36]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_Y1[36]~6_combout\);

-- Location: LCCOMB_X54_Y42_N14
\SRLcircuit|Y2[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~40_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((\A_Y1[36]~6_combout\) # (!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & (\A_Y1[4]~7_combout\ & (\SRLcircuit|Y2[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[4]~7_combout\,
	datac => \SRLcircuit|Y2[2]~33_combout\,
	datad => \A_Y1[36]~6_combout\,
	combout => \SRLcircuit|Y2[2]~40_combout\);

-- Location: IOIBUF_X49_Y0_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X54_Y42_N16
\SRLcircuit|Y1[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~10_combout\ = (\shiftCount[5]~0_combout\ & ((\A[52]~input_o\) # ((\A_s~0_combout\ & \A[20]~input_o\)))) # (!\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \A[20]~input_o\,
	datad => \A[52]~input_o\,
	combout => \SRLcircuit|Y1[2]~10_combout\);

-- Location: IOIBUF_X0_Y42_N8
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X58_Y42_N0
\SRLcircuit|Y1[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[12]~11_combout\ = (\B[4]~input_o\ & ((\A[60]~input_o\))) # (!\B[4]~input_o\ & (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRLcircuit|Y1[12]~11_combout\);

-- Location: IOIBUF_X115_Y36_N8
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X58_Y42_N10
\SRLcircuit|Y1[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[12]~12_combout\ = (\B[4]~input_o\ & (\A[28]~input_o\)) # (!\B[4]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[12]~input_o\,
	combout => \SRLcircuit|Y1[12]~12_combout\);

-- Location: LCCOMB_X58_Y42_N12
\SRLcircuit|Y1[12]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[12]~13_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[12]~11_combout\) # ((\A_s~0_combout\ & \SRLcircuit|Y1[12]~12_combout\)))) # (!\shiftCount[5]~0_combout\ & (((!\A_s~0_combout\ & \SRLcircuit|Y1[12]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y1[12]~11_combout\,
	datac => \A_s~0_combout\,
	datad => \SRLcircuit|Y1[12]~12_combout\,
	combout => \SRLcircuit|Y1[12]~13_combout\);

-- Location: LCCOMB_X55_Y42_N22
\SRLcircuit|Y2[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~41_combout\ = (\SRLcircuit|Y2[2]~40_combout\ & (((\SRLcircuit|Y1[12]~13_combout\) # (\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~40_combout\ & (\SRLcircuit|Y1[2]~10_combout\ & ((!\SRLcircuit|Y2[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~40_combout\,
	datab => \SRLcircuit|Y1[2]~10_combout\,
	datac => \SRLcircuit|Y1[12]~13_combout\,
	datad => \SRLcircuit|Y2[2]~33_combout\,
	combout => \SRLcircuit|Y2[2]~41_combout\);

-- Location: LCCOMB_X57_Y45_N0
\SRLcircuit|Y3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~8_combout\ = (!\B[0]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \SRLcircuit|Y3~8_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X55_Y41_N28
\A_Y1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[6]~5_combout\ = (\A[6]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_Y1[6]~5_combout\);

-- Location: IOIBUF_X115_Y52_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X55_Y41_N18
\A_Y1[38]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[38]~4_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[6]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[38]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[6]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[38]~input_o\,
	combout => \A_Y1[38]~4_combout\);

-- Location: LCCOMB_X54_Y41_N2
\SRLcircuit|Y2[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~38_combout\ = (\SRLcircuit|Y2[2]~33_combout\ & ((\SRLcircuit|Y2[2]~32_combout\ & ((\A_Y1[38]~4_combout\))) # (!\SRLcircuit|Y2[2]~32_combout\ & (\A_Y1[6]~5_combout\)))) # (!\SRLcircuit|Y2[2]~33_combout\ & 
-- (((\SRLcircuit|Y2[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~33_combout\,
	datab => \A_Y1[6]~5_combout\,
	datac => \SRLcircuit|Y2[2]~32_combout\,
	datad => \A_Y1[38]~4_combout\,
	combout => \SRLcircuit|Y2[2]~38_combout\);

-- Location: IOIBUF_X49_Y0_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X55_Y38_N10
\SRLcircuit|Y1[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[14]~8_combout\ = (\B[4]~input_o\ & ((\A[62]~input_o\))) # (!\B[4]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[4]~input_o\,
	datad => \A[62]~input_o\,
	combout => \SRLcircuit|Y1[14]~8_combout\);

-- Location: IOIBUF_X0_Y34_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X55_Y38_N12
\SRAcircuit|Y1[46]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[46]~25_combout\ = (\B[4]~input_o\ & ((\A[30]~input_o\))) # (!\B[4]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[46]~25_combout\);

-- Location: LCCOMB_X55_Y38_N30
\SRLcircuit|Y1[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[14]~9_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[14]~8_combout\) # ((\A_s~0_combout\ & \SRAcircuit|Y1[46]~25_combout\)))) # (!\shiftCount[5]~0_combout\ & (((!\A_s~0_combout\ & \SRAcircuit|Y1[46]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[14]~8_combout\,
	datab => \A_s~0_combout\,
	datac => \SRAcircuit|Y1[46]~25_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[14]~9_combout\);

-- Location: IOIBUF_X27_Y73_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X55_Y41_N24
\SRLcircuit|Y1[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~7_combout\ = (\shiftCount[5]~0_combout\ & ((\A[54]~input_o\) # ((\A[22]~input_o\ & \A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & (\A[22]~input_o\ & ((!\A_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[54]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~7_combout\);

-- Location: LCCOMB_X54_Y41_N12
\SRLcircuit|Y2[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~39_combout\ = (\SRLcircuit|Y2[2]~38_combout\ & ((\SRLcircuit|Y2[2]~33_combout\) # ((\SRLcircuit|Y1[14]~9_combout\)))) # (!\SRLcircuit|Y2[2]~38_combout\ & (!\SRLcircuit|Y2[2]~33_combout\ & ((\SRLcircuit|Y1[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~38_combout\,
	datab => \SRLcircuit|Y2[2]~33_combout\,
	datac => \SRLcircuit|Y1[14]~9_combout\,
	datad => \SRLcircuit|Y1[2]~7_combout\,
	combout => \SRLcircuit|Y2[2]~39_combout\);

-- Location: IOIBUF_X58_Y0_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X56_Y36_N8
\A_Y1[39]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[39]~2_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[7]~input_o\)) # (!\ExtWord~input_o\ & ((\A[39]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[39]~input_o\,
	combout => \A_Y1[39]~2_combout\);

-- Location: IOIBUF_X42_Y0_N22
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X56_Y40_N0
\SRLcircuit|Y1[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[15]~4_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SRLcircuit|Y1[15]~4_combout\);

-- Location: IOIBUF_X0_Y34_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X56_Y40_N10
\SRLcircuit|Y1[15]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[15]~5_combout\ = (\B[4]~input_o\ & ((\A[31]~input_o\))) # (!\B[4]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[31]~input_o\,
	combout => \SRLcircuit|Y1[15]~5_combout\);

-- Location: LCCOMB_X56_Y40_N20
\SRLcircuit|Y1[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[15]~6_combout\ = (\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y1[15]~4_combout\) # ((\A_s~0_combout\ & \SRLcircuit|Y1[15]~5_combout\)))) # (!\shiftCount[5]~0_combout\ & (((!\A_s~0_combout\ & \SRLcircuit|Y1[15]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y1[15]~4_combout\,
	datac => \A_s~0_combout\,
	datad => \SRLcircuit|Y1[15]~5_combout\,
	combout => \SRLcircuit|Y1[15]~6_combout\);

-- Location: LCCOMB_X62_Y42_N0
\A_Y1[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[7]~3_combout\ = (\A[7]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \A_Y1[7]~3_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X56_Y36_N2
\SRLcircuit|Y1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~3_combout\ = (\shiftCount[5]~0_combout\ & ((\A[55]~input_o\) # ((\A_s~0_combout\ & \A[23]~input_o\)))) # (!\shiftCount[5]~0_combout\ & (((!\A_s~0_combout\ & \A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \A_s~0_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A[23]~input_o\,
	combout => \SRLcircuit|Y1[2]~3_combout\);

-- Location: LCCOMB_X55_Y42_N10
\SRLcircuit|Y2[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~36_combout\ = (\SRLcircuit|Y2[2]~33_combout\ & (\A_Y1[7]~3_combout\ & (!\SRLcircuit|Y2[2]~32_combout\))) # (!\SRLcircuit|Y2[2]~33_combout\ & (((\SRLcircuit|Y2[2]~32_combout\) # (\SRLcircuit|Y1[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[7]~3_combout\,
	datab => \SRLcircuit|Y2[2]~33_combout\,
	datac => \SRLcircuit|Y2[2]~32_combout\,
	datad => \SRLcircuit|Y1[2]~3_combout\,
	combout => \SRLcircuit|Y2[2]~36_combout\);

-- Location: LCCOMB_X55_Y42_N4
\SRLcircuit|Y2[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~37_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[2]~36_combout\ & ((\SRLcircuit|Y1[15]~6_combout\))) # (!\SRLcircuit|Y2[2]~36_combout\ & (\A_Y1[39]~2_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & 
-- (((\SRLcircuit|Y2[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[39]~2_combout\,
	datab => \SRLcircuit|Y1[15]~6_combout\,
	datac => \SRLcircuit|Y2[2]~32_combout\,
	datad => \SRLcircuit|Y2[2]~36_combout\,
	combout => \SRLcircuit|Y2[2]~37_combout\);

-- Location: LCCOMB_X57_Y45_N10
\SRLcircuit|Y3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~10_combout\ = (\SRLcircuit|Y3~9_combout\ & ((\SRLcircuit|Y2[2]~37_combout\) # ((\SRLcircuit|Y3~8_combout\ & \SRLcircuit|Y2[2]~39_combout\)))) # (!\SRLcircuit|Y3~9_combout\ & (\SRLcircuit|Y3~8_combout\ & (\SRLcircuit|Y2[2]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~9_combout\,
	datab => \SRLcircuit|Y3~8_combout\,
	datac => \SRLcircuit|Y2[2]~39_combout\,
	datad => \SRLcircuit|Y2[2]~37_combout\,
	combout => \SRLcircuit|Y3~10_combout\);

-- Location: LCCOMB_X57_Y45_N20
\SRLcircuit|Y3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~11_combout\ = (\SRLcircuit|Y3~10_combout\) # ((\SRLcircuit|Y2[2]~41_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~41_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y3~10_combout\,
	combout => \SRLcircuit|Y3~11_combout\);

-- Location: LCCOMB_X57_Y45_N16
\A_Y3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[0]~0_combout\ = (\B[2]~input_o\ & ((\SRAcircuit|Equal7~0_combout\) # ((\SRLcircuit|Y3~11_combout\)))) # (!\B[2]~input_o\ & (!\SRAcircuit|Equal7~0_combout\ & (\SRLcircuit|Y3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRAcircuit|Equal7~0_combout\,
	datac => \SRLcircuit|Y3~16_combout\,
	datad => \SRLcircuit|Y3~11_combout\,
	combout => \A_Y3[0]~0_combout\);

-- Location: LCCOMB_X57_Y45_N18
\A_Y3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[0]~1_combout\ = (\SRAcircuit|Equal7~0_combout\ & ((\A_Y3[0]~0_combout\ & ((\SRLcircuit|Y2[2]~47_combout\))) # (!\A_Y3[0]~0_combout\ & (\SRLcircuit|Y2[1]~35_combout\)))) # (!\SRAcircuit|Equal7~0_combout\ & (((\A_Y3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[1]~35_combout\,
	datab => \SRLcircuit|Y2[2]~47_combout\,
	datac => \SRAcircuit|Equal7~0_combout\,
	datad => \A_Y3[0]~0_combout\,
	combout => \A_Y3[0]~1_combout\);

-- Location: LCCOMB_X62_Y45_N0
\Y~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~52_combout\ = (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Y~52_combout\);

-- Location: LCCOMB_X54_Y37_N8
\SRAcircuit|Y2[34]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[34]~24_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[34]~24_combout\);

-- Location: LCCOMB_X54_Y37_N18
\SRAcircuit|Y2[34]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[34]~25_combout\ = (!\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[34]~25_combout\);

-- Location: LCCOMB_X56_Y38_N0
\SRAcircuit|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Equal2~0_combout\ = (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Equal2~0_combout\);

-- Location: LCCOMB_X52_Y43_N26
\SRAcircuit|Y1[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[33]~66_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[49]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \A[49]~input_o\,
	combout => \SRAcircuit|Y1[33]~66_combout\);

-- Location: LCCOMB_X52_Y43_N4
\SRAcircuit|Y1[33]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[33]~67_combout\ = (\SRAcircuit|Y1[33]~66_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Y1[33]~66_combout\,
	datad => \A[33]~input_o\,
	combout => \SRAcircuit|Y1[33]~67_combout\);

-- Location: LCCOMB_X57_Y42_N2
\SRAcircuit|Y1[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[33]~65_combout\ = (\B[4]~input_o\ & ((\A[17]~input_o\))) # (!\B[4]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \SRAcircuit|Y1[33]~65_combout\);

-- Location: LCCOMB_X53_Y40_N6
\SRAcircuit|Y1[33]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[33]~119_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[33]~65_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[33]~67_combout\)))) # (!\ExtWord~input_o\ & (((\SRAcircuit|Y1[33]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRAcircuit|Y1[33]~67_combout\,
	datad => \SRAcircuit|Y1[33]~65_combout\,
	combout => \SRAcircuit|Y1[33]~119_combout\);

-- Location: LCCOMB_X53_Y38_N28
\SRAcircuit|Y1[41]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[41]~63_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[57]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Equal2~0_combout\,
	datad => \A[57]~input_o\,
	combout => \SRAcircuit|Y1[41]~63_combout\);

-- Location: LCCOMB_X53_Y38_N30
\SRAcircuit|Y1[41]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[41]~64_combout\ = (\SRAcircuit|Y1[41]~63_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[41]~input_o\,
	datad => \SRAcircuit|Y1[41]~63_combout\,
	combout => \SRAcircuit|Y1[41]~64_combout\);

-- Location: LCCOMB_X56_Y42_N20
\SRAcircuit|Y1[41]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[41]~118_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[41]~24_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[41]~64_combout\)))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[41]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRAcircuit|Y1[41]~64_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRAcircuit|Y1[41]~24_combout\,
	combout => \SRAcircuit|Y1[41]~118_combout\);

-- Location: LCCOMB_X55_Y40_N24
\SRAcircuit|Y2[33]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[33]~35_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRAcircuit|Y1[33]~119_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[41]~118_combout\)))) # (!\SRAcircuit|Y2[34]~24_combout\ & (\SRAcircuit|Y2[34]~25_combout\ & 
-- ((\SRAcircuit|Y1[41]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y1[33]~119_combout\,
	datad => \SRAcircuit|Y1[41]~118_combout\,
	combout => \SRAcircuit|Y2[33]~35_combout\);

-- Location: LCCOMB_X53_Y41_N24
\SRAcircuit|Y2[51]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[51]~27_combout\ = (\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[51]~27_combout\);

-- Location: LCCOMB_X53_Y38_N24
\SRAcircuit|Y1[45]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[45]~71_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[61]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[61]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y1[45]~71_combout\);

-- Location: LCCOMB_X53_Y38_N18
\SRAcircuit|Y1[45]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[45]~72_combout\ = (\SRAcircuit|Y1[45]~71_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[45]~input_o\,
	datad => \SRAcircuit|Y1[45]~71_combout\,
	combout => \SRAcircuit|Y1[45]~72_combout\);

-- Location: LCCOMB_X53_Y40_N0
\SRAcircuit|Y1[45]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[45]~121_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[45]~28_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[45]~72_combout\)))) # (!\ExtWord~input_o\ & (((\SRAcircuit|Y1[45]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SRAcircuit|Y1[45]~72_combout\,
	datad => \SRAcircuit|Y1[45]~28_combout\,
	combout => \SRAcircuit|Y1[45]~121_combout\);

-- Location: LCCOMB_X58_Y45_N0
\SRAcircuit|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Equal4~0_combout\ = (\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SRAcircuit|Equal4~0_combout\);

-- Location: LCCOMB_X52_Y43_N6
\SRAcircuit|Y1[37]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[37]~69_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & (\A[53]~input_o\)) # (!\SRAcircuit|Equal2~0_combout\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[53]~input_o\,
	datad => \A[63]~input_o\,
	combout => \SRAcircuit|Y1[37]~69_combout\);

-- Location: LCCOMB_X52_Y43_N24
\SRAcircuit|Y1[37]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[37]~70_combout\ = (\SRAcircuit|Y1[37]~69_combout\) # ((\A[37]~input_o\ & \SRLcircuit|Y2[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRAcircuit|Y1[37]~69_combout\,
	combout => \SRAcircuit|Y1[37]~70_combout\);

-- Location: LCCOMB_X55_Y43_N22
\SRAcircuit|Y1[37]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[37]~68_combout\ = (\B[4]~input_o\ & (\A[21]~input_o\)) # (!\B[4]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[21]~input_o\,
	datac => \A[5]~input_o\,
	combout => \SRAcircuit|Y1[37]~68_combout\);

-- Location: LCCOMB_X56_Y36_N6
\SRAcircuit|Y1[37]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[37]~120_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRAcircuit|Y1[37]~68_combout\))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[37]~70_combout\)))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[37]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[37]~70_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRAcircuit|Y1[37]~68_combout\,
	combout => \SRAcircuit|Y1[37]~120_combout\);

-- Location: LCCOMB_X55_Y40_N26
\SRAcircuit|Y2[33]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[33]~36_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[45]~121_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \SRAcircuit|Y1[37]~120_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (((\SRAcircuit|Equal4~0_combout\ & 
-- \SRAcircuit|Y1[37]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[45]~121_combout\,
	datac => \SRAcircuit|Equal4~0_combout\,
	datad => \SRAcircuit|Y1[37]~120_combout\,
	combout => \SRAcircuit|Y2[33]~36_combout\);

-- Location: LCCOMB_X55_Y40_N20
\SRAcircuit|Y2[33]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[33]~37_combout\ = (\SRAcircuit|Y2[33]~35_combout\) # (\SRAcircuit|Y2[33]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Y2[33]~35_combout\,
	datac => \SRAcircuit|Y2[33]~36_combout\,
	combout => \SRAcircuit|Y2[33]~37_combout\);

-- Location: LCCOMB_X52_Y43_N20
\SRAcircuit|Y1[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[38]~37_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[54]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \A[54]~input_o\,
	combout => \SRAcircuit|Y1[38]~37_combout\);

-- Location: LCCOMB_X52_Y43_N22
\SRAcircuit|Y1[38]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[38]~38_combout\ = (\SRAcircuit|Y1[38]~37_combout\) # ((\A[38]~input_o\ & \SRLcircuit|Y2[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRAcircuit|Y1[38]~37_combout\,
	combout => \SRAcircuit|Y1[38]~38_combout\);

-- Location: LCCOMB_X55_Y41_N14
\SRAcircuit|Y1[38]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[38]~36_combout\ = (\B[4]~input_o\ & ((\A[22]~input_o\))) # (!\B[4]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SRAcircuit|Y1[38]~36_combout\);

-- Location: LCCOMB_X55_Y41_N20
\SRAcircuit|Y1[38]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[38]~113_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[38]~36_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[38]~38_combout\)))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[38]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRAcircuit|Y1[38]~38_combout\,
	datac => \SRAcircuit|Y1[38]~36_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SRAcircuit|Y1[38]~113_combout\);

-- Location: LCCOMB_X55_Y38_N24
\SRAcircuit|Y1[46]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[46]~34_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[62]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[63]~input_o\,
	datad => \A[62]~input_o\,
	combout => \SRAcircuit|Y1[46]~34_combout\);

-- Location: LCCOMB_X55_Y38_N2
\SRAcircuit|Y1[46]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[46]~35_combout\ = (\SRAcircuit|Y1[46]~34_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \SRAcircuit|Y1[46]~34_combout\,
	datad => \A[46]~input_o\,
	combout => \SRAcircuit|Y1[46]~35_combout\);

-- Location: LCCOMB_X55_Y38_N22
\SRAcircuit|Y1[46]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[46]~112_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[46]~25_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[46]~35_combout\)))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[46]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRAcircuit|Y1[46]~35_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRAcircuit|Y1[46]~25_combout\,
	combout => \SRAcircuit|Y1[46]~112_combout\);

-- Location: LCCOMB_X59_Y40_N2
\SRAcircuit|Y2[34]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[34]~28_combout\ = (\SRAcircuit|Y1[38]~113_combout\ & ((\SRAcircuit|Equal4~0_combout\) # ((\SRAcircuit|Y2[51]~27_combout\ & \SRAcircuit|Y1[46]~112_combout\)))) # (!\SRAcircuit|Y1[38]~113_combout\ & (((\SRAcircuit|Y2[51]~27_combout\ & 
-- \SRAcircuit|Y1[46]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[38]~113_combout\,
	datab => \SRAcircuit|Equal4~0_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[46]~112_combout\,
	combout => \SRAcircuit|Y2[34]~28_combout\);

-- Location: LCCOMB_X52_Y43_N16
\SRAcircuit|Y1[34]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[34]~32_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & (\A[50]~input_o\)) # (!\SRAcircuit|Equal2~0_combout\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[50]~input_o\,
	datad => \A[63]~input_o\,
	combout => \SRAcircuit|Y1[34]~32_combout\);

-- Location: LCCOMB_X52_Y43_N18
\SRAcircuit|Y1[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[34]~33_combout\ = (\SRAcircuit|Y1[34]~32_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[34]~input_o\,
	datad => \SRAcircuit|Y1[34]~32_combout\,
	combout => \SRAcircuit|Y1[34]~33_combout\);

-- Location: LCCOMB_X56_Y39_N28
\SRAcircuit|Y1[34]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[34]~31_combout\ = (\B[4]~input_o\ & ((\A[18]~input_o\))) # (!\B[4]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SRAcircuit|Y1[34]~31_combout\);

-- Location: LCCOMB_X53_Y40_N20
\SRAcircuit|Y1[34]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[34]~111_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRAcircuit|Y1[34]~31_combout\))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[34]~33_combout\)))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[34]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[34]~33_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SRAcircuit|Y1[34]~31_combout\,
	combout => \SRAcircuit|Y1[34]~111_combout\);

-- Location: LCCOMB_X53_Y38_N16
\SRAcircuit|Y1[42]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[42]~29_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[58]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[58]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y1[42]~29_combout\);

-- Location: LCCOMB_X53_Y38_N26
\SRAcircuit|Y1[42]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[42]~30_combout\ = (\SRAcircuit|Y1[42]~29_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[42]~input_o\,
	datad => \SRAcircuit|Y1[42]~29_combout\,
	combout => \SRAcircuit|Y1[42]~30_combout\);

-- Location: LCCOMB_X57_Y38_N22
\SRAcircuit|Y1[42]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[42]~110_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[42]~26_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[42]~30_combout\)))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[42]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \SRAcircuit|Y1[42]~30_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRAcircuit|Y1[42]~26_combout\,
	combout => \SRAcircuit|Y1[42]~110_combout\);

-- Location: LCCOMB_X59_Y40_N24
\SRAcircuit|Y2[34]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[34]~26_combout\ = (\SRAcircuit|Y1[34]~111_combout\ & ((\SRAcircuit|Y2[34]~24_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[42]~110_combout\)))) # (!\SRAcircuit|Y1[34]~111_combout\ & (\SRAcircuit|Y2[34]~25_combout\ & 
-- (\SRAcircuit|Y1[42]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[34]~111_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y1[42]~110_combout\,
	datad => \SRAcircuit|Y2[34]~24_combout\,
	combout => \SRAcircuit|Y2[34]~26_combout\);

-- Location: LCCOMB_X59_Y40_N20
\SRAcircuit|Y2[34]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[34]~29_combout\ = (\SRAcircuit|Y2[34]~28_combout\) # (\SRAcircuit|Y2[34]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Y2[34]~28_combout\,
	datad => \SRAcircuit|Y2[34]~26_combout\,
	combout => \SRAcircuit|Y2[34]~29_combout\);

-- Location: LCCOMB_X65_Y40_N8
\seA_Y3[20]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[20]~0_combout\ = \B[1]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[20]~0_combout\);

-- Location: LCCOMB_X53_Y38_N4
\SRAcircuit|Y1[43]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[43]~55_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[59]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Equal2~0_combout\,
	datad => \A[59]~input_o\,
	combout => \SRAcircuit|Y1[43]~55_combout\);

-- Location: LCCOMB_X53_Y40_N2
\SRAcircuit|Y1[43]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[43]~56_combout\ = (\SRAcircuit|Y1[43]~55_combout\) # ((\A[43]~input_o\ & \SRLcircuit|Y2[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRAcircuit|Y1[43]~55_combout\,
	combout => \SRAcircuit|Y1[43]~56_combout\);

-- Location: LCCOMB_X54_Y40_N12
\SRAcircuit|Y1[43]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[43]~114_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[43]~27_combout\))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[43]~56_combout\)))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[43]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[43]~56_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRAcircuit|Y1[43]~27_combout\,
	combout => \SRAcircuit|Y1[43]~114_combout\);

-- Location: LCCOMB_X54_Y43_N30
\SRAcircuit|Y1[35]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[35]~57_combout\ = (\B[4]~input_o\ & (\A[19]~input_o\)) # (!\B[4]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[35]~57_combout\);

-- Location: LCCOMB_X53_Y38_N14
\SRAcircuit|Y1[35]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[35]~58_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[51]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \A[51]~input_o\,
	datac => \SRAcircuit|Equal2~0_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y1[35]~58_combout\);

-- Location: LCCOMB_X54_Y43_N24
\SRAcircuit|Y1[35]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[35]~59_combout\ = (\SRAcircuit|Y1[35]~58_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \SRAcircuit|Y1[35]~58_combout\,
	datac => \A[35]~input_o\,
	combout => \SRAcircuit|Y1[35]~59_combout\);

-- Location: LCCOMB_X54_Y40_N14
\SRAcircuit|Y1[35]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[35]~115_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[35]~57_combout\)) # (!\ShiftFN[1]~input_o\ & ((\SRAcircuit|Y1[35]~59_combout\))))) # (!\ExtWord~input_o\ & (((\SRAcircuit|Y1[35]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[35]~57_combout\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \SRAcircuit|Y1[35]~59_combout\,
	combout => \SRAcircuit|Y1[35]~115_combout\);

-- Location: LCCOMB_X54_Y40_N16
\SRAcircuit|Y2[35]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[35]~33_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[43]~114_combout\)) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[35]~115_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[43]~114_combout\,
	datab => \B[2]~input_o\,
	datac => \SRAcircuit|Y1[35]~115_combout\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[35]~33_combout\);

-- Location: LCCOMB_X56_Y40_N8
\SRLcircuit|Y2[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~49_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[15]~input_o\)) # (!\A_s~0_combout\ & ((\A[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SRLcircuit|Y2[2]~49_combout\);

-- Location: LCCOMB_X56_Y38_N10
\A_Y1[63]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[63]~14_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[31]~input_o\))) # (!\ExtWord~input_o\ & (\A[63]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[63]~input_o\,
	datac => \A[31]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_Y1[63]~14_combout\);

-- Location: LCCOMB_X54_Y41_N20
\SRAcircuit|Y1[47]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[47]~117_combout\ = (\A_Y1[63]~14_combout\ & ((\B[4]~input_o\) # ((!\ExtWord~input_o\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[5]~input_o\,
	datac => \A_Y1[63]~14_combout\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[47]~117_combout\);

-- Location: LCCOMB_X53_Y38_N0
\SRAcircuit|Y1[39]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[39]~61_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & ((\A[55]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Equal2~0_combout\,
	datad => \A[55]~input_o\,
	combout => \SRAcircuit|Y1[39]~61_combout\);

-- Location: LCCOMB_X53_Y38_N10
\SRAcircuit|Y1[39]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[39]~62_combout\ = (\SRAcircuit|Y1[39]~61_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[39]~input_o\,
	datad => \SRAcircuit|Y1[39]~61_combout\,
	combout => \SRAcircuit|Y1[39]~62_combout\);

-- Location: LCCOMB_X56_Y36_N12
\SRAcircuit|Y1[39]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[39]~60_combout\ = (\B[4]~input_o\ & ((\A[23]~input_o\))) # (!\B[4]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[23]~input_o\,
	combout => \SRAcircuit|Y1[39]~60_combout\);

-- Location: LCCOMB_X55_Y41_N30
\SRAcircuit|Y1[39]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[39]~116_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\SRAcircuit|Y1[39]~60_combout\))) # (!\ExtWord~input_o\ & (\SRAcircuit|Y1[39]~62_combout\)))) # (!\ShiftFN[1]~input_o\ & (\SRAcircuit|Y1[39]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \SRAcircuit|Y1[39]~62_combout\,
	datac => \ExtWord~input_o\,
	datad => \SRAcircuit|Y1[39]~60_combout\,
	combout => \SRAcircuit|Y1[39]~116_combout\);

-- Location: LCCOMB_X54_Y40_N10
\SRLcircuit|Y2[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~50_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~49_combout\) # ((\SRAcircuit|Y1[47]~117_combout\)))) # (!\B[3]~input_o\ & (((\SRAcircuit|Y1[39]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~49_combout\,
	datab => \SRAcircuit|Y1[47]~117_combout\,
	datac => \SRAcircuit|Y1[39]~116_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~50_combout\);

-- Location: LCCOMB_X54_Y40_N28
\SRAcircuit|Y2[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[35]~34_combout\ = (\SRAcircuit|Y2[35]~33_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Y2[35]~33_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~50_combout\,
	combout => \SRAcircuit|Y2[35]~34_combout\);

-- Location: LCCOMB_X56_Y44_N22
\SRAcircuit|Y1[40]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[40]~41_combout\ = (\SRAcircuit|Equal2~0_combout\ & ((\A[24]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[24]~input_o\,
	datac => \SRAcircuit|Equal2~0_combout\,
	combout => \SRAcircuit|Y1[40]~41_combout\);

-- Location: LCCOMB_X52_Y43_N0
\SRAcircuit|Y1[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[40]~39_combout\ = (\SRAcircuit|Equal2~0_combout\ & (\A[56]~input_o\)) # (!\SRAcircuit|Equal2~0_combout\ & ((\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[56]~input_o\,
	datad => \A[63]~input_o\,
	combout => \SRAcircuit|Y1[40]~39_combout\);

-- Location: LCCOMB_X57_Y44_N6
\SRAcircuit|Y1[40]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[40]~40_combout\ = (\A_s~0_combout\ & (((\A[8]~input_o\) # (!\SRLcircuit|Y2[2]~48_combout\)))) # (!\A_s~0_combout\ & (\A[40]~input_o\ & ((\SRLcircuit|Y2[2]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \A[40]~input_o\,
	datac => \A[8]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y1[40]~40_combout\);

-- Location: LCCOMB_X56_Y44_N16
\SRAcircuit|Y1[40]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[40]~42_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (((\SRAcircuit|Y1[40]~40_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y1[40]~40_combout\ & (\SRAcircuit|Y1[40]~41_combout\)) # (!\SRAcircuit|Y1[40]~40_combout\ & 
-- ((\SRAcircuit|Y1[40]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[40]~41_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Y1[40]~39_combout\,
	datad => \SRAcircuit|Y1[40]~40_combout\,
	combout => \SRAcircuit|Y1[40]~42_combout\);

-- Location: LCCOMB_X56_Y44_N6
\SRAcircuit|Y1[32]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[32]~45_combout\ = (\SRAcircuit|Equal2~0_combout\ & (\A[16]~input_o\)) # (!\SRAcircuit|Equal2~0_combout\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal2~0_combout\,
	datac => \A[16]~input_o\,
	datad => \A[31]~input_o\,
	combout => \SRAcircuit|Y1[32]~45_combout\);

-- Location: LCCOMB_X56_Y44_N4
\SRAcircuit|Y1[32]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[32]~44_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[0]~input_o\)) # (!\A_s~0_combout\ & ((\A[32]~input_o\))))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_s~0_combout\,
	datad => \A[32]~input_o\,
	combout => \SRAcircuit|Y1[32]~44_combout\);

-- Location: LCCOMB_X56_Y44_N10
\SRAcircuit|Y1[32]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[32]~43_combout\ = (\SRAcircuit|Equal2~0_combout\ & ((\A[48]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \SRAcircuit|Equal2~0_combout\,
	datad => \A[48]~input_o\,
	combout => \SRAcircuit|Y1[32]~43_combout\);

-- Location: LCCOMB_X56_Y44_N0
\SRAcircuit|Y1[32]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[32]~46_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (((\SRAcircuit|Y1[32]~44_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y1[32]~44_combout\ & (\SRAcircuit|Y1[32]~45_combout\)) # (!\SRAcircuit|Y1[32]~44_combout\ & 
-- ((\SRAcircuit|Y1[32]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[32]~45_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Y1[32]~44_combout\,
	datad => \SRAcircuit|Y1[32]~43_combout\,
	combout => \SRAcircuit|Y1[32]~46_combout\);

-- Location: LCCOMB_X59_Y43_N8
\SRAcircuit|Y2[32]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[32]~30_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRAcircuit|Y1[32]~46_combout\) # ((\SRAcircuit|Y1[40]~42_combout\ & \SRAcircuit|Y2[34]~25_combout\)))) # (!\SRAcircuit|Y2[34]~24_combout\ & (\SRAcircuit|Y1[40]~42_combout\ & 
-- ((\SRAcircuit|Y2[34]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \SRAcircuit|Y1[40]~42_combout\,
	datac => \SRAcircuit|Y1[32]~46_combout\,
	datad => \SRAcircuit|Y2[34]~25_combout\,
	combout => \SRAcircuit|Y2[32]~30_combout\);

-- Location: LCCOMB_X54_Y42_N10
\SRAcircuit|Y1[36]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[36]~48_combout\ = (\A_s~0_combout\ & ((\A[4]~input_o\) # ((!\SRLcircuit|Y2[2]~48_combout\)))) # (!\A_s~0_combout\ & (((\A[36]~input_o\ & \SRLcircuit|Y2[2]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \A[4]~input_o\,
	datac => \A[36]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y1[36]~48_combout\);

-- Location: LCCOMB_X54_Y42_N24
\SRAcircuit|Y1[36]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[36]~47_combout\ = (\SRAcircuit|Equal2~0_combout\ & ((\A[52]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datad => \A[52]~input_o\,
	combout => \SRAcircuit|Y1[36]~47_combout\);

-- Location: LCCOMB_X54_Y42_N4
\SRAcircuit|Y1[36]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[36]~49_combout\ = (\SRAcircuit|Equal2~0_combout\ & ((\A[20]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \A[20]~input_o\,
	datad => \SRAcircuit|Equal2~0_combout\,
	combout => \SRAcircuit|Y1[36]~49_combout\);

-- Location: LCCOMB_X54_Y42_N6
\SRAcircuit|Y1[36]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[36]~50_combout\ = (\SRAcircuit|Y1[36]~48_combout\ & (((\SRAcircuit|Y1[36]~49_combout\) # (\SRLcircuit|Y2[2]~48_combout\)))) # (!\SRAcircuit|Y1[36]~48_combout\ & (\SRAcircuit|Y1[36]~47_combout\ & ((!\SRLcircuit|Y2[2]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[36]~48_combout\,
	datab => \SRAcircuit|Y1[36]~47_combout\,
	datac => \SRAcircuit|Y1[36]~49_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y1[36]~50_combout\);

-- Location: LCCOMB_X58_Y42_N8
\SRAcircuit|Y1[44]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[44]~53_combout\ = (\SRAcircuit|Equal2~0_combout\ & (\A[28]~input_o\)) # (!\SRAcircuit|Equal2~0_combout\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal2~0_combout\,
	datac => \A[28]~input_o\,
	datad => \A[31]~input_o\,
	combout => \SRAcircuit|Y1[44]~53_combout\);

-- Location: LCCOMB_X56_Y40_N14
\SRAcircuit|Y1[44]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[44]~51_combout\ = (\SRAcircuit|Equal2~0_combout\ & ((\A[60]~input_o\))) # (!\SRAcircuit|Equal2~0_combout\ & (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \A[60]~input_o\,
	datad => \SRAcircuit|Equal2~0_combout\,
	combout => \SRAcircuit|Y1[44]~51_combout\);

-- Location: LCCOMB_X58_Y42_N14
\SRAcircuit|Y1[44]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[44]~52_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & ((\A[12]~input_o\))) # (!\A_s~0_combout\ & (\A[44]~input_o\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_s~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_s~0_combout\,
	datad => \A[12]~input_o\,
	combout => \SRAcircuit|Y1[44]~52_combout\);

-- Location: LCCOMB_X59_Y42_N0
\SRAcircuit|Y1[44]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[44]~54_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (((\SRAcircuit|Y1[44]~52_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y1[44]~52_combout\ & (\SRAcircuit|Y1[44]~53_combout\)) # (!\SRAcircuit|Y1[44]~52_combout\ & 
-- ((\SRAcircuit|Y1[44]~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[44]~53_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Y1[44]~51_combout\,
	datad => \SRAcircuit|Y1[44]~52_combout\,
	combout => \SRAcircuit|Y1[44]~54_combout\);

-- Location: LCCOMB_X59_Y43_N2
\SRAcircuit|Y2[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[32]~31_combout\ = (\SRAcircuit|Y1[36]~50_combout\ & ((\SRAcircuit|Equal4~0_combout\) # ((\SRAcircuit|Y2[51]~27_combout\ & \SRAcircuit|Y1[44]~54_combout\)))) # (!\SRAcircuit|Y1[36]~50_combout\ & (((\SRAcircuit|Y2[51]~27_combout\ & 
-- \SRAcircuit|Y1[44]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[36]~50_combout\,
	datab => \SRAcircuit|Equal4~0_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[44]~54_combout\,
	combout => \SRAcircuit|Y2[32]~31_combout\);

-- Location: LCCOMB_X60_Y40_N0
\SRAcircuit|Y2[32]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[32]~32_combout\ = (\SRAcircuit|Y2[32]~30_combout\) # (\SRAcircuit|Y2[32]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[32]~30_combout\,
	datac => \SRAcircuit|Y2[32]~31_combout\,
	combout => \SRAcircuit|Y2[32]~32_combout\);

-- Location: LCCOMB_X60_Y40_N10
\seA_Y3[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[0]~1_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[35]~34_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[32]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[35]~34_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[32]~32_combout\,
	combout => \seA_Y3[0]~1_combout\);

-- Location: LCCOMB_X60_Y40_N4
\seA_Y3[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[0]~2_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[0]~1_combout\ & (\SRAcircuit|Y2[33]~37_combout\)) # (!\seA_Y3[0]~1_combout\ & ((\SRAcircuit|Y2[34]~29_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[33]~37_combout\,
	datab => \SRAcircuit|Y2[34]~29_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \seA_Y3[0]~1_combout\,
	combout => \seA_Y3[0]~2_combout\);

-- Location: LCCOMB_X58_Y39_N22
\A_Y1[61]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[61]~27_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[29]~input_o\))) # (!\ExtWord~input_o\ & (\A[61]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[29]~input_o\,
	combout => \A_Y1[61]~27_combout\);

-- Location: LCCOMB_X58_Y39_N24
\SRLcircuit|Y1[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~38_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[13]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[45]~input_o\)))) # (!\ExtWord~input_o\ & (((\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[45]~input_o\,
	datad => \A[13]~input_o\,
	combout => \SRLcircuit|Y1[2]~38_combout\);

-- Location: LCCOMB_X58_Y39_N2
\SRLcircuit|Y1[45]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[45]~39_combout\ = (\B[4]~input_o\ & (\A_Y1[61]~27_combout\)) # (!\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[61]~27_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~38_combout\,
	combout => \SRLcircuit|Y1[45]~39_combout\);

-- Location: LCCOMB_X55_Y43_N8
\A_Y1[53]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[53]~28_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[21]~input_o\)) # (!\ExtWord~input_o\ & ((\A[53]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[21]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[53]~input_o\,
	combout => \A_Y1[53]~28_combout\);

-- Location: LCCOMB_X55_Y43_N26
\SRLcircuit|Y2[2]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~65_combout\ = (\B[4]~input_o\ & ((\A_Y1[53]~28_combout\))) # (!\B[4]~input_o\ & (\A_Y1[37]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[37]~12_combout\,
	datab => \A_Y1[53]~28_combout\,
	datac => \B[4]~input_o\,
	combout => \SRLcircuit|Y2[2]~65_combout\);

-- Location: LCCOMB_X59_Y41_N8
\SRLcircuit|Y2[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~66_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y1[45]~39_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[45]~39_combout\,
	datab => \SRLcircuit|Y2[2]~65_combout\,
	datac => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~66_combout\);

-- Location: LCCOMB_X59_Y38_N10
\SRLcircuit|Y1[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[41]~40_combout\ = (!\B[4]~input_o\ & ((\A_s~0_combout\ & ((\A[9]~input_o\))) # (!\A_s~0_combout\ & (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[41]~input_o\,
	datac => \A_s~0_combout\,
	datad => \A[9]~input_o\,
	combout => \SRLcircuit|Y1[41]~40_combout\);

-- Location: LCCOMB_X56_Y38_N28
\A_Y1[57]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[57]~29_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[25]~input_o\))) # (!\ExtWord~input_o\ & (\A[57]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[25]~input_o\,
	combout => \A_Y1[57]~29_combout\);

-- Location: LCCOMB_X59_Y41_N18
\SRLcircuit|Y1[41]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[41]~41_combout\ = (\SRLcircuit|Y1[41]~40_combout\) # ((\B[4]~input_o\ & \A_Y1[57]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \SRLcircuit|Y1[41]~40_combout\,
	datad => \A_Y1[57]~29_combout\,
	combout => \SRLcircuit|Y1[41]~41_combout\);

-- Location: LCCOMB_X55_Y38_N18
\A_Y1[49]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[49]~30_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[17]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[49]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[49]~input_o\,
	combout => \A_Y1[49]~30_combout\);

-- Location: LCCOMB_X59_Y41_N12
\SRLcircuit|Y2[2]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~67_combout\ = (\B[4]~input_o\ & ((\A_Y1[49]~30_combout\))) # (!\B[4]~input_o\ & (\A_Y1[33]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A_Y1[33]~0_combout\,
	datad => \A_Y1[49]~30_combout\,
	combout => \SRLcircuit|Y2[2]~67_combout\);

-- Location: LCCOMB_X59_Y41_N14
\SRLcircuit|Y2[2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~68_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y1[41]~41_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y1[41]~41_combout\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y2[2]~67_combout\,
	combout => \SRLcircuit|Y2[2]~68_combout\);

-- Location: LCCOMB_X58_Y41_N18
\SRLcircuit|Y2[33]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[33]~69_combout\ = (!\shiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRLcircuit|Y2[2]~66_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y2[2]~66_combout\,
	datac => \SRLcircuit|Y2[2]~68_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[33]~69_combout\);

-- Location: LCCOMB_X55_Y44_N20
\SRLcircuit|Y1[2]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~32_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[0]~input_o\)) # (!\ExtWord~input_o\ & ((\A[32]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[32]~input_o\,
	combout => \SRLcircuit|Y1[2]~32_combout\);

-- Location: LCCOMB_X55_Y44_N2
\A_Y1[48]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[48]~22_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[16]~input_o\))) # (!\ExtWord~input_o\ & (\A[48]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[48]~input_o\,
	datad => \A[16]~input_o\,
	combout => \A_Y1[48]~22_combout\);

-- Location: LCCOMB_X55_Y44_N22
\SRLcircuit|Y1[32]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[32]~33_combout\ = (\B[4]~input_o\ & ((\A_Y1[48]~22_combout\))) # (!\B[4]~input_o\ & (\SRLcircuit|Y1[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y1[2]~32_combout\,
	datac => \B[4]~input_o\,
	datad => \A_Y1[48]~22_combout\,
	combout => \SRLcircuit|Y1[32]~33_combout\);

-- Location: LCCOMB_X57_Y44_N8
\A_Y1[56]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[56]~21_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[24]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[56]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[56]~input_o\,
	combout => \A_Y1[56]~21_combout\);

-- Location: LCCOMB_X57_Y44_N2
\SRLcircuit|Y1[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~30_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[8]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[40]~input_o\)))) # (!\ExtWord~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[8]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SRLcircuit|Y1[2]~30_combout\);

-- Location: LCCOMB_X57_Y44_N20
\SRLcircuit|Y1[40]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[40]~31_combout\ = (\B[4]~input_o\ & (\A_Y1[56]~21_combout\)) # (!\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A_Y1[56]~21_combout\,
	datad => \SRLcircuit|Y1[2]~30_combout\,
	combout => \SRLcircuit|Y1[40]~31_combout\);

-- Location: LCCOMB_X56_Y41_N12
\SRLcircuit|Y2[28]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[28]~58_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y1[40]~31_combout\))) # (!\B[3]~input_o\ & (\SRLcircuit|Y1[32]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[32]~33_combout\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y1[40]~31_combout\,
	combout => \SRLcircuit|Y2[28]~58_combout\);

-- Location: LCCOMB_X58_Y38_N18
\A_Y1[60]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[60]~19_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[28]~input_o\))) # (!\ExtWord~input_o\ & (\A[60]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[60]~input_o\,
	datac => \A[28]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_Y1[60]~19_combout\);

-- Location: LCCOMB_X58_Y42_N2
\SRLcircuit|Y1[44]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[44]~28_combout\ = (!\B[4]~input_o\ & ((\A_s~0_combout\ & (\A[12]~input_o\)) # (!\A_s~0_combout\ & ((\A[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A_s~0_combout\,
	datad => \A[44]~input_o\,
	combout => \SRLcircuit|Y1[44]~28_combout\);

-- Location: LCCOMB_X58_Y42_N28
\SRLcircuit|Y1[44]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[44]~29_combout\ = (\SRLcircuit|Y1[44]~28_combout\) # ((\A_Y1[60]~19_combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Y1[60]~19_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[44]~28_combout\,
	combout => \SRLcircuit|Y1[44]~29_combout\);

-- Location: LCCOMB_X54_Y42_N0
\A_Y1[52]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[52]~20_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[20]~input_o\)) # (!\ExtWord~input_o\ & ((\A[52]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[52]~input_o\,
	combout => \A_Y1[52]~20_combout\);

-- Location: LCCOMB_X56_Y41_N8
\SRLcircuit|Y2[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~56_combout\ = (\B[4]~input_o\ & (\A_Y1[52]~20_combout\)) # (!\B[4]~input_o\ & ((\A_Y1[36]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[52]~20_combout\,
	datac => \B[4]~input_o\,
	datad => \A_Y1[36]~6_combout\,
	combout => \SRLcircuit|Y2[2]~56_combout\);

-- Location: LCCOMB_X56_Y41_N18
\SRLcircuit|Y2[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~57_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y1[44]~29_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[44]~29_combout\,
	datab => \SRLcircuit|Y2[2]~56_combout\,
	datac => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~57_combout\);

-- Location: LCCOMB_X56_Y41_N14
\SRLcircuit|Y2[32]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[32]~59_combout\ = (!\shiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~57_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[28]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[28]~58_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~57_combout\,
	combout => \SRLcircuit|Y2[32]~59_combout\);

-- Location: LCCOMB_X58_Y38_N20
\A_Y1[58]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[58]~25_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[26]~input_o\)) # (!\ExtWord~input_o\ & ((\A[58]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[58]~input_o\,
	combout => \A_Y1[58]~25_combout\);

-- Location: LCCOMB_X58_Y38_N6
\SRLcircuit|Y1[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~36_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & ((\A[10]~input_o\))) # (!\ShiftFN[1]~input_o\ & (\A[42]~input_o\)))) # (!\ExtWord~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[10]~input_o\,
	combout => \SRLcircuit|Y1[2]~36_combout\);

-- Location: LCCOMB_X58_Y38_N8
\SRLcircuit|Y1[42]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[42]~37_combout\ = (\B[4]~input_o\ & (\A_Y1[58]~25_combout\)) # (!\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Y1[58]~25_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~36_combout\,
	combout => \SRLcircuit|Y1[42]~37_combout\);

-- Location: LCCOMB_X56_Y39_N30
\A_Y1[50]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[50]~26_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[18]~input_o\))) # (!\ExtWord~input_o\ & (\A[50]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[18]~input_o\,
	combout => \A_Y1[50]~26_combout\);

-- Location: LCCOMB_X56_Y39_N16
\SRLcircuit|Y2[2]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~62_combout\ = (\B[4]~input_o\ & (\A_Y1[50]~26_combout\)) # (!\B[4]~input_o\ & ((\A_Y1[34]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[50]~26_combout\,
	datac => \B[4]~input_o\,
	datad => \A_Y1[34]~8_combout\,
	combout => \SRLcircuit|Y2[2]~62_combout\);

-- Location: LCCOMB_X57_Y40_N26
\SRLcircuit|Y2[2]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~63_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y1[42]~37_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRLcircuit|Y1[42]~37_combout\,
	datad => \SRLcircuit|Y2[2]~62_combout\,
	combout => \SRLcircuit|Y2[2]~63_combout\);

-- Location: LCCOMB_X55_Y38_N14
\SRLcircuit|Y1[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~34_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[14]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[46]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[46]~input_o\,
	combout => \SRLcircuit|Y1[2]~34_combout\);

-- Location: LCCOMB_X55_Y38_N28
\A_Y1[62]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[62]~23_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\A[30]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\A[62]~input_o\))))) # (!\ExtWord~input_o\ & (((\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \A[62]~input_o\,
	combout => \A_Y1[62]~23_combout\);

-- Location: LCCOMB_X55_Y38_N8
\SRLcircuit|Y1[46]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[46]~35_combout\ = (\B[4]~input_o\ & ((\A_Y1[62]~23_combout\))) # (!\B[4]~input_o\ & (\SRLcircuit|Y1[2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y1[2]~34_combout\,
	datac => \A_Y1[62]~23_combout\,
	datad => \B[4]~input_o\,
	combout => \SRLcircuit|Y1[46]~35_combout\);

-- Location: LCCOMB_X55_Y41_N16
\A_Y1[54]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[54]~24_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[22]~input_o\))) # (!\ExtWord~input_o\ & (\A[54]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[54]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[22]~input_o\,
	combout => \A_Y1[54]~24_combout\);

-- Location: LCCOMB_X55_Y41_N26
\SRLcircuit|Y2[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~60_combout\ = (\B[4]~input_o\ & (\A_Y1[54]~24_combout\)) # (!\B[4]~input_o\ & ((\A_Y1[38]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Y1[54]~24_combout\,
	datac => \B[4]~input_o\,
	datad => \A_Y1[38]~4_combout\,
	combout => \SRLcircuit|Y2[2]~60_combout\);

-- Location: LCCOMB_X57_Y40_N24
\SRLcircuit|Y2[2]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~61_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y1[46]~35_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRLcircuit|Y1[46]~35_combout\,
	datad => \SRLcircuit|Y2[2]~60_combout\,
	combout => \SRLcircuit|Y2[2]~61_combout\);

-- Location: LCCOMB_X57_Y40_N28
\SRLcircuit|Y2[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[34]~64_combout\ = (!\shiftCount[5]~0_combout\ & ((\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~61_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftCount[5]~0_combout\,
	datac => \SRLcircuit|Y2[2]~63_combout\,
	datad => \SRLcircuit|Y2[2]~61_combout\,
	combout => \SRLcircuit|Y2[34]~64_combout\);

-- Location: LCCOMB_X58_Y41_N0
\seA_Y3[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[0]~3_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[34]~64_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[32]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[32]~59_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[34]~64_combout\,
	combout => \seA_Y3[0]~3_combout\);

-- Location: LCCOMB_X56_Y36_N22
\A_Y1[55]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[55]~15_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[23]~input_o\))) # (!\ExtWord~input_o\ & (\A[55]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[23]~input_o\,
	combout => \A_Y1[55]~15_combout\);

-- Location: LCCOMB_X56_Y40_N18
\A_Y1[47]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[47]~16_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[15]~input_o\)) # (!\ExtWord~input_o\ & ((\A[47]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \A_Y1[47]~16_combout\);

-- Location: LCCOMB_X61_Y40_N24
\SRLcircuit|Y2[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~51_combout\ = (\B[4]~input_o\ & ((\A_Y1[63]~14_combout\) # ((!\B[3]~input_o\)))) # (!\B[4]~input_o\ & (((\A_Y1[47]~16_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A_Y1[63]~14_combout\,
	datac => \A_Y1[47]~16_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~51_combout\);

-- Location: LCCOMB_X61_Y40_N2
\SRLcircuit|Y2[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~52_combout\ = (\B[3]~input_o\ & (((\SRLcircuit|Y2[2]~51_combout\)))) # (!\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~51_combout\ & (\A_Y1[55]~15_combout\)) # (!\SRLcircuit|Y2[2]~51_combout\ & ((\A_Y1[39]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_Y1[55]~15_combout\,
	datac => \A_Y1[39]~2_combout\,
	datad => \SRLcircuit|Y2[2]~51_combout\,
	combout => \SRLcircuit|Y2[2]~52_combout\);

-- Location: LCCOMB_X58_Y40_N10
\A_Y1[51]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[51]~18_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & (\A[19]~input_o\)) # (!\ExtWord~input_o\ & ((\A[51]~input_o\))))) # (!\ShiftFN[1]~input_o\ & (((\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[19]~input_o\,
	datac => \A[51]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_Y1[51]~18_combout\);

-- Location: LCCOMB_X58_Y40_N12
\SRLcircuit|Y2[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~53_combout\ = (\B[4]~input_o\ & ((\A_Y1[51]~18_combout\))) # (!\B[4]~input_o\ & (\A_Y1[35]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[35]~10_combout\,
	datab => \B[4]~input_o\,
	datad => \A_Y1[51]~18_combout\,
	combout => \SRLcircuit|Y2[2]~53_combout\);

-- Location: LCCOMB_X55_Y44_N8
\A_Y1[59]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[59]~17_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\ & ((\A[27]~input_o\))) # (!\ExtWord~input_o\ & (\A[59]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[59]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[27]~input_o\,
	combout => \A_Y1[59]~17_combout\);

-- Location: LCCOMB_X54_Y39_N14
\SRLcircuit|Y1[43]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[43]~26_combout\ = (!\B[4]~input_o\ & ((\A_s~0_combout\ & (\A[11]~input_o\)) # (!\A_s~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A_s~0_combout\,
	datad => \A[43]~input_o\,
	combout => \SRLcircuit|Y1[43]~26_combout\);

-- Location: LCCOMB_X58_Y40_N0
\SRLcircuit|Y1[43]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[43]~27_combout\ = (\SRLcircuit|Y1[43]~26_combout\) # ((\B[4]~input_o\ & \A_Y1[59]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A_Y1[59]~17_combout\,
	datad => \SRLcircuit|Y1[43]~26_combout\,
	combout => \SRLcircuit|Y1[43]~27_combout\);

-- Location: LCCOMB_X57_Y41_N0
\SRLcircuit|Y2[2]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~54_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y1[43]~27_combout\))) # (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~53_combout\,
	datad => \SRLcircuit|Y1[43]~27_combout\,
	combout => \SRLcircuit|Y2[2]~54_combout\);

-- Location: LCCOMB_X57_Y41_N18
\SRLcircuit|Y2[35]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[35]~55_combout\ = (!\shiftCount[5]~0_combout\ & ((\B[2]~input_o\ & (\SRLcircuit|Y2[2]~52_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~52_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \SRLcircuit|Y2[2]~54_combout\,
	combout => \SRLcircuit|Y2[35]~55_combout\);

-- Location: LCCOMB_X58_Y41_N28
\seA_Y3[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[0]~4_combout\ = (\B[0]~input_o\ & ((\seA_Y3[0]~3_combout\ & (\SRLcircuit|Y2[33]~69_combout\)) # (!\seA_Y3[0]~3_combout\ & ((\SRLcircuit|Y2[35]~55_combout\))))) # (!\B[0]~input_o\ & (((\seA_Y3[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[33]~69_combout\,
	datac => \seA_Y3[0]~3_combout\,
	datad => \SRLcircuit|Y2[35]~55_combout\,
	combout => \seA_Y3[0]~4_combout\);

-- Location: LCCOMB_X61_Y45_N24
\seA_Y3[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[0]~5_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[0]~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[0]~2_combout\,
	datac => \seA_Y3[0]~4_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[0]~5_combout\);

-- Location: LCCOMB_X61_Y45_N10
\Y~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~53_combout\ = (\A_Y3[0]~1_combout\ & ((\Y~52_combout\) # ((\A_s~0_combout\ & \seA_Y3[0]~5_combout\)))) # (!\A_Y3[0]~1_combout\ & (\A_s~0_combout\ & ((\seA_Y3[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y3[0]~1_combout\,
	datab => \A_s~0_combout\,
	datac => \Y~52_combout\,
	datad => \seA_Y3[0]~5_combout\,
	combout => \Y~53_combout\);

-- Location: LCCOMB_X61_Y45_N8
\Y~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~56_combout\ = (\Y~53_combout\) # ((\Y~55_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~55_combout\,
	datab => \ShiftFN[1]~input_o\,
	datad => \Y~53_combout\,
	combout => \Y~56_combout\);

-- Location: LCCOMB_X57_Y43_N2
\Y~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~57_combout\ = (!\B[1]~input_o\ & (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~57_combout\);

-- Location: LCCOMB_X57_Y43_N12
\Y~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~58_combout\ = (\Y~57_combout\ & ((\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~39_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~43_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~39_combout\,
	datad => \Y~57_combout\,
	combout => \Y~58_combout\);

-- Location: LCCOMB_X56_Y44_N30
\Y~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~61_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~61_combout\);

-- Location: IOIBUF_X58_Y73_N22
\C[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(1),
	o => \C[1]~input_o\);

-- Location: LCCOMB_X57_Y43_N26
\Y~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~62_combout\ = (\ShiftFN[0]~input_o\ & (\SRLcircuit|Y2[60]~70_combout\ & (\Y~61_combout\))) # (!\ShiftFN[0]~input_o\ & (((\C[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[60]~70_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y~61_combout\,
	datad => \C[1]~input_o\,
	combout => \Y~62_combout\);

-- Location: LCCOMB_X59_Y42_N26
\SRAcircuit|Y2[36]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[36]~38_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRAcircuit|Y1[44]~54_combout\))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[36]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[36]~50_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[44]~54_combout\,
	combout => \SRAcircuit|Y2[36]~38_combout\);

-- Location: LCCOMB_X56_Y44_N28
\SRLcircuit|Y2[2]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~74_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & ((\A[16]~input_o\))) # (!\A_s~0_combout\ & (\A[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[16]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[2]~74_combout\);

-- Location: LCCOMB_X59_Y42_N28
\SRLcircuit|Y2[2]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~75_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[47]~117_combout\) # ((\SRLcircuit|Y2[2]~74_combout\)))) # (!\B[3]~input_o\ & (((\SRAcircuit|Y1[40]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datab => \SRLcircuit|Y2[2]~74_combout\,
	datac => \B[3]~input_o\,
	datad => \SRAcircuit|Y1[40]~42_combout\,
	combout => \SRLcircuit|Y2[2]~75_combout\);

-- Location: LCCOMB_X59_Y42_N30
\SRAcircuit|Y2[36]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[36]~39_combout\ = (\SRAcircuit|Y2[36]~38_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[36]~38_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~75_combout\,
	combout => \SRAcircuit|Y2[36]~39_combout\);

-- Location: LCCOMB_X60_Y40_N22
\seA_Y3[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[1]~6_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[36]~39_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[33]~37_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[33]~37_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[36]~39_combout\,
	combout => \seA_Y3[1]~6_combout\);

-- Location: LCCOMB_X60_Y40_N8
\seA_Y3[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[1]~7_combout\ = (\seA_Y3[1]~6_combout\ & ((\SRAcircuit|Y2[34]~29_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[1]~6_combout\ & (((\SRAcircuit|Y2[35]~34_combout\ & \seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[1]~6_combout\,
	datab => \SRAcircuit|Y2[34]~29_combout\,
	datac => \SRAcircuit|Y2[35]~34_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \seA_Y3[1]~7_combout\);

-- Location: LCCOMB_X58_Y41_N6
\seA_Y3[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[1]~8_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[35]~55_combout\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRLcircuit|Y2[33]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRLcircuit|Y2[35]~55_combout\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[33]~69_combout\,
	combout => \seA_Y3[1]~8_combout\);

-- Location: LCCOMB_X56_Y38_N26
\SRLcircuit|Y3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~17_combout\ = (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y3~17_combout\);

-- Location: LCCOMB_X57_Y40_N30
\SRLcircuit|Y2[36]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[36]~76_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~74_combout\) # ((\SRLcircuit|Y1[40]~31_combout\ & \SRLcircuit|Y3~17_combout\)))) # (!\B[3]~input_o\ & (\SRLcircuit|Y1[40]~31_combout\ & ((\SRLcircuit|Y3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y1[40]~31_combout\,
	datac => \SRLcircuit|Y2[2]~74_combout\,
	datad => \SRLcircuit|Y3~17_combout\,
	combout => \SRLcircuit|Y2[36]~76_combout\);

-- Location: LCCOMB_X57_Y40_N0
\SRLcircuit|Y2[36]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[36]~77_combout\ = (\B[2]~input_o\ & (((\SRLcircuit|Y2[36]~76_combout\)))) # (!\B[2]~input_o\ & (!\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y2[2]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \shiftCount[5]~0_combout\,
	datac => \SRLcircuit|Y2[36]~76_combout\,
	datad => \SRLcircuit|Y2[2]~57_combout\,
	combout => \SRLcircuit|Y2[36]~77_combout\);

-- Location: LCCOMB_X58_Y41_N24
\seA_Y3[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[1]~9_combout\ = (\seA_Y3[1]~8_combout\ & (((\SRLcircuit|Y2[34]~64_combout\)) # (!\B[0]~input_o\))) # (!\seA_Y3[1]~8_combout\ & (\B[0]~input_o\ & (\SRLcircuit|Y2[36]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[1]~8_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[36]~77_combout\,
	datad => \SRLcircuit|Y2[34]~64_combout\,
	combout => \seA_Y3[1]~9_combout\);

-- Location: LCCOMB_X58_Y41_N26
\seA_Y3[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[1]~10_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[1]~7_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[1]~7_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[1]~9_combout\,
	combout => \seA_Y3[1]~10_combout\);

-- Location: LCCOMB_X57_Y43_N14
\Y~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~59_combout\ = (\ShiftFN[1]~input_o\ & (!\ExtWord~input_o\ & ((\B[1]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~59_combout\);

-- Location: LCCOMB_X56_Y38_N22
\SRAcircuit|Y1[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[25]~73_combout\ = (!\B[4]~input_o\ & ((\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SRAcircuit|Y1[25]~73_combout\);

-- Location: LCCOMB_X56_Y38_N8
\SRLcircuit|Y1[16]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[16]~42_combout\ = (\B[5]~input_o\ & (!\ExtWord~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRLcircuit|Y1[16]~42_combout\);

-- Location: LCCOMB_X55_Y44_N16
\SRLcircuit|Y1[16]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[16]~43_combout\ = (\SRAcircuit|Y1[25]~73_combout\ & ((\A[16]~input_o\) # ((\A[48]~input_o\ & \SRLcircuit|Y1[16]~42_combout\)))) # (!\SRAcircuit|Y1[25]~73_combout\ & (((\A[48]~input_o\ & \SRLcircuit|Y1[16]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[25]~73_combout\,
	datab => \A[16]~input_o\,
	datac => \A[48]~input_o\,
	datad => \SRLcircuit|Y1[16]~42_combout\,
	combout => \SRLcircuit|Y1[16]~43_combout\);

-- Location: LCCOMB_X56_Y44_N18
\SRLcircuit|Y1[2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~44_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[0]~input_o\)) # (!\A_s~0_combout\ & ((\A[32]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \A[0]~input_o\,
	datad => \A[32]~input_o\,
	combout => \SRLcircuit|Y1[2]~44_combout\);

-- Location: LCCOMB_X55_Y44_N12
\SRLcircuit|Y2[2]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~72_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y1[16]~43_combout\) # ((\B[4]~input_o\ & \SRLcircuit|Y1[2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SRLcircuit|Y1[16]~43_combout\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y1[2]~44_combout\,
	combout => \SRLcircuit|Y2[2]~72_combout\);

-- Location: LCCOMB_X56_Y45_N6
\SRLcircuit|Y2[2]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~73_combout\ = (\SRLcircuit|Y2[2]~72_combout\) # ((\SRLcircuit|Y1[8]~16_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[8]~16_combout\,
	datac => \SRLcircuit|Y2[2]~72_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~73_combout\);

-- Location: LCCOMB_X56_Y40_N12
\SRAcircuit|Y1[16]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[16]~74_combout\ = (\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[31]~input_o\)) # (!\A_s~0_combout\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[63]~input_o\,
	combout => \SRAcircuit|Y1[16]~74_combout\);

-- Location: LCCOMB_X55_Y44_N10
\SRAcircuit|Y1[16]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[16]~75_combout\ = (\SRLcircuit|Y1[16]~43_combout\) # ((\B[4]~input_o\ & ((\SRAcircuit|Y1[16]~74_combout\) # (\SRLcircuit|Y1[2]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[16]~74_combout\,
	datab => \SRLcircuit|Y1[16]~43_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~44_combout\,
	combout => \SRAcircuit|Y1[16]~75_combout\);

-- Location: LCCOMB_X56_Y45_N4
\SRLcircuit|Y2[2]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~71_combout\ = (\B[3]~input_o\ & (\SRAcircuit|Y1[16]~75_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y1[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[16]~75_combout\,
	datad => \SRLcircuit|Y1[8]~16_combout\,
	combout => \SRLcircuit|Y2[2]~71_combout\);

-- Location: LCCOMB_X56_Y45_N24
\SRAcircuit|Y3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~20_combout\ = (\SRLcircuit|Y3~9_combout\ & ((\ShiftFN[0]~input_o\ & ((\SRLcircuit|Y2[2]~71_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRLcircuit|Y2[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~73_combout\,
	datab => \SRLcircuit|Y2[2]~71_combout\,
	datac => \SRLcircuit|Y3~9_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRAcircuit|Y3~20_combout\);

-- Location: LCCOMB_X56_Y45_N12
\SRAcircuit|Y3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~30_combout\ = (\SRAcircuit|Y3~20_combout\) # ((\SRLcircuit|Y2[2]~37_combout\ & ((!\B[0]~input_o\) # (!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRLcircuit|Y2[2]~37_combout\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y3~20_combout\,
	combout => \SRAcircuit|Y3~30_combout\);

-- Location: LCCOMB_X57_Y45_N6
\SRLcircuit|Y3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~42_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\SRLcircuit|Y2[2]~41_combout\))) # (!\B[0]~input_o\ & (\SRLcircuit|Y2[3]~45_combout\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y2[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[3]~45_combout\,
	datad => \SRLcircuit|Y2[2]~41_combout\,
	combout => \SRLcircuit|Y3~42_combout\);

-- Location: LCCOMB_X57_Y45_N12
\A_Y3[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[1]~2_combout\ = (\B[2]~input_o\ & (((\B[1]~input_o\)))) # (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y3~42_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[1]~35_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y3~42_combout\,
	combout => \A_Y3[1]~2_combout\);

-- Location: LCCOMB_X57_Y45_N30
\A_Y3[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[1]~3_combout\ = (\B[2]~input_o\ & ((\A_Y3[1]~2_combout\ & (\SRAcircuit|Y3~30_combout\)) # (!\A_Y3[1]~2_combout\ & ((\SRLcircuit|Y2[2]~47_combout\))))) # (!\B[2]~input_o\ & (((\A_Y3[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y3~30_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~47_combout\,
	datad => \A_Y3[1]~2_combout\,
	combout => \A_Y3[1]~3_combout\);

-- Location: LCCOMB_X57_Y43_N24
\Y~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~60_combout\ = (\seA_Y3[1]~10_combout\ & ((\A_s~0_combout\) # ((\Y~59_combout\ & \A_Y3[1]~3_combout\)))) # (!\seA_Y3[1]~10_combout\ & (\Y~59_combout\ & ((\A_Y3[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[1]~10_combout\,
	datab => \Y~59_combout\,
	datac => \A_s~0_combout\,
	datad => \A_Y3[1]~3_combout\,
	combout => \Y~60_combout\);

-- Location: LCCOMB_X57_Y43_N4
\Y~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~63_combout\ = (\Y~58_combout\) # ((\Y~60_combout\) # ((!\ShiftFN[1]~input_o\ & \Y~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~58_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y~62_combout\,
	datad => \Y~60_combout\,
	combout => \Y~63_combout\);

-- Location: LCCOMB_X55_Y38_N4
\SRLcircuit|Y2[2]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~80_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[17]~input_o\)) # (!\A_s~0_combout\ & ((\A[49]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[49]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[2]~80_combout\);

-- Location: LCCOMB_X59_Y41_N24
\SRLcircuit|Y2[37]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[37]~82_combout\ = (\SRLcircuit|Y2[2]~80_combout\ & ((\B[3]~input_o\) # ((\SRLcircuit|Y3~17_combout\ & \SRLcircuit|Y1[41]~41_combout\)))) # (!\SRLcircuit|Y2[2]~80_combout\ & (((\SRLcircuit|Y3~17_combout\ & \SRLcircuit|Y1[41]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~80_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y3~17_combout\,
	datad => \SRLcircuit|Y1[41]~41_combout\,
	combout => \SRLcircuit|Y2[37]~82_combout\);

-- Location: LCCOMB_X58_Y41_N12
\SRLcircuit|Y2[37]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[37]~83_combout\ = (\B[2]~input_o\ & (((\SRLcircuit|Y2[37]~82_combout\)))) # (!\B[2]~input_o\ & (!\shiftCount[5]~0_combout\ & (\SRLcircuit|Y2[2]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y2[2]~66_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[37]~82_combout\,
	combout => \SRLcircuit|Y2[37]~83_combout\);

-- Location: LCCOMB_X58_Y41_N30
\seA_Y3[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[2]~13_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & (\SRLcircuit|Y2[36]~77_combout\))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRLcircuit|Y2[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[36]~77_combout\,
	datad => \SRLcircuit|Y2[34]~64_combout\,
	combout => \seA_Y3[2]~13_combout\);

-- Location: LCCOMB_X58_Y41_N16
\seA_Y3[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[2]~14_combout\ = (\seA_Y3[2]~13_combout\ & (((\SRLcircuit|Y2[35]~55_combout\) # (!\B[0]~input_o\)))) # (!\seA_Y3[2]~13_combout\ & (\SRLcircuit|Y2[37]~83_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[37]~83_combout\,
	datab => \SRLcircuit|Y2[35]~55_combout\,
	datac => \seA_Y3[2]~13_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[2]~14_combout\);

-- Location: LCCOMB_X55_Y40_N14
\SRAcircuit|Y2[37]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[37]~40_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[45]~121_combout\)) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[37]~120_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[45]~121_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[37]~120_combout\,
	combout => \SRAcircuit|Y2[37]~40_combout\);

-- Location: LCCOMB_X55_Y40_N0
\SRLcircuit|Y2[2]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~81_combout\ = (\B[3]~input_o\ & (((\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[2]~80_combout\)))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[41]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[41]~118_combout\,
	datac => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[2]~80_combout\,
	combout => \SRLcircuit|Y2[2]~81_combout\);

-- Location: LCCOMB_X55_Y40_N2
\SRAcircuit|Y2[37]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[37]~41_combout\ = (\SRAcircuit|Y2[37]~40_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Y2[37]~40_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~81_combout\,
	combout => \SRAcircuit|Y2[37]~41_combout\);

-- Location: LCCOMB_X60_Y40_N18
\seA_Y3[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[2]~11_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[37]~41_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[34]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[37]~41_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[34]~29_combout\,
	combout => \seA_Y3[2]~11_combout\);

-- Location: LCCOMB_X60_Y40_N12
\seA_Y3[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[2]~12_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[2]~11_combout\ & ((\SRAcircuit|Y2[35]~34_combout\))) # (!\seA_Y3[2]~11_combout\ & (\SRAcircuit|Y2[36]~39_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[36]~39_combout\,
	datac => \SRAcircuit|Y2[35]~34_combout\,
	datad => \seA_Y3[2]~11_combout\,
	combout => \seA_Y3[2]~12_combout\);

-- Location: LCCOMB_X57_Y43_N28
\seA_Y3[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[2]~15_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[2]~12_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[2]~14_combout\,
	datab => \seA_Y3[2]~12_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[2]~15_combout\);

-- Location: LCCOMB_X56_Y45_N10
\SRAcircuit|Y3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~21_combout\ = (\SRLcircuit|Y3~9_combout\ & (((\ShiftFN[0]~input_o\)))) # (!\SRLcircuit|Y3~9_combout\ & ((\ShiftFN[0]~input_o\ & ((\SRLcircuit|Y2[2]~71_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRLcircuit|Y2[2]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~73_combout\,
	datab => \SRLcircuit|Y2[2]~71_combout\,
	datac => \SRLcircuit|Y3~9_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \SRAcircuit|Y3~21_combout\);

-- Location: LCCOMB_X56_Y42_N12
\SRLcircuit|Y1[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[17]~45_combout\ = (!\B[4]~input_o\ & \SRLcircuit|Y1[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~0_combout\,
	combout => \SRLcircuit|Y1[17]~45_combout\);

-- Location: LCCOMB_X56_Y42_N0
\SRAcircuit|Y1[17]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[17]~76_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & (\A_Y1[63]~14_combout\)) # (!\shiftCount[5]~0_combout\ & ((\A_Y1[33]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \A_Y1[33]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRAcircuit|Y1[17]~76_combout\);

-- Location: LCCOMB_X56_Y42_N26
\SRLcircuit|Y2[2]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~79_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y1[17]~45_combout\) # ((\SRAcircuit|Y1[17]~76_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[17]~45_combout\,
	datab => \SRLcircuit|Y1[9]~2_combout\,
	datac => \B[3]~input_o\,
	datad => \SRAcircuit|Y1[17]~76_combout\,
	combout => \SRLcircuit|Y2[2]~79_combout\);

-- Location: LCCOMB_X56_Y42_N30
\SRLcircuit|Y2[2]~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~212_combout\ = (\A_Y1[33]~0_combout\ & (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[33]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[5]~input_o\,
	combout => \SRLcircuit|Y2[2]~212_combout\);

-- Location: LCCOMB_X56_Y42_N14
\SRLcircuit|Y2[2]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~78_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y1[17]~45_combout\) # ((\SRLcircuit|Y2[2]~212_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[17]~45_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~212_combout\,
	datad => \SRLcircuit|Y1[9]~2_combout\,
	combout => \SRLcircuit|Y2[2]~78_combout\);

-- Location: LCCOMB_X56_Y45_N28
\SRAcircuit|Y3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~22_combout\ = (\SRAcircuit|Y3~21_combout\ & ((\SRLcircuit|Y2[2]~79_combout\) # ((!\SRLcircuit|Y3~9_combout\)))) # (!\SRAcircuit|Y3~21_combout\ & (((\SRLcircuit|Y3~9_combout\ & \SRLcircuit|Y2[2]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y3~21_combout\,
	datab => \SRLcircuit|Y2[2]~79_combout\,
	datac => \SRLcircuit|Y3~9_combout\,
	datad => \SRLcircuit|Y2[2]~78_combout\,
	combout => \SRAcircuit|Y3~22_combout\);

-- Location: LCCOMB_X57_Y43_N20
\SRLcircuit|Y3~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~43_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[2]~47_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[2]~41_combout\))))) # (!\B[0]~input_o\ & (((\SRLcircuit|Y2[2]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~47_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[2]~41_combout\,
	datad => \B[1]~input_o\,
	combout => \SRLcircuit|Y3~43_combout\);

-- Location: LCCOMB_X57_Y43_N16
\A_Y3[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[2]~4_combout\ = (\B[1]~input_o\ & ((\SRLcircuit|Y3~43_combout\) # ((\B[2]~input_o\)))) # (!\B[1]~input_o\ & (((!\B[2]~input_o\ & \SRLcircuit|Y2[2]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRLcircuit|Y3~43_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~43_combout\,
	combout => \A_Y3[2]~4_combout\);

-- Location: LCCOMB_X57_Y43_N18
\A_Y3[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[2]~5_combout\ = (\B[2]~input_o\ & ((\A_Y3[2]~4_combout\ & ((\SRAcircuit|Y3~22_combout\))) # (!\A_Y3[2]~4_combout\ & (\SRLcircuit|Y2[2]~39_combout\)))) # (!\B[2]~input_o\ & (((\A_Y3[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~39_combout\,
	datab => \SRAcircuit|Y3~22_combout\,
	datac => \B[2]~input_o\,
	datad => \A_Y3[2]~4_combout\,
	combout => \A_Y3[2]~5_combout\);

-- Location: LCCOMB_X57_Y43_N6
\Y~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~65_combout\ = (\A_s~0_combout\ & ((\seA_Y3[2]~15_combout\) # ((\Y~59_combout\ & \A_Y3[2]~5_combout\)))) # (!\A_s~0_combout\ & (((\Y~59_combout\ & \A_Y3[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \seA_Y3[2]~15_combout\,
	datac => \Y~59_combout\,
	datad => \A_Y3[2]~5_combout\,
	combout => \Y~65_combout\);

-- Location: LCCOMB_X63_Y43_N2
\SLLcircuit|Y[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~4_combout\ = (\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~4_combout\);

-- Location: LCCOMB_X63_Y43_N12
\Y~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~369_combout\ = (\B[0]~input_o\ & (\A_Y1[1]~1_combout\ & (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (((\SLLcircuit|Y[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[1]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~4_combout\,
	combout => \Y~369_combout\);

-- Location: IOIBUF_X54_Y73_N8
\C[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(2),
	o => \C[2]~input_o\);

-- Location: LCCOMB_X57_Y43_N0
\Y~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~66_combout\ = (\ShiftFN[0]~input_o\ & (\SRLcircuit|Y2[60]~70_combout\ & (\Y~369_combout\))) # (!\ShiftFN[0]~input_o\ & (((\C[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[60]~70_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y~369_combout\,
	datad => \C[2]~input_o\,
	combout => \Y~66_combout\);

-- Location: LCCOMB_X57_Y43_N30
\Y~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~64_combout\ = (\Y~57_combout\ & ((\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~37_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[3]~45_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~37_combout\,
	datad => \Y~57_combout\,
	combout => \Y~64_combout\);

-- Location: LCCOMB_X57_Y43_N10
\Y~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~67_combout\ = (\Y~65_combout\) # ((\Y~64_combout\) # ((\Y~66_combout\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~65_combout\,
	datab => \Y~66_combout\,
	datac => \Y~64_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~67_combout\);

-- Location: LCCOMB_X57_Y40_N2
\SRLcircuit|Y2[2]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~87_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[18]~input_o\)) # (!\A_s~0_combout\ & ((\A[50]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \A[18]~input_o\,
	datac => \A[50]~input_o\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y2[2]~87_combout\);

-- Location: LCCOMB_X59_Y40_N0
\SRLcircuit|Y2[2]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~88_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[47]~117_combout\) # ((\SRLcircuit|Y2[2]~87_combout\)))) # (!\B[3]~input_o\ & (((\SRAcircuit|Y1[42]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datab => \SRLcircuit|Y2[2]~87_combout\,
	datac => \SRAcircuit|Y1[42]~110_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~88_combout\);

-- Location: LCCOMB_X59_Y40_N6
\SRAcircuit|Y2[38]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[38]~43_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[46]~112_combout\)) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[38]~113_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[46]~112_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[38]~113_combout\,
	combout => \SRAcircuit|Y2[38]~43_combout\);

-- Location: LCCOMB_X59_Y40_N26
\SRAcircuit|Y2[38]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[38]~44_combout\ = (\SRAcircuit|Y2[38]~43_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~88_combout\,
	datad => \SRAcircuit|Y2[38]~43_combout\,
	combout => \SRAcircuit|Y2[38]~44_combout\);

-- Location: LCCOMB_X60_Y40_N30
\seA_Y3[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[3]~16_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[38]~44_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\SRAcircuit|Y2[35]~34_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[38]~44_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[35]~34_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[3]~16_combout\);

-- Location: LCCOMB_X60_Y40_N24
\seA_Y3[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[3]~17_combout\ = (\seA_Y3[3]~16_combout\ & ((\SRAcircuit|Y2[36]~39_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[3]~16_combout\ & (((\seA_Y3[20]~0_combout\ & \SRAcircuit|Y2[37]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[3]~16_combout\,
	datab => \SRAcircuit|Y2[36]~39_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[37]~41_combout\,
	combout => \seA_Y3[3]~17_combout\);

-- Location: LCCOMB_X57_Y40_N12
\SRLcircuit|Y2[38]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[38]~89_combout\ = (\SRLcircuit|Y3~17_combout\ & ((\SRLcircuit|Y1[42]~37_combout\) # ((\SRLcircuit|Y2[2]~87_combout\ & \B[3]~input_o\)))) # (!\SRLcircuit|Y3~17_combout\ & (\SRLcircuit|Y2[2]~87_combout\ & ((\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~17_combout\,
	datab => \SRLcircuit|Y2[2]~87_combout\,
	datac => \SRLcircuit|Y1[42]~37_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[38]~89_combout\);

-- Location: LCCOMB_X57_Y40_N22
\SRLcircuit|Y2[38]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[38]~90_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[38]~89_combout\)) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~61_combout\ & !\shiftCount[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[38]~89_combout\,
	datab => \SRLcircuit|Y2[2]~61_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[38]~90_combout\);

-- Location: LCCOMB_X58_Y41_N10
\seA_Y3[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[3]~18_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[37]~83_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[35]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[37]~83_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[35]~55_combout\,
	combout => \seA_Y3[3]~18_combout\);

-- Location: LCCOMB_X58_Y41_N20
\seA_Y3[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[3]~19_combout\ = (\B[0]~input_o\ & ((\seA_Y3[3]~18_combout\ & ((\SRLcircuit|Y2[36]~77_combout\))) # (!\seA_Y3[3]~18_combout\ & (\SRLcircuit|Y2[38]~90_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[38]~90_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[36]~77_combout\,
	datad => \seA_Y3[3]~18_combout\,
	combout => \seA_Y3[3]~19_combout\);

-- Location: LCCOMB_X60_Y40_N26
\seA_Y3[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[3]~20_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[3]~17_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \seA_Y3[3]~17_combout\,
	datac => \seA_Y3[3]~19_combout\,
	combout => \seA_Y3[3]~20_combout\);

-- Location: LCCOMB_X56_Y45_N14
\SRLcircuit|Y2[4]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[4]~84_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~73_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~41_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~73_combout\,
	combout => \SRLcircuit|Y2[4]~84_combout\);

-- Location: LCCOMB_X56_Y45_N16
\SRAcircuit|Y2[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[4]~42_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~71_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~41_combout\,
	datab => \SRLcircuit|Y2[2]~71_combout\,
	datac => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[4]~42_combout\);

-- Location: LCCOMB_X56_Y39_N6
\SRLcircuit|Y2[2]~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~213_combout\ = (\B[4]~input_o\ & (\A_Y1[34]~8_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A_Y1[34]~8_combout\,
	combout => \SRLcircuit|Y2[2]~213_combout\);

-- Location: LCCOMB_X56_Y39_N4
\SRAcircuit|Y1[18]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[18]~78_combout\ = (\SRLcircuit|Y1[2]~17_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y1[2]~17_combout\,
	datac => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[18]~78_combout\);

-- Location: LCCOMB_X56_Y39_N0
\SRLcircuit|Y2[2]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~86_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~213_combout\) # ((\SRAcircuit|Y1[18]~78_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~213_combout\,
	datab => \SRLcircuit|Y1[10]~19_combout\,
	datac => \SRAcircuit|Y1[18]~78_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~86_combout\);

-- Location: LCCOMB_X61_Y45_N18
\SRLcircuit|Y3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~44_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[2]~86_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[2]~78_combout\))))) # (!\B[0]~input_o\ & (((\SRLcircuit|Y2[2]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[2]~86_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[2]~78_combout\,
	combout => \SRLcircuit|Y3~44_combout\);

-- Location: LCCOMB_X57_Y45_N26
\SRAcircuit|Y3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~24_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[2]~39_combout\ & ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y2[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRLcircuit|Y2[2]~39_combout\,
	datac => \SRLcircuit|Y2[3]~45_combout\,
	datad => \B[0]~input_o\,
	combout => \SRAcircuit|Y3~24_combout\);

-- Location: LCCOMB_X57_Y45_N24
\SRAcircuit|Y3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~23_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~37_combout\)) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~47_combout\ & \SRLcircuit|Y3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~37_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~47_combout\,
	datad => \SRLcircuit|Y3~8_combout\,
	combout => \SRAcircuit|Y3~23_combout\);

-- Location: LCCOMB_X57_Y45_N28
\SRAcircuit|Y3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~25_combout\ = (\B[2]~input_o\ & (((\B[1]~input_o\) # (!\SRAcircuit|Y3~23_combout\)))) # (!\B[2]~input_o\ & (!\SRAcircuit|Y3~24_combout\ & ((!\SRAcircuit|Y3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y3~24_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y3~23_combout\,
	combout => \SRAcircuit|Y3~25_combout\);

-- Location: LCCOMB_X60_Y42_N26
\SRLcircuit|Y3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~18_combout\ = ((\SRLcircuit|Y3~44_combout\ & (\B[2]~input_o\ & \B[1]~input_o\))) # (!\SRAcircuit|Y3~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~44_combout\,
	datab => \SRAcircuit|Y3~25_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRLcircuit|Y3~18_combout\);

-- Location: LCCOMB_X56_Y39_N10
\SRAcircuit|Y1[18]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[18]~77_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & (\A_Y1[63]~14_combout\)) # (!\shiftCount[5]~0_combout\ & ((\A_Y1[34]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \A_Y1[34]~8_combout\,
	datac => \B[4]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRAcircuit|Y1[18]~77_combout\);

-- Location: LCCOMB_X56_Y39_N14
\SRLcircuit|Y2[2]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~85_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[18]~77_combout\) # ((\SRAcircuit|Y1[18]~78_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[18]~77_combout\,
	datab => \SRLcircuit|Y1[10]~19_combout\,
	datac => \SRAcircuit|Y1[18]~78_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~85_combout\);

-- Location: LCCOMB_X58_Y45_N30
\SRAcircuit|Y3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~31_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[2]~85_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[2]~79_combout\)))) # (!\B[0]~input_o\ & (\SRLcircuit|Y2[2]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[2]~79_combout\,
	datac => \SRLcircuit|Y2[2]~85_combout\,
	datad => \B[1]~input_o\,
	combout => \SRAcircuit|Y3~31_combout\);

-- Location: LCCOMB_X60_Y42_N24
\SRAcircuit|Y3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~26_combout\ = ((\SRAcircuit|Y3~31_combout\ & (\B[2]~input_o\ & \B[1]~input_o\))) # (!\SRAcircuit|Y3~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y3~31_combout\,
	datab => \SRAcircuit|Y3~25_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRAcircuit|Y3~26_combout\);

-- Location: LCCOMB_X60_Y42_N4
\A_Y3[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[3]~6_combout\ = (\SRAcircuit|Equal7~0_combout\ & (((\ShiftFN[0]~input_o\)))) # (!\SRAcircuit|Equal7~0_combout\ & ((\ShiftFN[0]~input_o\ & ((\SRAcircuit|Y3~26_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRLcircuit|Y3~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~18_combout\,
	datab => \SRAcircuit|Y3~26_combout\,
	datac => \SRAcircuit|Equal7~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \A_Y3[3]~6_combout\);

-- Location: LCCOMB_X60_Y42_N6
\A_Y3[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[3]~7_combout\ = (\A_Y3[3]~6_combout\ & (((\SRAcircuit|Y2[4]~42_combout\) # (!\SRAcircuit|Equal7~0_combout\)))) # (!\A_Y3[3]~6_combout\ & (\SRLcircuit|Y2[4]~84_combout\ & ((\SRAcircuit|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[4]~84_combout\,
	datab => \SRAcircuit|Y2[4]~42_combout\,
	datac => \A_Y3[3]~6_combout\,
	datad => \SRAcircuit|Equal7~0_combout\,
	combout => \A_Y3[3]~7_combout\);

-- Location: LCCOMB_X62_Y45_N10
\Y~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~68_combout\ = (\A_s~0_combout\ & ((\seA_Y3[3]~20_combout\) # ((\Y~52_combout\ & \A_Y3[3]~7_combout\)))) # (!\A_s~0_combout\ & (\Y~52_combout\ & ((\A_Y3[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \Y~52_combout\,
	datac => \seA_Y3[3]~20_combout\,
	datad => \A_Y3[3]~7_combout\,
	combout => \Y~68_combout\);

-- Location: IOIBUF_X87_Y0_N15
\C[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(3),
	o => \C[3]~input_o\);

-- Location: LCCOMB_X54_Y43_N26
\Y~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~69_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Y~69_combout\);

-- Location: LCCOMB_X63_Y43_N28
\Y~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~70_combout\ = (\Y~69_combout\) # ((\B[0]~input_o\ & \SLLcircuit|Y[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~69_combout\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~4_combout\,
	combout => \Y~70_combout\);

-- Location: LCCOMB_X63_Y43_N14
\Y~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~71_combout\ = (\ShiftFN[0]~input_o\ & (((\SRLcircuit|Y2[60]~70_combout\ & \Y~70_combout\)))) # (!\ShiftFN[0]~input_o\ & (\C[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[3]~input_o\,
	datab => \SRLcircuit|Y2[60]~70_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~70_combout\,
	combout => \Y~71_combout\);

-- Location: LCCOMB_X62_Y45_N4
\Y~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~72_combout\ = (\Y~68_combout\) # ((!\ShiftFN[1]~input_o\ & \Y~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~68_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~71_combout\,
	combout => \Y~72_combout\);

-- Location: LCCOMB_X54_Y43_N20
\Y~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~73_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Y~73_combout\);

-- Location: LCCOMB_X60_Y43_N10
\SLLcircuit|Y[1]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~113_combout\ = (\A_Y1[2]~9_combout\ & (!\B[3]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[2]~9_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y[1]~113_combout\);

-- Location: LCCOMB_X60_Y43_N16
\SLLcircuit|Y[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~5_combout\ = (!\B[3]~input_o\ & (!\B[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SLLcircuit|Y[1]~5_combout\);

-- Location: LCCOMB_X63_Y43_N0
\SLLcircuit|Y2[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~10_combout\ = (\B[2]~input_o\ & ((\A[0]~input_o\))) # (!\B[2]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[0]~input_o\,
	combout => \SLLcircuit|Y2[4]~10_combout\);

-- Location: LCCOMB_X60_Y43_N18
\SLLcircuit|Y[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~6_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SLLcircuit|Y[1]~113_combout\) # ((\SLLcircuit|Y[1]~5_combout\ & \SLLcircuit|Y2[4]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~113_combout\,
	datab => \SLLcircuit|Y[1]~5_combout\,
	datac => \SLLcircuit|Y2[4]~10_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SLLcircuit|Y[1]~6_combout\);

-- Location: LCCOMB_X60_Y43_N28
\Y~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~74_combout\ = (\B[0]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & (\Y~73_combout\))) # (!\B[0]~input_o\ & (((\SLLcircuit|Y[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[25]~73_combout\,
	datab => \Y~73_combout\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~6_combout\,
	combout => \Y~74_combout\);

-- Location: LCCOMB_X62_Y45_N30
\Y~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~77_combout\ = (\ShiftFN[1]~input_o\ & ((\ExtWord~input_o\) # (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~77_combout\);

-- Location: LCCOMB_X57_Y45_N22
\SRLcircuit|Y2[5]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[5]~94_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~78_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~47_combout\,
	datad => \SRLcircuit|Y2[2]~78_combout\,
	combout => \SRLcircuit|Y2[5]~94_combout\);

-- Location: LCCOMB_X53_Y41_N26
\SRAcircuit|Y1[19]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[19]~80_combout\ = (!\B[4]~input_o\ & \SRLcircuit|Y1[2]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~20_combout\,
	combout => \SRAcircuit|Y1[19]~80_combout\);

-- Location: LCCOMB_X55_Y42_N0
\SRLcircuit|Y2[2]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~214_combout\ = (\A_Y1[35]~10_combout\ & (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[35]~10_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[2]~214_combout\);

-- Location: LCCOMB_X53_Y41_N6
\SRLcircuit|Y2[2]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~91_combout\ = (\B[3]~input_o\ & (((\SRAcircuit|Y1[19]~80_combout\) # (\SRLcircuit|Y2[2]~214_combout\)))) # (!\B[3]~input_o\ & (\SRLcircuit|Y1[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[11]~22_combout\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[19]~80_combout\,
	datad => \SRLcircuit|Y2[2]~214_combout\,
	combout => \SRLcircuit|Y2[2]~91_combout\);

-- Location: LCCOMB_X57_Y41_N14
\SRLcircuit|Y2[7]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[7]~92_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~91_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~91_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~37_combout\,
	combout => \SRLcircuit|Y2[7]~92_combout\);

-- Location: LCCOMB_X54_Y41_N22
\SRLcircuit|Y2[6]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[6]~93_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~86_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~86_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~39_combout\,
	combout => \SRLcircuit|Y2[6]~93_combout\);

-- Location: LCCOMB_X56_Y45_N26
\Y~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~78_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[6]~93_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[4]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[4]~84_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[6]~93_combout\,
	combout => \Y~78_combout\);

-- Location: LCCOMB_X59_Y45_N24
\Y~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~79_combout\ = (\B[0]~input_o\ & ((\Y~78_combout\ & (\SRLcircuit|Y2[5]~94_combout\)) # (!\Y~78_combout\ & ((\SRLcircuit|Y2[7]~92_combout\))))) # (!\B[0]~input_o\ & (((\Y~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[5]~94_combout\,
	datac => \SRLcircuit|Y2[7]~92_combout\,
	datad => \Y~78_combout\,
	combout => \Y~79_combout\);

-- Location: IOIBUF_X115_Y48_N8
\C[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(4),
	o => \C[4]~input_o\);

-- Location: LCCOMB_X62_Y45_N24
\Y~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~80_combout\ = (\Y~77_combout\ & (!\Y~52_combout\)) # (!\Y~77_combout\ & ((\Y~52_combout\ & (\Y~79_combout\)) # (!\Y~52_combout\ & ((\C[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~52_combout\,
	datac => \Y~79_combout\,
	datad => \C[4]~input_o\,
	combout => \Y~80_combout\);

-- Location: LCCOMB_X58_Y45_N28
\SRAcircuit|Y2[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[5]~48_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~79_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~47_combout\,
	datad => \SRLcircuit|Y2[2]~79_combout\,
	combout => \SRAcircuit|Y2[5]~48_combout\);

-- Location: LCCOMB_X58_Y45_N10
\SRAcircuit|Y2[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[6]~45_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~85_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~85_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~39_combout\,
	combout => \SRAcircuit|Y2[6]~45_combout\);

-- Location: LCCOMB_X55_Y42_N28
\SRAcircuit|Y1[19]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[19]~79_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & (\A_Y1[63]~14_combout\)) # (!\shiftCount[5]~0_combout\ & ((\A_Y1[35]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \B[4]~input_o\,
	datac => \A_Y1[35]~10_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRAcircuit|Y1[19]~79_combout\);

-- Location: LCCOMB_X53_Y41_N20
\SRAcircuit|Y2[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[7]~46_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[19]~80_combout\) # ((\SRAcircuit|Y1[19]~79_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[19]~80_combout\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[19]~79_combout\,
	datad => \SRLcircuit|Y1[11]~22_combout\,
	combout => \SRAcircuit|Y2[7]~46_combout\);

-- Location: LCCOMB_X57_Y41_N28
\SRAcircuit|Y2[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[7]~47_combout\ = (\B[2]~input_o\ & (\SRAcircuit|Y2[7]~46_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Y2[7]~46_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~37_combout\,
	combout => \SRAcircuit|Y2[7]~47_combout\);

-- Location: LCCOMB_X60_Y42_N0
\Y~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~75_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[7]~47_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[4]~42_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRAcircuit|Y2[4]~42_combout\,
	datac => \SRAcircuit|Y2[7]~47_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~75_combout\);

-- Location: LCCOMB_X58_Y45_N14
\Y~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~76_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~75_combout\ & (\SRAcircuit|Y2[5]~48_combout\)) # (!\Y~75_combout\ & ((\SRAcircuit|Y2[6]~45_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\Y~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[5]~48_combout\,
	datac => \SRAcircuit|Y2[6]~45_combout\,
	datad => \Y~75_combout\,
	combout => \Y~76_combout\);

-- Location: LCCOMB_X54_Y43_N6
\SRLcircuit|Y2[2]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~95_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[19]~input_o\)) # (!\A_s~0_combout\ & ((\A[51]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A_s~0_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \A[51]~input_o\,
	combout => \SRLcircuit|Y2[2]~95_combout\);

-- Location: LCCOMB_X54_Y40_N30
\SRLcircuit|Y2[2]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~96_combout\ = (\B[3]~input_o\ & (((\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[2]~95_combout\)))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[43]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[43]~114_combout\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[2]~95_combout\,
	combout => \SRLcircuit|Y2[2]~96_combout\);

-- Location: LCCOMB_X54_Y40_N8
\SRAcircuit|Y2[39]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[39]~49_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~96_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~96_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~50_combout\,
	combout => \SRAcircuit|Y2[39]~49_combout\);

-- Location: LCCOMB_X60_Y40_N28
\seA_Y3[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[4]~21_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[39]~49_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[36]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRAcircuit|Y2[39]~49_combout\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[36]~39_combout\,
	combout => \seA_Y3[4]~21_combout\);

-- Location: LCCOMB_X60_Y40_N6
\seA_Y3[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[4]~22_combout\ = (\seA_Y3[4]~21_combout\ & (((\SRAcircuit|Y2[37]~41_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[4]~21_combout\ & (\SRAcircuit|Y2[38]~44_combout\ & (\seA_Y3[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[38]~44_combout\,
	datab => \seA_Y3[4]~21_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[37]~41_combout\,
	combout => \seA_Y3[4]~22_combout\);

-- Location: LCCOMB_X57_Y41_N8
\SRLcircuit|Y2[39]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[39]~97_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & ((\SRLcircuit|Y1[43]~27_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y1[43]~27_combout\,
	combout => \SRLcircuit|Y2[39]~97_combout\);

-- Location: LCCOMB_X58_Y41_N14
\SRLcircuit|Y2[39]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[39]~98_combout\ = (\shiftCount[5]~0_combout\ & (\SRLcircuit|Y2[2]~95_combout\ & (\SRAcircuit|Y2[51]~27_combout\))) # (!\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y2[39]~97_combout\) # ((\SRLcircuit|Y2[2]~95_combout\ & 
-- \SRAcircuit|Y2[51]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y2[2]~95_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRLcircuit|Y2[39]~97_combout\,
	combout => \SRLcircuit|Y2[39]~98_combout\);

-- Location: LCCOMB_X58_Y41_N8
\seA_Y3[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[4]~23_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[38]~90_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[36]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[36]~77_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[38]~90_combout\,
	combout => \seA_Y3[4]~23_combout\);

-- Location: LCCOMB_X58_Y41_N2
\seA_Y3[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[4]~24_combout\ = (\seA_Y3[4]~23_combout\ & ((\SRLcircuit|Y2[37]~83_combout\) # ((!\B[0]~input_o\)))) # (!\seA_Y3[4]~23_combout\ & (((\SRLcircuit|Y2[39]~98_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[37]~83_combout\,
	datab => \SRLcircuit|Y2[39]~98_combout\,
	datac => \seA_Y3[4]~23_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[4]~24_combout\);

-- Location: LCCOMB_X67_Y42_N0
\seA_Y3[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[4]~25_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[4]~22_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[4]~22_combout\,
	datac => \seA_Y3[4]~24_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[4]~25_combout\);

-- Location: LCCOMB_X62_Y45_N18
\Y~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~81_combout\ = (\Y~77_combout\ & ((\Y~80_combout\ & ((\seA_Y3[4]~25_combout\))) # (!\Y~80_combout\ & (\Y~76_combout\)))) # (!\Y~77_combout\ & (\Y~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~80_combout\,
	datac => \Y~76_combout\,
	datad => \seA_Y3[4]~25_combout\,
	combout => \Y~81_combout\);

-- Location: LCCOMB_X62_Y45_N16
\Y~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~370_combout\ = (\ShiftFN[1]~input_o\ & (((\Y~81_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Y~74_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Y~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~74_combout\,
	datab => \Y~81_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~370_combout\);

-- Location: LCCOMB_X54_Y42_N12
\SRLcircuit|Y2[2]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~101_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[20]~input_o\)) # (!\A_s~0_combout\ & ((\A[52]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[20]~input_o\,
	datad => \A[52]~input_o\,
	combout => \SRLcircuit|Y2[2]~101_combout\);

-- Location: LCCOMB_X59_Y42_N24
\SRLcircuit|Y2[2]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~102_combout\ = (\B[3]~input_o\ & (((\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[2]~101_combout\)))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[44]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[44]~54_combout\,
	datac => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[2]~101_combout\,
	combout => \SRLcircuit|Y2[2]~102_combout\);

-- Location: LCCOMB_X59_Y42_N2
\SRAcircuit|Y2[40]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[40]~52_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~102_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~102_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~75_combout\,
	combout => \SRAcircuit|Y2[40]~52_combout\);

-- Location: LCCOMB_X60_Y40_N16
\seA_Y3[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[5]~26_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[40]~52_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[37]~41_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[37]~41_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[40]~52_combout\,
	combout => \seA_Y3[5]~26_combout\);

-- Location: LCCOMB_X60_Y40_N2
\seA_Y3[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[5]~27_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[5]~26_combout\ & (\SRAcircuit|Y2[38]~44_combout\)) # (!\seA_Y3[5]~26_combout\ & ((\SRAcircuit|Y2[39]~49_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[38]~44_combout\,
	datab => \SRAcircuit|Y2[39]~49_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \seA_Y3[5]~26_combout\,
	combout => \seA_Y3[5]~27_combout\);

-- Location: LCCOMB_X57_Y40_N8
\SRLcircuit|Y2[40]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[40]~103_combout\ = (\SRLcircuit|Y3~17_combout\ & ((\B[2]~input_o\ & ((\SRLcircuit|Y1[44]~29_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y1[40]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~17_combout\,
	datab => \SRLcircuit|Y1[40]~31_combout\,
	datac => \SRLcircuit|Y1[44]~29_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[40]~103_combout\);

-- Location: LCCOMB_X57_Y40_N10
\SRLcircuit|Y2[40]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[40]~104_combout\ = (\B[2]~input_o\ & ((\A_Y1[52]~20_combout\))) # (!\B[2]~input_o\ & (\A_Y1[48]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[48]~22_combout\,
	datab => \A_Y1[52]~20_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[40]~104_combout\);

-- Location: LCCOMB_X57_Y40_N4
\SRLcircuit|Y2[40]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[40]~105_combout\ = (\SRLcircuit|Y2[40]~103_combout\) # ((\B[3]~input_o\ & (\SRLcircuit|Y2[2]~48_combout\ & \SRLcircuit|Y2[40]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[40]~103_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRLcircuit|Y2[40]~104_combout\,
	combout => \SRLcircuit|Y2[40]~105_combout\);

-- Location: LCCOMB_X58_Y41_N4
\seA_Y3[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[5]~28_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & (\SRLcircuit|Y2[39]~98_combout\))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRLcircuit|Y2[37]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[39]~98_combout\,
	datad => \SRLcircuit|Y2[37]~83_combout\,
	combout => \seA_Y3[5]~28_combout\);

-- Location: LCCOMB_X58_Y41_N22
\seA_Y3[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[5]~29_combout\ = (\seA_Y3[5]~28_combout\ & ((\SRLcircuit|Y2[38]~90_combout\) # ((!\B[0]~input_o\)))) # (!\seA_Y3[5]~28_combout\ & (((\SRLcircuit|Y2[40]~105_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[38]~90_combout\,
	datab => \SRLcircuit|Y2[40]~105_combout\,
	datac => \seA_Y3[5]~28_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[5]~29_combout\);

-- Location: LCCOMB_X67_Y42_N18
\seA_Y3[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[5]~30_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[5]~27_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[5]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[5]~27_combout\,
	datac => \seA_Y3[5]~29_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[5]~30_combout\);

-- Location: LCCOMB_X54_Y41_N16
\SRAcircuit|Y1[20]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[20]~83_combout\ = (\SRLcircuit|Y1[2]~10_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y1[2]~10_combout\,
	datac => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[20]~83_combout\);

-- Location: LCCOMB_X56_Y41_N30
\SRLcircuit|Y2[2]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~215_combout\ = (\B[4]~input_o\ & (\A_Y1[36]~6_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A_Y1[36]~6_combout\,
	combout => \SRLcircuit|Y2[2]~215_combout\);

-- Location: LCCOMB_X56_Y41_N24
\SRLcircuit|Y2[2]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~99_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[20]~83_combout\) # ((\SRLcircuit|Y2[2]~215_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[20]~83_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~215_combout\,
	datad => \SRLcircuit|Y1[12]~13_combout\,
	combout => \SRLcircuit|Y2[2]~99_combout\);

-- Location: LCCOMB_X56_Y45_N0
\SRLcircuit|Y2[8]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[8]~100_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~99_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~99_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~73_combout\,
	combout => \SRLcircuit|Y2[8]~100_combout\);

-- Location: LCCOMB_X59_Y45_N10
\Y~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~86_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[7]~92_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[5]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[5]~94_combout\,
	datac => \SRLcircuit|Y2[7]~92_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~86_combout\);

-- Location: LCCOMB_X59_Y45_N12
\Y~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~87_combout\ = (\B[0]~input_o\ & ((\Y~86_combout\ & (\SRLcircuit|Y2[6]~93_combout\)) # (!\Y~86_combout\ & ((\SRLcircuit|Y2[8]~100_combout\))))) # (!\B[0]~input_o\ & (((\Y~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[6]~93_combout\,
	datac => \SRLcircuit|Y2[8]~100_combout\,
	datad => \Y~86_combout\,
	combout => \Y~87_combout\);

-- Location: LCCOMB_X54_Y42_N26
\SRAcircuit|Y1[20]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[20]~81_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & (\A_Y1[63]~14_combout\)) # (!\shiftCount[5]~0_combout\ & ((\A_Y1[36]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A_Y1[63]~14_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_Y1[36]~6_combout\,
	combout => \SRAcircuit|Y1[20]~81_combout\);

-- Location: LCCOMB_X59_Y43_N4
\SRAcircuit|Y1[20]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[20]~82_combout\ = (\SRAcircuit|Y1[20]~81_combout\) # ((\SRLcircuit|Y1[2]~10_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[20]~81_combout\,
	datab => \SRLcircuit|Y1[2]~10_combout\,
	datac => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[20]~82_combout\);

-- Location: LCCOMB_X56_Y45_N20
\SRAcircuit|Y2[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[8]~50_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRAcircuit|Y1[20]~82_combout\))) # (!\B[3]~input_o\ & (\SRLcircuit|Y1[12]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[12]~13_combout\,
	datab => \SRAcircuit|Y1[20]~82_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[8]~50_combout\);

-- Location: LCCOMB_X56_Y45_N30
\SRAcircuit|Y2[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[8]~51_combout\ = (\SRAcircuit|Y2[8]~50_combout\) # ((!\B[2]~input_o\ & \SRLcircuit|Y2[2]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRAcircuit|Y2[8]~50_combout\,
	datac => \SRLcircuit|Y2[2]~71_combout\,
	combout => \SRAcircuit|Y2[8]~51_combout\);

-- Location: LCCOMB_X58_Y45_N24
\Y~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~84_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[8]~51_combout\ & (\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRAcircuit|Y2[5]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y2[8]~51_combout\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[5]~48_combout\,
	combout => \Y~84_combout\);

-- Location: LCCOMB_X58_Y45_N2
\Y~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~85_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~84_combout\ & ((\SRAcircuit|Y2[6]~45_combout\))) # (!\Y~84_combout\ & (\SRAcircuit|Y2[7]~47_combout\)))) # (!\seA_Y3[20]~0_combout\ & (\Y~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \Y~84_combout\,
	datac => \SRAcircuit|Y2[7]~47_combout\,
	datad => \SRAcircuit|Y2[6]~45_combout\,
	combout => \Y~85_combout\);

-- Location: LCCOMB_X60_Y45_N24
\Y~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~88_combout\ = (\Y~52_combout\ & ((\Y~77_combout\ & ((\Y~85_combout\))) # (!\Y~77_combout\ & (\Y~87_combout\)))) # (!\Y~52_combout\ & (((\Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~87_combout\,
	datab => \Y~85_combout\,
	datac => \Y~52_combout\,
	datad => \Y~77_combout\,
	combout => \Y~88_combout\);

-- Location: IOIBUF_X87_Y73_N22
\C[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(5),
	o => \C[5]~input_o\);

-- Location: LCCOMB_X60_Y45_N18
\Y~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~89_combout\ = (\Y~88_combout\ & ((\seA_Y3[5]~30_combout\) # ((\Y~52_combout\)))) # (!\Y~88_combout\ & (((!\Y~52_combout\ & \C[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[5]~30_combout\,
	datab => \Y~88_combout\,
	datac => \Y~52_combout\,
	datad => \C[5]~input_o\,
	combout => \Y~89_combout\);

-- Location: LCCOMB_X60_Y43_N12
\SLLcircuit|Y[1]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~114_combout\ = (\A_Y1[3]~11_combout\ & (!\B[3]~input_o\ & (\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[3]~11_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y[1]~114_combout\);

-- Location: LCCOMB_X60_Y43_N22
\SLLcircuit|Y2[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~11_combout\ = (\B[2]~input_o\ & ((\A[1]~input_o\))) # (!\B[2]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[5]~input_o\,
	datad => \A[1]~input_o\,
	combout => \SLLcircuit|Y2[5]~11_combout\);

-- Location: LCCOMB_X60_Y43_N0
\SLLcircuit|Y[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~7_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SLLcircuit|Y[1]~114_combout\) # ((\SLLcircuit|Y[1]~5_combout\ & \SLLcircuit|Y2[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~114_combout\,
	datab => \SLLcircuit|Y[1]~5_combout\,
	datac => \SLLcircuit|Y2[5]~11_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SLLcircuit|Y[1]~7_combout\);

-- Location: LCCOMB_X62_Y39_N16
\Y~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~82_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~82_combout\);

-- Location: LCCOMB_X60_Y43_N2
\Y~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~83_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~6_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~6_combout\,
	datab => \SLLcircuit|Y[1]~7_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~82_combout\,
	combout => \Y~83_combout\);

-- Location: LCCOMB_X60_Y45_N22
\Y~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~371_combout\ = (\Y~83_combout\) # ((\Y~89_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~89_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~83_combout\,
	combout => \Y~371_combout\);

-- Location: LCCOMB_X63_Y43_N10
\SLLcircuit|Y2[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~12_combout\ = (\B[2]~input_o\ & (\A[2]~input_o\)) # (!\B[2]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[6]~input_o\,
	combout => \SLLcircuit|Y2[6]~12_combout\);

-- Location: LCCOMB_X63_Y43_N20
\SLLcircuit|Y[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~8_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[4]~10_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~12_combout\,
	datab => \SLLcircuit|Y2[4]~10_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~8_combout\);

-- Location: LCCOMB_X60_Y43_N4
\Y~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~90_combout\ = (!\B[0]~input_o\ & (!\B[3]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & \SLLcircuit|Y[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y[1]~8_combout\,
	combout => \Y~90_combout\);

-- Location: LCCOMB_X60_Y43_N6
\Y~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~91_combout\ = (\Y~82_combout\ & ((\Y~90_combout\) # ((\B[0]~input_o\ & \SLLcircuit|Y[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLLcircuit|Y[1]~7_combout\,
	datac => \Y~90_combout\,
	datad => \Y~82_combout\,
	combout => \Y~91_combout\);

-- Location: IOIBUF_X33_Y73_N1
\C[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(6),
	o => \C[6]~input_o\);

-- Location: LCCOMB_X52_Y43_N28
\SRAcircuit|Y1[21]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[21]~86_combout\ = (\SRLcircuit|Y1[2]~23_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y1[2]~23_combout\,
	datac => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[21]~86_combout\);

-- Location: LCCOMB_X55_Y43_N18
\SRLcircuit|Y2[2]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~216_combout\ = (\B[4]~input_o\ & (\A_Y1[37]~12_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A_Y1[37]~12_combout\,
	combout => \SRLcircuit|Y2[2]~216_combout\);

-- Location: LCCOMB_X54_Y39_N24
\SRLcircuit|Y2[2]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~106_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[21]~86_combout\) # ((\SRLcircuit|Y2[2]~216_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[21]~86_combout\,
	datac => \SRLcircuit|Y1[13]~25_combout\,
	datad => \SRLcircuit|Y2[2]~216_combout\,
	combout => \SRLcircuit|Y2[2]~106_combout\);

-- Location: LCCOMB_X57_Y45_N8
\SRLcircuit|Y2[9]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[9]~107_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~106_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~78_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~106_combout\,
	combout => \SRLcircuit|Y2[9]~107_combout\);

-- Location: LCCOMB_X59_Y45_N14
\Y~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~94_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[8]~100_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[6]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[6]~93_combout\,
	datac => \SRLcircuit|Y2[8]~100_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~94_combout\);

-- Location: LCCOMB_X59_Y45_N0
\Y~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~95_combout\ = (\Y~94_combout\ & (((\SRLcircuit|Y2[7]~92_combout\) # (!\B[0]~input_o\)))) # (!\Y~94_combout\ & (\SRLcircuit|Y2[9]~107_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[9]~107_combout\,
	datab => \SRLcircuit|Y2[7]~92_combout\,
	datac => \Y~94_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~95_combout\);

-- Location: LCCOMB_X62_Y45_N20
\Y~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~96_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~95_combout\))) # (!\Y~52_combout\ & (\C[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[6]~input_o\,
	datab => \Y~95_combout\,
	datac => \Y~77_combout\,
	datad => \Y~52_combout\,
	combout => \Y~96_combout\);

-- Location: LCCOMB_X55_Y43_N4
\SRAcircuit|Y1[21]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[21]~84_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & (\A_Y1[63]~14_combout\)) # (!\shiftCount[5]~0_combout\ & ((\A_Y1[37]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_Y1[37]~12_combout\,
	combout => \SRAcircuit|Y1[21]~84_combout\);

-- Location: LCCOMB_X52_Y43_N2
\SRAcircuit|Y1[21]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[21]~85_combout\ = (\SRAcircuit|Y1[21]~84_combout\) # ((\SRLcircuit|Y1[2]~23_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[21]~84_combout\,
	datab => \SRLcircuit|Y1[2]~23_combout\,
	datac => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[21]~85_combout\);

-- Location: LCCOMB_X58_Y45_N4
\SRAcircuit|Y2[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[9]~53_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[21]~85_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y1[13]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[21]~85_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y1[13]~25_combout\,
	combout => \SRAcircuit|Y2[9]~53_combout\);

-- Location: LCCOMB_X58_Y45_N6
\SRAcircuit|Y2[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[9]~54_combout\ = (\SRAcircuit|Y2[9]~53_combout\) # ((!\B[2]~input_o\ & \SRLcircuit|Y2[2]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRAcircuit|Y2[9]~53_combout\,
	datad => \SRLcircuit|Y2[2]~79_combout\,
	combout => \SRAcircuit|Y2[9]~54_combout\);

-- Location: LCCOMB_X58_Y45_N8
\Y~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~92_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & \SRAcircuit|Y2[9]~54_combout\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[6]~45_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[6]~45_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[9]~54_combout\,
	combout => \Y~92_combout\);

-- Location: LCCOMB_X58_Y45_N18
\Y~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~93_combout\ = (\Y~92_combout\ & ((\SRAcircuit|Y2[7]~47_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\Y~92_combout\ & (((\SRAcircuit|Y2[8]~51_combout\ & \seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[7]~47_combout\,
	datab => \SRAcircuit|Y2[8]~51_combout\,
	datac => \Y~92_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~93_combout\);

-- Location: LCCOMB_X55_Y43_N6
\SRLcircuit|Y2[2]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~108_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & (\A[21]~input_o\)) # (!\A_s~0_combout\ & ((\A[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \A_s~0_combout\,
	datac => \A[21]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SRLcircuit|Y2[2]~108_combout\);

-- Location: LCCOMB_X53_Y40_N28
\SRLcircuit|Y2[2]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~109_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~108_combout\) # ((\SRAcircuit|Y1[47]~117_combout\)))) # (!\B[3]~input_o\ & (((\SRAcircuit|Y1[45]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~108_combout\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRAcircuit|Y1[45]~121_combout\,
	combout => \SRLcircuit|Y2[2]~109_combout\);

-- Location: LCCOMB_X59_Y40_N28
\SRAcircuit|Y2[41]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[41]~55_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~109_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~109_combout\,
	datad => \SRLcircuit|Y2[2]~81_combout\,
	combout => \SRAcircuit|Y2[41]~55_combout\);

-- Location: LCCOMB_X65_Y40_N18
\seA_Y3[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[6]~31_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[41]~55_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[38]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[41]~55_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[38]~44_combout\,
	combout => \seA_Y3[6]~31_combout\);

-- Location: LCCOMB_X65_Y40_N12
\seA_Y3[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[6]~32_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[6]~31_combout\ & (\SRAcircuit|Y2[39]~49_combout\)) # (!\seA_Y3[6]~31_combout\ & ((\SRAcircuit|Y2[40]~52_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[6]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[39]~49_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[40]~52_combout\,
	datad => \seA_Y3[6]~31_combout\,
	combout => \seA_Y3[6]~32_combout\);

-- Location: LCCOMB_X59_Y41_N26
\SRLcircuit|Y2[41]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[41]~110_combout\ = (\SRLcircuit|Y3~17_combout\ & ((\B[2]~input_o\ & (\SRLcircuit|Y1[45]~39_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y1[41]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[45]~39_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y3~17_combout\,
	datad => \SRLcircuit|Y1[41]~41_combout\,
	combout => \SRLcircuit|Y2[41]~110_combout\);

-- Location: LCCOMB_X59_Y41_N20
\SRLcircuit|Y2[41]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[41]~111_combout\ = (\B[2]~input_o\ & ((\A_Y1[53]~28_combout\))) # (!\B[2]~input_o\ & (\A_Y1[49]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A_Y1[49]~30_combout\,
	datac => \B[2]~input_o\,
	datad => \A_Y1[53]~28_combout\,
	combout => \SRLcircuit|Y2[41]~111_combout\);

-- Location: LCCOMB_X59_Y41_N30
\SRLcircuit|Y2[41]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[41]~112_combout\ = (\SRLcircuit|Y2[41]~110_combout\) # ((\B[3]~input_o\ & (\SRLcircuit|Y2[41]~111_combout\ & \SRLcircuit|Y2[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[41]~110_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[41]~111_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[41]~112_combout\);

-- Location: LCCOMB_X61_Y44_N24
\seA_Y3[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[6]~33_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[40]~105_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[38]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[38]~90_combout\,
	datac => \SRLcircuit|Y2[40]~105_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[6]~33_combout\);

-- Location: LCCOMB_X61_Y44_N18
\seA_Y3[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[6]~34_combout\ = (\B[0]~input_o\ & ((\seA_Y3[6]~33_combout\ & ((\SRLcircuit|Y2[39]~98_combout\))) # (!\seA_Y3[6]~33_combout\ & (\SRLcircuit|Y2[41]~112_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[41]~112_combout\,
	datac => \SRLcircuit|Y2[39]~98_combout\,
	datad => \seA_Y3[6]~33_combout\,
	combout => \seA_Y3[6]~34_combout\);

-- Location: LCCOMB_X62_Y45_N6
\seA_Y3[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[6]~35_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[6]~32_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[6]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \seA_Y3[6]~32_combout\,
	datac => \seA_Y3[6]~34_combout\,
	combout => \seA_Y3[6]~35_combout\);

-- Location: LCCOMB_X62_Y45_N8
\Y~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~97_combout\ = (\Y~77_combout\ & ((\Y~96_combout\ & ((\seA_Y3[6]~35_combout\))) # (!\Y~96_combout\ & (\Y~93_combout\)))) # (!\Y~77_combout\ & (\Y~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~96_combout\,
	datac => \Y~93_combout\,
	datad => \seA_Y3[6]~35_combout\,
	combout => \Y~97_combout\);

-- Location: LCCOMB_X62_Y45_N2
\Y~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~372_combout\ = (\Y~91_combout\) # ((\Y~97_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~91_combout\,
	datac => \Y~97_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~372_combout\);

-- Location: LCCOMB_X55_Y41_N0
\SRLcircuit|Y2[2]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~115_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\A_s~0_combout\ & ((\A[22]~input_o\))) # (!\A_s~0_combout\ & (\A[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \A_s~0_combout\,
	datac => \A[54]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SRLcircuit|Y2[2]~115_combout\);

-- Location: LCCOMB_X59_Y40_N14
\SRLcircuit|Y2[2]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~116_combout\ = (\B[3]~input_o\ & (((\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[2]~115_combout\)))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[46]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[46]~112_combout\,
	datac => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[2]~115_combout\,
	combout => \SRLcircuit|Y2[2]~116_combout\);

-- Location: LCCOMB_X59_Y40_N8
\SRAcircuit|Y2[42]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[42]~58_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~116_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~88_combout\,
	datac => \SRLcircuit|Y2[2]~116_combout\,
	combout => \SRAcircuit|Y2[42]~58_combout\);

-- Location: LCCOMB_X65_Y40_N6
\seA_Y3[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[7]~36_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[42]~58_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[39]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[42]~58_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[39]~49_combout\,
	combout => \seA_Y3[7]~36_combout\);

-- Location: LCCOMB_X65_Y40_N0
\seA_Y3[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[7]~37_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[7]~36_combout\ & (\SRAcircuit|Y2[40]~52_combout\)) # (!\seA_Y3[7]~36_combout\ & ((\SRAcircuit|Y2[41]~55_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[7]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[40]~52_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[41]~55_combout\,
	datad => \seA_Y3[7]~36_combout\,
	combout => \seA_Y3[7]~37_combout\);

-- Location: LCCOMB_X57_Y40_N16
\SRLcircuit|Y2[42]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[42]~118_combout\ = (\B[2]~input_o\ & (\A_Y1[54]~24_combout\)) # (!\B[2]~input_o\ & ((\A_Y1[50]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A_Y1[54]~24_combout\,
	datad => \A_Y1[50]~26_combout\,
	combout => \SRLcircuit|Y2[42]~118_combout\);

-- Location: LCCOMB_X57_Y40_N6
\SRLcircuit|Y2[42]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[42]~117_combout\ = (\SRLcircuit|Y3~17_combout\ & ((\B[2]~input_o\ & ((\SRLcircuit|Y1[46]~35_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y1[42]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~17_combout\,
	datab => \SRLcircuit|Y1[42]~37_combout\,
	datac => \SRLcircuit|Y1[46]~35_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[42]~117_combout\);

-- Location: LCCOMB_X57_Y40_N18
\SRLcircuit|Y2[42]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[42]~119_combout\ = (\SRLcircuit|Y2[42]~117_combout\) # ((\B[3]~input_o\ & (\SRLcircuit|Y2[42]~118_combout\ & \SRLcircuit|Y2[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[42]~118_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRLcircuit|Y2[42]~117_combout\,
	combout => \SRLcircuit|Y2[42]~119_combout\);

-- Location: LCCOMB_X61_Y44_N12
\seA_Y3[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[7]~38_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[41]~112_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[39]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[41]~112_combout\,
	datac => \SRLcircuit|Y2[39]~98_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[7]~38_combout\);

-- Location: LCCOMB_X61_Y44_N6
\seA_Y3[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[7]~39_combout\ = (\B[0]~input_o\ & ((\seA_Y3[7]~38_combout\ & ((\SRLcircuit|Y2[40]~105_combout\))) # (!\seA_Y3[7]~38_combout\ & (\SRLcircuit|Y2[42]~119_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[7]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[42]~119_combout\,
	datac => \SRLcircuit|Y2[40]~105_combout\,
	datad => \seA_Y3[7]~38_combout\,
	combout => \seA_Y3[7]~39_combout\);

-- Location: LCCOMB_X60_Y45_N6
\seA_Y3[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[7]~40_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[7]~37_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[7]~37_combout\,
	datab => \seA_Y3[7]~39_combout\,
	datac => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[7]~40_combout\);

-- Location: IOIBUF_X60_Y73_N15
\C[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(7),
	o => \C[7]~input_o\);

-- Location: LCCOMB_X59_Y45_N26
\Y~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~102_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[9]~107_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[7]~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[9]~107_combout\,
	datac => \SRLcircuit|Y2[7]~92_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~102_combout\);

-- Location: LCCOMB_X54_Y41_N6
\SRLcircuit|Y2[2]~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~217_combout\ = (\B[4]~input_o\ & (\A_Y1[38]~4_combout\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A_Y1[38]~4_combout\,
	combout => \SRLcircuit|Y2[2]~217_combout\);

-- Location: LCCOMB_X54_Y41_N10
\SRAcircuit|Y1[22]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[22]~89_combout\ = (!\B[4]~input_o\ & \SRLcircuit|Y1[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~7_combout\,
	combout => \SRAcircuit|Y1[22]~89_combout\);

-- Location: LCCOMB_X54_Y41_N28
\SRLcircuit|Y2[2]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~113_combout\ = (\B[3]~input_o\ & ((\SRLcircuit|Y2[2]~217_combout\) # ((\SRAcircuit|Y1[22]~89_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~217_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y1[14]~9_combout\,
	datad => \SRAcircuit|Y1[22]~89_combout\,
	combout => \SRLcircuit|Y2[2]~113_combout\);

-- Location: LCCOMB_X54_Y41_N14
\SRLcircuit|Y2[10]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[10]~114_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~113_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~86_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~113_combout\,
	combout => \SRLcircuit|Y2[10]~114_combout\);

-- Location: LCCOMB_X59_Y45_N20
\Y~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~103_combout\ = (\B[0]~input_o\ & ((\Y~102_combout\ & (\SRLcircuit|Y2[8]~100_combout\)) # (!\Y~102_combout\ & ((\SRLcircuit|Y2[10]~114_combout\))))) # (!\B[0]~input_o\ & (((\Y~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[8]~100_combout\,
	datac => \Y~102_combout\,
	datad => \SRLcircuit|Y2[10]~114_combout\,
	combout => \Y~103_combout\);

-- Location: LCCOMB_X55_Y41_N12
\SRAcircuit|Y1[22]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[22]~87_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & (\A_Y1[63]~14_combout\)) # (!\shiftCount[5]~0_combout\ & ((\A_Y1[38]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \B[4]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_Y1[38]~4_combout\,
	combout => \SRAcircuit|Y1[22]~87_combout\);

-- Location: LCCOMB_X55_Y41_N22
\SRAcircuit|Y1[22]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[22]~88_combout\ = (\SRAcircuit|Y1[22]~87_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[22]~87_combout\,
	datab => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~7_combout\,
	combout => \SRAcircuit|Y1[22]~88_combout\);

-- Location: LCCOMB_X54_Y37_N12
\SRAcircuit|Y2[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[10]~56_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SRAcircuit|Y1[22]~88_combout\))) # (!\B[3]~input_o\ & (\SRLcircuit|Y1[14]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y1[14]~9_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[22]~88_combout\,
	combout => \SRAcircuit|Y2[10]~56_combout\);

-- Location: LCCOMB_X58_Y45_N12
\SRAcircuit|Y2[10]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[10]~57_combout\ = (\SRAcircuit|Y2[10]~56_combout\) # ((\SRLcircuit|Y2[2]~85_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~85_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y2[10]~56_combout\,
	combout => \SRAcircuit|Y2[10]~57_combout\);

-- Location: LCCOMB_X58_Y45_N22
\Y~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~100_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & \SRAcircuit|Y2[10]~57_combout\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[7]~47_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[7]~47_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[10]~57_combout\,
	combout => \Y~100_combout\);

-- Location: LCCOMB_X58_Y45_N16
\Y~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~101_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~100_combout\ & (\SRAcircuit|Y2[8]~51_combout\)) # (!\Y~100_combout\ & ((\SRAcircuit|Y2[9]~54_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\Y~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[8]~51_combout\,
	datac => \Y~100_combout\,
	datad => \SRAcircuit|Y2[9]~54_combout\,
	combout => \Y~101_combout\);

-- Location: LCCOMB_X60_Y45_N12
\Y~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~104_combout\ = (\Y~52_combout\ & ((\Y~77_combout\ & ((\Y~101_combout\))) # (!\Y~77_combout\ & (\Y~103_combout\)))) # (!\Y~52_combout\ & (((\Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~103_combout\,
	datab => \Y~101_combout\,
	datac => \Y~52_combout\,
	datad => \Y~77_combout\,
	combout => \Y~104_combout\);

-- Location: LCCOMB_X60_Y45_N16
\Y~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~105_combout\ = (\Y~52_combout\ & (((\Y~104_combout\)))) # (!\Y~52_combout\ & ((\Y~104_combout\ & (\seA_Y3[7]~40_combout\)) # (!\Y~104_combout\ & ((\C[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[7]~40_combout\,
	datab => \Y~52_combout\,
	datac => \C[7]~input_o\,
	datad => \Y~104_combout\,
	combout => \Y~105_combout\);

-- Location: LCCOMB_X62_Y42_N4
\SLLcircuit|Y2[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~13_combout\ = (\B[2]~input_o\ & (\A[3]~input_o\)) # (!\B[2]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[7]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y2[7]~13_combout\);

-- Location: LCCOMB_X62_Y43_N24
\SLLcircuit|Y[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~9_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[5]~11_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[7]~13_combout\,
	datab => \SLLcircuit|Y2[5]~11_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~9_combout\);

-- Location: LCCOMB_X63_Y43_N6
\Y~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~98_combout\ = (\Y~82_combout\ & (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~48_combout\ & !\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \A_s~0_combout\,
	combout => \Y~98_combout\);

-- Location: LCCOMB_X63_Y43_N16
\Y~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~99_combout\ = (\Y~98_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~8_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~9_combout\,
	datab => \SLLcircuit|Y[1]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~98_combout\,
	combout => \Y~99_combout\);

-- Location: LCCOMB_X60_Y45_N8
\Y~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~373_combout\ = (\Y~99_combout\) # ((\Y~105_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~105_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~99_combout\,
	combout => \Y~373_combout\);

-- Location: LCCOMB_X63_Y43_N18
\SLLcircuit|Y[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~10_combout\ = (!\A_s~0_combout\ & (\B[1]~input_o\ & (\SRLcircuit|Y2[2]~48_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y[1]~10_combout\);

-- Location: LCCOMB_X61_Y42_N0
\SLLcircuit|Y2[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~14_combout\ = (\B[3]~input_o\ & (\A[0]~input_o\)) # (!\B[3]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[8]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[4]~14_combout\);

-- Location: LCCOMB_X60_Y43_N30
\SLLcircuit|Y2[8]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[8]~123_combout\ = (\SLLcircuit|Y2[4]~14_combout\ & (!\B[2]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~14_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y2[8]~123_combout\);

-- Location: LCCOMB_X60_Y43_N24
\SLLcircuit|Y2[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[8]~15_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SLLcircuit|Y2[8]~123_combout\) # ((\A_Y1[4]~7_combout\ & \SRAcircuit|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[8]~123_combout\,
	datab => \A_Y1[4]~7_combout\,
	datac => \SRAcircuit|Equal4~0_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SLLcircuit|Y2[8]~15_combout\);

-- Location: LCCOMB_X63_Y43_N4
\SLLcircuit|Y[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~11_combout\ = (\SLLcircuit|Y2[6]~12_combout\ & ((\SLLcircuit|Y[1]~10_combout\) # ((!\B[1]~input_o\ & \SLLcircuit|Y2[8]~15_combout\)))) # (!\SLLcircuit|Y2[6]~12_combout\ & (!\B[1]~input_o\ & ((\SLLcircuit|Y2[8]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~12_combout\,
	datab => \B[1]~input_o\,
	datac => \SLLcircuit|Y[1]~10_combout\,
	datad => \SLLcircuit|Y2[8]~15_combout\,
	combout => \SLLcircuit|Y[1]~11_combout\);

-- Location: LCCOMB_X63_Y43_N30
\Y~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~112_combout\ = (\SLLcircuit|Y[1]~11_combout\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y[1]~11_combout\,
	datac => \B[0]~input_o\,
	combout => \Y~112_combout\);

-- Location: LCCOMB_X63_Y43_N24
\Y~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~113_combout\ = (\SLLcircuit|Y[1]~9_combout\ & (\B[0]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~9_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \B[3]~input_o\,
	combout => \Y~113_combout\);

-- Location: IOIBUF_X67_Y73_N22
\C[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(8),
	o => \C[8]~input_o\);

-- Location: LCCOMB_X56_Y36_N24
\SRAcircuit|Y1[23]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[23]~92_combout\ = (!\B[4]~input_o\ & \SRLcircuit|Y1[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~3_combout\,
	combout => \SRAcircuit|Y1[23]~92_combout\);

-- Location: LCCOMB_X55_Y42_N26
\SRLcircuit|Y2[2]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~218_combout\ = (\A_Y1[39]~2_combout\ & (\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[39]~2_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[2]~218_combout\);

-- Location: LCCOMB_X57_Y41_N10
\SRLcircuit|Y2[2]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~120_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y1[23]~92_combout\) # ((\SRLcircuit|Y2[2]~218_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y1[15]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[23]~92_combout\,
	datac => \SRLcircuit|Y2[2]~218_combout\,
	datad => \SRLcircuit|Y1[15]~6_combout\,
	combout => \SRLcircuit|Y2[2]~120_combout\);

-- Location: LCCOMB_X57_Y41_N20
\SRLcircuit|Y2[11]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[11]~121_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~120_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~91_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~120_combout\,
	combout => \SRLcircuit|Y2[11]~121_combout\);

-- Location: LCCOMB_X59_Y45_N22
\Y~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~108_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[10]~114_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[8]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[8]~100_combout\,
	datad => \SRLcircuit|Y2[10]~114_combout\,
	combout => \Y~108_combout\);

-- Location: LCCOMB_X59_Y45_N16
\Y~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~109_combout\ = (\Y~108_combout\ & (((\SRLcircuit|Y2[9]~107_combout\) # (!\B[0]~input_o\)))) # (!\Y~108_combout\ & (\SRLcircuit|Y2[11]~121_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[11]~121_combout\,
	datab => \SRLcircuit|Y2[9]~107_combout\,
	datac => \Y~108_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~109_combout\);

-- Location: LCCOMB_X66_Y43_N16
\Y~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~110_combout\ = (\Y~77_combout\ & (!\Y~52_combout\)) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~109_combout\))) # (!\Y~52_combout\ & (\C[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~52_combout\,
	datac => \C[8]~input_o\,
	datad => \Y~109_combout\,
	combout => \Y~110_combout\);

-- Location: LCCOMB_X55_Y42_N30
\SRAcircuit|Y1[23]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[23]~90_combout\ = (\B[4]~input_o\ & ((\shiftCount[5]~0_combout\ & ((\A_Y1[63]~14_combout\))) # (!\shiftCount[5]~0_combout\ & (\A_Y1[39]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[39]~2_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A_Y1[63]~14_combout\,
	combout => \SRAcircuit|Y1[23]~90_combout\);

-- Location: LCCOMB_X55_Y42_N16
\SRAcircuit|Y1[23]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[23]~91_combout\ = (\SRAcircuit|Y1[23]~90_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[23]~90_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~3_combout\,
	combout => \SRAcircuit|Y1[23]~91_combout\);

-- Location: LCCOMB_X53_Y41_N2
\SRAcircuit|Y2[11]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[11]~60_combout\ = (\SRAcircuit|Y2[34]~25_combout\ & ((\SRAcircuit|Y1[19]~79_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y1[19]~79_combout\,
	datad => \SRLcircuit|Y1[2]~20_combout\,
	combout => \SRAcircuit|Y2[11]~60_combout\);

-- Location: LCCOMB_X53_Y41_N8
\SRAcircuit|Y2[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[11]~59_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRLcircuit|Y1[15]~6_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y1[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[15]~6_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y1[11]~22_combout\,
	datad => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[11]~59_combout\);

-- Location: LCCOMB_X53_Y41_N4
\SRAcircuit|Y2[11]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[11]~61_combout\ = (\SRAcircuit|Y2[11]~60_combout\) # ((\SRAcircuit|Y2[11]~59_combout\) # ((\SRAcircuit|Y1[23]~91_combout\ & \SRAcircuit|Y2[51]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[23]~91_combout\,
	datab => \SRAcircuit|Y2[11]~60_combout\,
	datac => \SRAcircuit|Y2[11]~59_combout\,
	datad => \SRAcircuit|Y2[51]~27_combout\,
	combout => \SRAcircuit|Y2[11]~61_combout\);

-- Location: LCCOMB_X58_Y45_N26
\Y~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~106_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[11]~61_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[8]~51_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRAcircuit|Y2[8]~51_combout\,
	datac => \SRAcircuit|Y2[11]~61_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~106_combout\);

-- Location: LCCOMB_X58_Y45_N20
\Y~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~107_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~106_combout\ & ((\SRAcircuit|Y2[9]~54_combout\))) # (!\Y~106_combout\ & (\SRAcircuit|Y2[10]~57_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[10]~57_combout\,
	datac => \Y~106_combout\,
	datad => \SRAcircuit|Y2[9]~54_combout\,
	combout => \Y~107_combout\);

-- Location: LCCOMB_X58_Y40_N6
\SRLcircuit|Y2[44]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[44]~122_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[44]~122_combout\);

-- Location: LCCOMB_X61_Y40_N28
\SRAcircuit|Y2[43]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[43]~62_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\B[3]~input_o\ & (\A_Y1[55]~15_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[47]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_Y1[55]~15_combout\,
	datac => \A_Y1[47]~16_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y2[43]~62_combout\);

-- Location: LCCOMB_X58_Y40_N8
\SRLcircuit|Y2[2]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~123_combout\ = (\SRAcircuit|Y2[43]~62_combout\) # ((\SRLcircuit|Y3~17_combout\ & (\B[4]~input_o\ & \A_Y1[63]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~17_combout\,
	datab => \B[4]~input_o\,
	datac => \A_Y1[63]~14_combout\,
	datad => \SRAcircuit|Y2[43]~62_combout\,
	combout => \SRLcircuit|Y2[2]~123_combout\);

-- Location: LCCOMB_X58_Y40_N26
\SRLcircuit|Y2[43]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[43]~124_combout\ = (\SRLcircuit|Y2[44]~122_combout\ & ((\SRLcircuit|Y1[43]~27_combout\) # ((\SRLcircuit|Y2[2]~123_combout\ & \B[2]~input_o\)))) # (!\SRLcircuit|Y2[44]~122_combout\ & (\SRLcircuit|Y2[2]~123_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[44]~122_combout\,
	datab => \SRLcircuit|Y2[2]~123_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y1[43]~27_combout\,
	combout => \SRLcircuit|Y2[43]~124_combout\);

-- Location: LCCOMB_X58_Y40_N4
\SRLcircuit|Y2[43]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[43]~125_combout\ = (!\B[2]~input_o\ & (\B[3]~input_o\ & \SRLcircuit|Y2[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[43]~125_combout\);

-- Location: LCCOMB_X58_Y40_N30
\SRLcircuit|Y2[43]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[43]~126_combout\ = (\SRLcircuit|Y2[43]~124_combout\) # ((\SRLcircuit|Y2[43]~125_combout\ & \A_Y1[51]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[43]~124_combout\,
	datac => \SRLcircuit|Y2[43]~125_combout\,
	datad => \A_Y1[51]~18_combout\,
	combout => \SRLcircuit|Y2[43]~126_combout\);

-- Location: LCCOMB_X61_Y44_N16
\seA_Y3[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[8]~43_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[42]~119_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[40]~105_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[42]~119_combout\,
	datac => \SRLcircuit|Y2[40]~105_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[8]~43_combout\);

-- Location: LCCOMB_X61_Y44_N2
\seA_Y3[8]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[8]~44_combout\ = (\B[0]~input_o\ & ((\seA_Y3[8]~43_combout\ & ((\SRLcircuit|Y2[41]~112_combout\))) # (!\seA_Y3[8]~43_combout\ & (\SRLcircuit|Y2[43]~126_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[8]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[43]~126_combout\,
	datab => \SRLcircuit|Y2[41]~112_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[8]~43_combout\,
	combout => \seA_Y3[8]~44_combout\);

-- Location: LCCOMB_X54_Y40_N26
\SRAcircuit|Y2[43]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[43]~63_combout\ = (\B[2]~input_o\ & ((\SRAcircuit|Y2[43]~62_combout\) # ((\SRAcircuit|Y1[47]~117_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[43]~62_combout\,
	datab => \SRAcircuit|Y1[47]~117_combout\,
	datac => \SRLcircuit|Y2[2]~96_combout\,
	datad => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[43]~63_combout\);

-- Location: LCCOMB_X63_Y40_N24
\seA_Y3[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[8]~41_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[43]~63_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\SRAcircuit|Y2[40]~52_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[43]~63_combout\,
	datab => \SRAcircuit|Y2[40]~52_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[8]~41_combout\);

-- Location: LCCOMB_X63_Y40_N26
\seA_Y3[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[8]~42_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[8]~41_combout\ & ((\SRAcircuit|Y2[41]~55_combout\))) # (!\seA_Y3[8]~41_combout\ & (\SRAcircuit|Y2[42]~58_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[8]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[42]~58_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[41]~55_combout\,
	datad => \seA_Y3[8]~41_combout\,
	combout => \seA_Y3[8]~42_combout\);

-- Location: LCCOMB_X66_Y43_N2
\seA_Y3[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[8]~45_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[8]~42_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[8]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[8]~44_combout\,
	datad => \seA_Y3[8]~42_combout\,
	combout => \seA_Y3[8]~45_combout\);

-- Location: LCCOMB_X66_Y43_N12
\Y~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~111_combout\ = (\Y~77_combout\ & ((\Y~110_combout\ & ((\seA_Y3[8]~45_combout\))) # (!\Y~110_combout\ & (\Y~107_combout\)))) # (!\Y~77_combout\ & (\Y~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~110_combout\,
	datac => \Y~107_combout\,
	datad => \seA_Y3[8]~45_combout\,
	combout => \Y~111_combout\);

-- Location: LCCOMB_X63_Y43_N26
\Y~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~114_combout\ = (\Y~82_combout\ & ((\Y~112_combout\) # ((\Y~113_combout\)))) # (!\Y~82_combout\ & (((\Y~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~112_combout\,
	datab => \Y~113_combout\,
	datac => \Y~82_combout\,
	datad => \Y~111_combout\,
	combout => \Y~114_combout\);

-- Location: LCCOMB_X60_Y43_N26
\SLLcircuit|Y2[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~16_combout\ = (\B[3]~input_o\ & (\A[1]~input_o\)) # (!\B[3]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[5]~16_combout\);

-- Location: LCCOMB_X55_Y43_N28
\SLLcircuit|Y2[9]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[9]~124_combout\ = (!\B[2]~input_o\ & (\SLLcircuit|Y2[5]~16_combout\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \SLLcircuit|Y2[5]~16_combout\,
	combout => \SLLcircuit|Y2[9]~124_combout\);

-- Location: LCCOMB_X55_Y43_N16
\SLLcircuit|Y2[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[9]~17_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SLLcircuit|Y2[9]~124_combout\) # ((\A_Y1[5]~13_combout\ & \SRAcircuit|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \A_Y1[5]~13_combout\,
	datac => \SRAcircuit|Equal4~0_combout\,
	datad => \SLLcircuit|Y2[9]~124_combout\,
	combout => \SLLcircuit|Y2[9]~17_combout\);

-- Location: LCCOMB_X62_Y43_N18
\SLLcircuit|Y[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~12_combout\ = (\SLLcircuit|Y2[7]~13_combout\ & ((\SLLcircuit|Y[1]~10_combout\) # ((!\B[1]~input_o\ & \SLLcircuit|Y2[9]~17_combout\)))) # (!\SLLcircuit|Y2[7]~13_combout\ & (!\B[1]~input_o\ & (\SLLcircuit|Y2[9]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[7]~13_combout\,
	datab => \B[1]~input_o\,
	datac => \SLLcircuit|Y2[9]~17_combout\,
	datad => \SLLcircuit|Y[1]~10_combout\,
	combout => \SLLcircuit|Y[1]~12_combout\);

-- Location: LCCOMB_X62_Y43_N12
\Y~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~115_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~11_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~11_combout\,
	datad => \SLLcircuit|Y[1]~12_combout\,
	combout => \Y~115_combout\);

-- Location: IOIBUF_X0_Y32_N15
\C[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(9),
	o => \C[9]~input_o\);

-- Location: LCCOMB_X56_Y45_N22
\SRAcircuit|Y2[12]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[12]~142_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & \SRLcircuit|Y1[12]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y1[12]~13_combout\,
	combout => \SRAcircuit|Y2[12]~142_combout\);

-- Location: LCCOMB_X55_Y44_N30
\SRAcircuit|Y1[24]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[24]~93_combout\ = (\A[56]~input_o\ & ((\SRLcircuit|Y1[16]~42_combout\) # ((\A[24]~input_o\ & \SRAcircuit|Y1[25]~73_combout\)))) # (!\A[56]~input_o\ & (\A[24]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \A[24]~input_o\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SRLcircuit|Y1[16]~42_combout\,
	combout => \SRAcircuit|Y1[24]~93_combout\);

-- Location: LCCOMB_X57_Y44_N14
\SRLcircuit|Y1[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~46_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[8]~input_o\)) # (!\A_s~0_combout\ & ((\A[40]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[40]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~46_combout\);

-- Location: LCCOMB_X55_Y44_N0
\SRAcircuit|Y1[24]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[24]~94_combout\ = (\SRAcircuit|Y1[24]~93_combout\) # ((\B[4]~input_o\ & ((\SRAcircuit|Y1[16]~74_combout\) # (\SRLcircuit|Y1[2]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[16]~74_combout\,
	datab => \B[4]~input_o\,
	datac => \SRAcircuit|Y1[24]~93_combout\,
	datad => \SRLcircuit|Y1[2]~46_combout\,
	combout => \SRAcircuit|Y1[24]~94_combout\);

-- Location: LCCOMB_X59_Y43_N14
\SRAcircuit|Y2[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[12]~64_combout\ = (\SRAcircuit|Y2[34]~25_combout\ & ((\SRAcircuit|Y1[20]~82_combout\) # ((\SRAcircuit|Y1[24]~94_combout\ & \SRAcircuit|Y2[51]~27_combout\)))) # (!\SRAcircuit|Y2[34]~25_combout\ & (\SRAcircuit|Y1[24]~94_combout\ & 
-- (\SRAcircuit|Y2[51]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~25_combout\,
	datab => \SRAcircuit|Y1[24]~94_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[20]~82_combout\,
	combout => \SRAcircuit|Y2[12]~64_combout\);

-- Location: LCCOMB_X59_Y43_N24
\SRAcircuit|Y2[12]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[12]~65_combout\ = (\SRAcircuit|Y2[12]~142_combout\) # ((\SRAcircuit|Y2[12]~64_combout\) # ((\SRAcircuit|Y1[16]~75_combout\ & \SRAcircuit|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[12]~142_combout\,
	datab => \SRAcircuit|Y1[16]~75_combout\,
	datac => \SRAcircuit|Y2[12]~64_combout\,
	datad => \SRAcircuit|Equal4~0_combout\,
	combout => \SRAcircuit|Y2[12]~65_combout\);

-- Location: LCCOMB_X58_Y43_N24
\Y~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~116_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[12]~65_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\SRAcircuit|Y2[9]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[9]~54_combout\,
	datad => \SRAcircuit|Y2[12]~65_combout\,
	combout => \Y~116_combout\);

-- Location: LCCOMB_X58_Y43_N26
\Y~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~117_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~116_combout\ & (\SRAcircuit|Y2[10]~57_combout\)) # (!\Y~116_combout\ & ((\SRAcircuit|Y2[11]~61_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\Y~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[10]~57_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[11]~61_combout\,
	datad => \Y~116_combout\,
	combout => \Y~117_combout\);

-- Location: LCCOMB_X59_Y45_N2
\Y~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~118_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[11]~121_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[9]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[9]~107_combout\,
	datac => \SRLcircuit|Y2[11]~121_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~118_combout\);

-- Location: LCCOMB_X55_Y44_N18
\SRLcircuit|Y2[2]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~127_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\SRLcircuit|Y1[2]~46_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y1[2]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~46_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~44_combout\,
	combout => \SRLcircuit|Y2[2]~127_combout\);

-- Location: LCCOMB_X55_Y44_N4
\SRLcircuit|Y2[2]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~128_combout\ = (\SRLcircuit|Y2[2]~127_combout\) # ((\B[3]~input_o\ & (\SRAcircuit|Y1[24]~93_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y1[16]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[24]~93_combout\,
	datab => \SRLcircuit|Y2[2]~127_combout\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y1[16]~43_combout\,
	combout => \SRLcircuit|Y2[2]~128_combout\);

-- Location: LCCOMB_X56_Y45_N2
\SRLcircuit|Y2[12]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[12]~129_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~128_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~128_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~99_combout\,
	combout => \SRLcircuit|Y2[12]~129_combout\);

-- Location: LCCOMB_X59_Y45_N4
\Y~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~119_combout\ = (\Y~118_combout\ & ((\SRLcircuit|Y2[10]~114_combout\) # ((!\B[0]~input_o\)))) # (!\Y~118_combout\ & (((\SRLcircuit|Y2[12]~129_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[10]~114_combout\,
	datab => \Y~118_combout\,
	datac => \SRLcircuit|Y2[12]~129_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~119_combout\);

-- Location: LCCOMB_X62_Y43_N14
\Y~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~120_combout\ = (\Y~77_combout\ & ((\Y~117_combout\) # ((!\Y~52_combout\)))) # (!\Y~77_combout\ & (((\Y~52_combout\ & \Y~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~117_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~119_combout\,
	combout => \Y~120_combout\);

-- Location: LCCOMB_X61_Y44_N4
\seA_Y3[9]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[9]~48_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[43]~126_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[41]~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[43]~126_combout\,
	datab => \SRLcircuit|Y2[41]~112_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[9]~48_combout\);

-- Location: LCCOMB_X58_Y40_N16
\SRLcircuit|Y2[44]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[44]~131_combout\ = (\A_Y1[52]~20_combout\ & ((\SRLcircuit|Y2[43]~125_combout\) # ((\SRLcircuit|Y1[44]~29_combout\ & \SRLcircuit|Y2[44]~122_combout\)))) # (!\A_Y1[52]~20_combout\ & (((\SRLcircuit|Y1[44]~29_combout\ & 
-- \SRLcircuit|Y2[44]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[52]~20_combout\,
	datab => \SRLcircuit|Y2[43]~125_combout\,
	datac => \SRLcircuit|Y1[44]~29_combout\,
	datad => \SRLcircuit|Y2[44]~122_combout\,
	combout => \SRLcircuit|Y2[44]~131_combout\);

-- Location: LCCOMB_X59_Y42_N12
\SRLcircuit|Y2[2]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~130_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\B[3]~input_o\ & (\A_Y1[56]~21_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[48]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_Y1[56]~21_combout\,
	datad => \A_Y1[48]~22_combout\,
	combout => \SRLcircuit|Y2[2]~130_combout\);

-- Location: LCCOMB_X59_Y42_N16
\SRLcircuit|Y2[44]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[44]~132_combout\ = (\SRLcircuit|Y2[44]~131_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[44]~131_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~130_combout\,
	combout => \SRLcircuit|Y2[44]~132_combout\);

-- Location: LCCOMB_X61_Y44_N30
\seA_Y3[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[9]~49_combout\ = (\B[0]~input_o\ & ((\seA_Y3[9]~48_combout\ & (\SRLcircuit|Y2[42]~119_combout\)) # (!\seA_Y3[9]~48_combout\ & ((\SRLcircuit|Y2[44]~132_combout\))))) # (!\B[0]~input_o\ & (((\seA_Y3[9]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[42]~119_combout\,
	datac => \seA_Y3[9]~48_combout\,
	datad => \SRLcircuit|Y2[44]~132_combout\,
	combout => \seA_Y3[9]~49_combout\);

-- Location: LCCOMB_X59_Y42_N14
\SRAcircuit|Y2[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[44]~66_combout\ = (\B[2]~input_o\ & ((\SRAcircuit|Y1[47]~117_combout\) # ((\SRLcircuit|Y2[2]~130_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datab => \SRLcircuit|Y2[2]~102_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~130_combout\,
	combout => \SRAcircuit|Y2[44]~66_combout\);

-- Location: LCCOMB_X63_Y40_N12
\seA_Y3[9]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[9]~46_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[44]~66_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[41]~55_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[41]~55_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[44]~66_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[9]~46_combout\);

-- Location: LCCOMB_X63_Y40_N6
\seA_Y3[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[9]~47_combout\ = (\seA_Y3[9]~46_combout\ & ((\SRAcircuit|Y2[42]~58_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[9]~46_combout\ & (((\SRAcircuit|Y2[43]~63_combout\ & \seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[9]~46_combout\,
	datab => \SRAcircuit|Y2[42]~58_combout\,
	datac => \SRAcircuit|Y2[43]~63_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \seA_Y3[9]~47_combout\);

-- Location: LCCOMB_X62_Y43_N16
\seA_Y3[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[9]~50_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[9]~47_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[9]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[9]~49_combout\,
	datac => \seA_Y3[9]~47_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[9]~50_combout\);

-- Location: LCCOMB_X62_Y43_N2
\Y~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~121_combout\ = (\Y~120_combout\ & (((\Y~52_combout\) # (\seA_Y3[9]~50_combout\)))) # (!\Y~120_combout\ & (\C[9]~input_o\ & (!\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[9]~input_o\,
	datab => \Y~120_combout\,
	datac => \Y~52_combout\,
	datad => \seA_Y3[9]~50_combout\,
	combout => \Y~121_combout\);

-- Location: LCCOMB_X62_Y43_N4
\Y~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~374_combout\ = (\Y~115_combout\) # ((\Y~121_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~115_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y~121_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~374_combout\);

-- Location: LCCOMB_X56_Y38_N20
\SRAcircuit|Y1[25]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[25]~95_combout\ = (\SRLcircuit|Y1[16]~42_combout\ & ((\A[57]~input_o\) # ((\SRAcircuit|Y1[25]~73_combout\ & \A[25]~input_o\)))) # (!\SRLcircuit|Y1[16]~42_combout\ & (((\SRAcircuit|Y1[25]~73_combout\ & \A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[16]~42_combout\,
	datab => \A[57]~input_o\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \A[25]~input_o\,
	combout => \SRAcircuit|Y1[25]~95_combout\);

-- Location: LCCOMB_X59_Y38_N4
\SRLcircuit|Y1[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~47_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[9]~input_o\)) # (!\A_s~0_combout\ & ((\A[41]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[41]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~47_combout\);

-- Location: LCCOMB_X55_Y39_N24
\SRAcircuit|Y1[25]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[25]~96_combout\ = (\SRAcircuit|Y1[25]~95_combout\) # ((\B[4]~input_o\ & ((\SRAcircuit|Y1[16]~74_combout\) # (\SRLcircuit|Y1[2]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[16]~74_combout\,
	datab => \SRAcircuit|Y1[25]~95_combout\,
	datac => \SRLcircuit|Y1[2]~47_combout\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[25]~96_combout\);

-- Location: LCCOMB_X55_Y40_N4
\SRAcircuit|Y2[13]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[13]~67_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[25]~96_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[21]~85_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (\SRAcircuit|Y2[34]~25_combout\ & 
-- ((\SRAcircuit|Y1[21]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y1[25]~96_combout\,
	datad => \SRAcircuit|Y1[21]~85_combout\,
	combout => \SRAcircuit|Y2[13]~67_combout\);

-- Location: LCCOMB_X56_Y42_N4
\SRAcircuit|Y2[13]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[13]~68_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRAcircuit|Y1[17]~76_combout\) # ((\SRLcircuit|Y1[2]~0_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \SRAcircuit|Equal4~0_combout\,
	datad => \SRAcircuit|Y1[17]~76_combout\,
	combout => \SRAcircuit|Y2[13]~68_combout\);

-- Location: LCCOMB_X58_Y43_N12
\SRAcircuit|Y2[13]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[13]~69_combout\ = (\SRAcircuit|Y2[13]~67_combout\) # ((\SRAcircuit|Y2[13]~68_combout\) # ((\SRAcircuit|Y2[34]~24_combout\ & \SRLcircuit|Y1[13]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[13]~67_combout\,
	datab => \SRAcircuit|Y2[13]~68_combout\,
	datac => \SRAcircuit|Y2[34]~24_combout\,
	datad => \SRLcircuit|Y1[13]~25_combout\,
	combout => \SRAcircuit|Y2[13]~69_combout\);

-- Location: LCCOMB_X58_Y43_N22
\Y~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~124_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[13]~69_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\SRAcircuit|Y2[10]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[10]~57_combout\,
	datad => \SRAcircuit|Y2[13]~69_combout\,
	combout => \Y~124_combout\);

-- Location: LCCOMB_X58_Y43_N0
\Y~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~125_combout\ = (\Y~124_combout\ & (((\SRAcircuit|Y2[11]~61_combout\)) # (!\seA_Y3[20]~0_combout\))) # (!\Y~124_combout\ & (\seA_Y3[20]~0_combout\ & ((\SRAcircuit|Y2[12]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~124_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[11]~61_combout\,
	datad => \SRAcircuit|Y2[12]~65_combout\,
	combout => \Y~125_combout\);

-- Location: LCCOMB_X56_Y42_N22
\SRLcircuit|Y2[2]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~133_combout\ = (\B[3]~input_o\ & (\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~47_combout\)))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y2[2]~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \SRLcircuit|Y2[2]~212_combout\,
	datad => \SRLcircuit|Y1[2]~47_combout\,
	combout => \SRLcircuit|Y2[2]~133_combout\);

-- Location: LCCOMB_X56_Y42_N16
\SRLcircuit|Y2[2]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~134_combout\ = (\SRLcircuit|Y2[2]~133_combout\) # ((\B[3]~input_o\ & (\SRAcircuit|Y1[25]~95_combout\)) # (!\B[3]~input_o\ & ((\SRLcircuit|Y1[17]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[25]~95_combout\,
	datac => \SRLcircuit|Y2[2]~133_combout\,
	datad => \SRLcircuit|Y1[17]~45_combout\,
	combout => \SRLcircuit|Y2[2]~134_combout\);

-- Location: LCCOMB_X57_Y45_N2
\SRLcircuit|Y2[13]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[13]~135_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~134_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~134_combout\,
	datad => \SRLcircuit|Y2[2]~106_combout\,
	combout => \SRLcircuit|Y2[13]~135_combout\);

-- Location: LCCOMB_X59_Y45_N6
\Y~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~126_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[12]~129_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[10]~114_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[10]~114_combout\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[12]~129_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~126_combout\);

-- Location: LCCOMB_X59_Y45_N8
\Y~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~127_combout\ = (\B[0]~input_o\ & ((\Y~126_combout\ & ((\SRLcircuit|Y2[11]~121_combout\))) # (!\Y~126_combout\ & (\SRLcircuit|Y2[13]~135_combout\)))) # (!\B[0]~input_o\ & (((\Y~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[13]~135_combout\,
	datac => \SRLcircuit|Y2[11]~121_combout\,
	datad => \Y~126_combout\,
	combout => \Y~127_combout\);

-- Location: IOIBUF_X96_Y73_N22
\C[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(10),
	o => \C[10]~input_o\);

-- Location: LCCOMB_X62_Y45_N26
\Y~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~128_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & (\Y~127_combout\)) # (!\Y~52_combout\ & ((\C[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~127_combout\,
	datac => \C[10]~input_o\,
	datad => \Y~52_combout\,
	combout => \Y~128_combout\);

-- Location: LCCOMB_X59_Y41_N16
\SRLcircuit|Y2[2]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~136_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\B[3]~input_o\ & (\A_Y1[57]~29_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[49]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[57]~29_combout\,
	datab => \A_Y1[49]~30_combout\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[2]~136_combout\);

-- Location: LCCOMB_X59_Y40_N18
\SRAcircuit|Y2[45]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[45]~70_combout\ = (\B[2]~input_o\ & ((\SRAcircuit|Y1[47]~117_combout\) # ((\SRLcircuit|Y2[2]~136_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datab => \SRLcircuit|Y2[2]~109_combout\,
	datac => \SRLcircuit|Y2[2]~136_combout\,
	datad => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[45]~70_combout\);

-- Location: LCCOMB_X63_Y40_N16
\seA_Y3[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[10]~51_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[45]~70_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\SRAcircuit|Y2[42]~58_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[45]~70_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[42]~58_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[10]~51_combout\);

-- Location: LCCOMB_X63_Y40_N18
\seA_Y3[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[10]~52_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[10]~51_combout\ & (\SRAcircuit|Y2[43]~63_combout\)) # (!\seA_Y3[10]~51_combout\ & ((\SRAcircuit|Y2[44]~66_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[10]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[43]~63_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[44]~66_combout\,
	datad => \seA_Y3[10]~51_combout\,
	combout => \seA_Y3[10]~52_combout\);

-- Location: LCCOMB_X58_Y40_N18
\SRLcircuit|Y2[45]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[45]~137_combout\ = (\A_Y1[53]~28_combout\ & ((\SRLcircuit|Y2[43]~125_combout\) # ((\SRLcircuit|Y1[45]~39_combout\ & \SRLcircuit|Y2[44]~122_combout\)))) # (!\A_Y1[53]~28_combout\ & (\SRLcircuit|Y1[45]~39_combout\ & 
-- ((\SRLcircuit|Y2[44]~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[53]~28_combout\,
	datab => \SRLcircuit|Y1[45]~39_combout\,
	datac => \SRLcircuit|Y2[43]~125_combout\,
	datad => \SRLcircuit|Y2[44]~122_combout\,
	combout => \SRLcircuit|Y2[45]~137_combout\);

-- Location: LCCOMB_X58_Y40_N28
\SRLcircuit|Y2[45]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[45]~138_combout\ = (\SRLcircuit|Y2[45]~137_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[45]~137_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~136_combout\,
	combout => \SRLcircuit|Y2[45]~138_combout\);

-- Location: LCCOMB_X61_Y44_N0
\seA_Y3[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[10]~53_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[44]~132_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[42]~119_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[44]~132_combout\,
	datab => \SRLcircuit|Y2[42]~119_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[10]~53_combout\);

-- Location: LCCOMB_X61_Y44_N26
\seA_Y3[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[10]~54_combout\ = (\B[0]~input_o\ & ((\seA_Y3[10]~53_combout\ & ((\SRLcircuit|Y2[43]~126_combout\))) # (!\seA_Y3[10]~53_combout\ & (\SRLcircuit|Y2[45]~138_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[10]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[45]~138_combout\,
	datab => \SRLcircuit|Y2[43]~126_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[10]~53_combout\,
	combout => \seA_Y3[10]~54_combout\);

-- Location: LCCOMB_X67_Y43_N0
\seA_Y3[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[10]~55_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[10]~52_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[10]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[10]~52_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[10]~54_combout\,
	combout => \seA_Y3[10]~55_combout\);

-- Location: LCCOMB_X62_Y45_N28
\Y~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~129_combout\ = (\Y~77_combout\ & ((\Y~128_combout\ & ((\seA_Y3[10]~55_combout\))) # (!\Y~128_combout\ & (\Y~125_combout\)))) # (!\Y~77_combout\ & (((\Y~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~125_combout\,
	datac => \Y~128_combout\,
	datad => \seA_Y3[10]~55_combout\,
	combout => \Y~129_combout\);

-- Location: LCCOMB_X61_Y42_N18
\SLLcircuit|Y2[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~18_combout\ = (\B[3]~input_o\ & (\A[2]~input_o\)) # (!\B[3]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[6]~18_combout\);

-- Location: LCCOMB_X53_Y40_N18
\SLLcircuit|Y2[10]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[10]~125_combout\ = (!\B[2]~input_o\ & (\SLLcircuit|Y2[6]~18_combout\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[6]~18_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SLLcircuit|Y2[10]~125_combout\);

-- Location: LCCOMB_X54_Y41_N8
\SLLcircuit|Y2[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[10]~19_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SLLcircuit|Y2[10]~125_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \A_Y1[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \SLLcircuit|Y2[10]~125_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \A_Y1[6]~5_combout\,
	combout => \SLLcircuit|Y2[10]~19_combout\);

-- Location: LCCOMB_X61_Y43_N8
\Y~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~122_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[8]~15_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[10]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[10]~19_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[8]~15_combout\,
	combout => \Y~122_combout\);

-- Location: LCCOMB_X62_Y43_N20
\Y~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~123_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~12_combout\))) # (!\B[0]~input_o\ & (\Y~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~122_combout\,
	datab => \SLLcircuit|Y[1]~12_combout\,
	datac => \Y~82_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~123_combout\);

-- Location: LCCOMB_X62_Y45_N12
\Y~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~375_combout\ = (\Y~123_combout\) # ((\Y~129_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y~129_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~123_combout\,
	combout => \Y~375_combout\);

-- Location: LCCOMB_X61_Y44_N20
\seA_Y3[11]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[11]~58_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[45]~138_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[43]~126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[45]~138_combout\,
	datab => \SRLcircuit|Y2[43]~126_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[11]~58_combout\);

-- Location: LCCOMB_X58_Y40_N14
\SRLcircuit|Y2[46]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[46]~143_combout\ = (\SRLcircuit|Y1[46]~35_combout\ & ((\SRLcircuit|Y2[44]~122_combout\) # ((\SRLcircuit|Y2[43]~125_combout\ & \A_Y1[54]~24_combout\)))) # (!\SRLcircuit|Y1[46]~35_combout\ & (\SRLcircuit|Y2[43]~125_combout\ & 
-- (\A_Y1[54]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[46]~35_combout\,
	datab => \SRLcircuit|Y2[43]~125_combout\,
	datac => \A_Y1[54]~24_combout\,
	datad => \SRLcircuit|Y2[44]~122_combout\,
	combout => \SRLcircuit|Y2[46]~143_combout\);

-- Location: LCCOMB_X59_Y40_N12
\SRLcircuit|Y2[2]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~142_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\B[3]~input_o\ & ((\A_Y1[58]~25_combout\))) # (!\B[3]~input_o\ & (\A_Y1[50]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \A_Y1[50]~26_combout\,
	datac => \A_Y1[58]~25_combout\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~142_combout\);

-- Location: LCCOMB_X59_Y40_N16
\SRLcircuit|Y2[46]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[46]~144_combout\ = (\SRLcircuit|Y2[46]~143_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[46]~143_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~142_combout\,
	combout => \SRLcircuit|Y2[46]~144_combout\);

-- Location: LCCOMB_X61_Y44_N14
\seA_Y3[11]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[11]~59_combout\ = (\B[0]~input_o\ & ((\seA_Y3[11]~58_combout\ & ((\SRLcircuit|Y2[44]~132_combout\))) # (!\seA_Y3[11]~58_combout\ & (\SRLcircuit|Y2[46]~144_combout\)))) # (!\B[0]~input_o\ & (\seA_Y3[11]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \seA_Y3[11]~58_combout\,
	datac => \SRLcircuit|Y2[46]~144_combout\,
	datad => \SRLcircuit|Y2[44]~132_combout\,
	combout => \seA_Y3[11]~59_combout\);

-- Location: LCCOMB_X59_Y40_N22
\SRAcircuit|Y2[46]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[46]~74_combout\ = (\B[2]~input_o\ & ((\SRAcircuit|Y1[47]~117_combout\) # ((\SRLcircuit|Y2[2]~142_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~116_combout\,
	datad => \SRLcircuit|Y2[2]~142_combout\,
	combout => \SRAcircuit|Y2[46]~74_combout\);

-- Location: LCCOMB_X63_Y40_N20
\seA_Y3[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[11]~56_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[46]~74_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[43]~63_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[43]~63_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[46]~74_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[11]~56_combout\);

-- Location: LCCOMB_X63_Y40_N14
\seA_Y3[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[11]~57_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[11]~56_combout\ & ((\SRAcircuit|Y2[44]~66_combout\))) # (!\seA_Y3[11]~56_combout\ & (\SRAcircuit|Y2[45]~70_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[11]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[45]~70_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[44]~66_combout\,
	datad => \seA_Y3[11]~56_combout\,
	combout => \seA_Y3[11]~57_combout\);

-- Location: LCCOMB_X62_Y43_N10
\seA_Y3[11]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[11]~60_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[11]~57_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[11]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[11]~59_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[11]~57_combout\,
	combout => \seA_Y3[11]~60_combout\);

-- Location: IOIBUF_X115_Y44_N1
\C[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(11),
	o => \C[11]~input_o\);

-- Location: LCCOMB_X59_Y45_N18
\Y~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~134_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[13]~135_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[11]~121_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[13]~135_combout\,
	datac => \SRLcircuit|Y2[11]~121_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~134_combout\);

-- Location: LCCOMB_X57_Y38_N26
\SRLcircuit|Y1[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~48_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\A[10]~input_o\))) # (!\A_s~0_combout\ & (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \A[10]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~48_combout\);

-- Location: LCCOMB_X55_Y39_N4
\SRLcircuit|Y2[2]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~139_combout\ = (\B[3]~input_o\ & (((\B[4]~input_o\ & \SRLcircuit|Y1[2]~48_combout\)))) # (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~213_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~213_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~48_combout\,
	combout => \SRLcircuit|Y2[2]~139_combout\);

-- Location: LCCOMB_X58_Y38_N2
\SRAcircuit|Y1[26]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[26]~97_combout\ = (\A[58]~input_o\ & ((\SRLcircuit|Y1[16]~42_combout\) # ((\A[26]~input_o\ & \SRAcircuit|Y1[25]~73_combout\)))) # (!\A[58]~input_o\ & (\A[26]~input_o\ & ((\SRAcircuit|Y1[25]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \A[26]~input_o\,
	datac => \SRLcircuit|Y1[16]~42_combout\,
	datad => \SRAcircuit|Y1[25]~73_combout\,
	combout => \SRAcircuit|Y1[26]~97_combout\);

-- Location: LCCOMB_X55_Y39_N14
\SRLcircuit|Y2[2]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~140_combout\ = (\SRLcircuit|Y2[2]~139_combout\) # ((\B[3]~input_o\ & ((\SRAcircuit|Y1[26]~97_combout\))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[18]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[18]~78_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~139_combout\,
	datad => \SRAcircuit|Y1[26]~97_combout\,
	combout => \SRLcircuit|Y2[2]~140_combout\);

-- Location: LCCOMB_X54_Y41_N26
\SRLcircuit|Y2[14]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[14]~141_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~140_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~113_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~140_combout\,
	combout => \SRLcircuit|Y2[14]~141_combout\);

-- Location: LCCOMB_X59_Y45_N28
\Y~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~135_combout\ = (\B[0]~input_o\ & ((\Y~134_combout\ & ((\SRLcircuit|Y2[12]~129_combout\))) # (!\Y~134_combout\ & (\SRLcircuit|Y2[14]~141_combout\)))) # (!\B[0]~input_o\ & (\Y~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~134_combout\,
	datac => \SRLcircuit|Y2[14]~141_combout\,
	datad => \SRLcircuit|Y2[12]~129_combout\,
	combout => \Y~135_combout\);

-- Location: LCCOMB_X55_Y39_N18
\SRAcircuit|Y1[26]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[26]~98_combout\ = (\SRAcircuit|Y1[26]~97_combout\) # ((\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~48_combout\) # (\SRAcircuit|Y1[16]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~48_combout\,
	datab => \SRAcircuit|Y1[26]~97_combout\,
	datac => \SRAcircuit|Y1[16]~74_combout\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[26]~98_combout\);

-- Location: LCCOMB_X54_Y37_N6
\SRAcircuit|Y2[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[14]~71_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[26]~98_combout\) # ((\SRAcircuit|Y1[22]~88_combout\ & \SRAcircuit|Y2[34]~25_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (\SRAcircuit|Y1[22]~88_combout\ & 
-- (\SRAcircuit|Y2[34]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[22]~88_combout\,
	datac => \SRAcircuit|Y2[34]~25_combout\,
	datad => \SRAcircuit|Y1[26]~98_combout\,
	combout => \SRAcircuit|Y2[14]~71_combout\);

-- Location: LCCOMB_X54_Y37_N24
\SRAcircuit|Y2[14]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[14]~72_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRAcircuit|Y1[18]~77_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \B[4]~input_o\,
	datac => \SRAcircuit|Y1[18]~77_combout\,
	datad => \SRLcircuit|Y1[2]~17_combout\,
	combout => \SRAcircuit|Y2[14]~72_combout\);

-- Location: LCCOMB_X54_Y37_N2
\SRAcircuit|Y2[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[14]~73_combout\ = (\SRAcircuit|Y2[14]~71_combout\) # ((\SRAcircuit|Y2[14]~72_combout\) # ((\SRAcircuit|Y2[34]~24_combout\ & \SRLcircuit|Y1[14]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[14]~71_combout\,
	datab => \SRAcircuit|Y2[34]~24_combout\,
	datac => \SRAcircuit|Y2[14]~72_combout\,
	datad => \SRLcircuit|Y1[14]~9_combout\,
	combout => \SRAcircuit|Y2[14]~73_combout\);

-- Location: LCCOMB_X58_Y43_N10
\Y~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~132_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[14]~73_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\SRAcircuit|Y2[11]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[11]~61_combout\,
	datad => \SRAcircuit|Y2[14]~73_combout\,
	combout => \Y~132_combout\);

-- Location: LCCOMB_X58_Y43_N4
\Y~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~133_combout\ = (\Y~132_combout\ & (((\SRAcircuit|Y2[12]~65_combout\)) # (!\seA_Y3[20]~0_combout\))) # (!\Y~132_combout\ & (\seA_Y3[20]~0_combout\ & (\SRAcircuit|Y2[13]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~132_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[13]~69_combout\,
	datad => \SRAcircuit|Y2[12]~65_combout\,
	combout => \Y~133_combout\);

-- Location: LCCOMB_X62_Y43_N0
\Y~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~136_combout\ = (\Y~77_combout\ & (((\Y~133_combout\) # (!\Y~52_combout\)))) # (!\Y~77_combout\ & (\Y~135_combout\ & (\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~135_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~133_combout\,
	combout => \Y~136_combout\);

-- Location: LCCOMB_X62_Y43_N28
\Y~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~137_combout\ = (\Y~52_combout\ & (((\Y~136_combout\)))) # (!\Y~52_combout\ & ((\Y~136_combout\ & (\seA_Y3[11]~60_combout\)) # (!\Y~136_combout\ & ((\C[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[11]~60_combout\,
	datab => \C[11]~input_o\,
	datac => \Y~52_combout\,
	datad => \Y~136_combout\,
	combout => \Y~137_combout\);

-- Location: LCCOMB_X62_Y42_N30
\SLLcircuit|Y2[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~20_combout\ = (\B[3]~input_o\ & (\A[3]~input_o\)) # (!\B[3]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[7]~20_combout\);

-- Location: LCCOMB_X62_Y42_N24
\SLLcircuit|Y2[11]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[11]~126_combout\ = (\SLLcircuit|Y2[7]~20_combout\ & (!\B[2]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \SLLcircuit|Y2[7]~20_combout\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y2[11]~126_combout\);

-- Location: LCCOMB_X62_Y42_N8
\SLLcircuit|Y2[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[11]~21_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SLLcircuit|Y2[11]~126_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \A_Y1[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_Y1[7]~3_combout\,
	datad => \SLLcircuit|Y2[11]~126_combout\,
	combout => \SLLcircuit|Y2[11]~21_combout\);

-- Location: LCCOMB_X61_Y43_N2
\Y~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~130_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[9]~17_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[11]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[9]~17_combout\,
	datab => \SLLcircuit|Y2[11]~21_combout\,
	datac => \B[1]~input_o\,
	combout => \Y~130_combout\);

-- Location: LCCOMB_X62_Y43_N22
\Y~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~131_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\Y~122_combout\))) # (!\B[0]~input_o\ & (\Y~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~130_combout\,
	datab => \Y~82_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~122_combout\,
	combout => \Y~131_combout\);

-- Location: LCCOMB_X62_Y43_N30
\Y~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~376_combout\ = (\Y~131_combout\) # ((\Y~137_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~137_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y~131_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~376_combout\);

-- Location: IOIBUF_X35_Y73_N22
\C[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(12),
	o => \C[12]~input_o\);

-- Location: LCCOMB_X59_Y45_N30
\Y~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~141_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[14]~141_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[12]~129_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[14]~141_combout\,
	datad => \SRLcircuit|Y2[12]~129_combout\,
	combout => \Y~141_combout\);

-- Location: LCCOMB_X54_Y39_N26
\SRLcircuit|Y1[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~49_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[11]~input_o\)) # (!\A_s~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[43]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~49_combout\);

-- Location: LCCOMB_X53_Y41_N30
\SRLcircuit|Y2[2]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~145_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y1[2]~49_combout\ & (\B[4]~input_o\))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y2[2]~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~49_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y2[2]~214_combout\,
	combout => \SRLcircuit|Y2[2]~145_combout\);

-- Location: LCCOMB_X55_Y44_N14
\SRAcircuit|Y1[27]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[27]~99_combout\ = (\A[27]~input_o\ & ((\SRAcircuit|Y1[25]~73_combout\) # ((\A[59]~input_o\ & \SRLcircuit|Y1[16]~42_combout\)))) # (!\A[27]~input_o\ & (\A[59]~input_o\ & ((\SRLcircuit|Y1[16]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \A[59]~input_o\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SRLcircuit|Y1[16]~42_combout\,
	combout => \SRAcircuit|Y1[27]~99_combout\);

-- Location: LCCOMB_X53_Y41_N0
\SRLcircuit|Y2[2]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~146_combout\ = (\SRLcircuit|Y2[2]~145_combout\) # ((\B[3]~input_o\ & ((\SRAcircuit|Y1[27]~99_combout\))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[19]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[19]~80_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~145_combout\,
	datad => \SRAcircuit|Y1[27]~99_combout\,
	combout => \SRLcircuit|Y2[2]~146_combout\);

-- Location: LCCOMB_X57_Y41_N22
\SRLcircuit|Y2[15]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[15]~147_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~146_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~146_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~120_combout\,
	combout => \SRLcircuit|Y2[15]~147_combout\);

-- Location: LCCOMB_X60_Y44_N26
\Y~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~142_combout\ = (\Y~141_combout\ & ((\SRLcircuit|Y2[13]~135_combout\) # ((!\B[0]~input_o\)))) # (!\Y~141_combout\ & (((\B[0]~input_o\ & \SRLcircuit|Y2[15]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~141_combout\,
	datab => \SRLcircuit|Y2[13]~135_combout\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[15]~147_combout\,
	combout => \Y~142_combout\);

-- Location: LCCOMB_X60_Y45_N10
\Y~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~143_combout\ = (\Y~52_combout\ & (((\Y~142_combout\ & !\Y~77_combout\)))) # (!\Y~52_combout\ & ((\C[12]~input_o\) # ((\Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[12]~input_o\,
	datab => \Y~142_combout\,
	datac => \Y~52_combout\,
	datad => \Y~77_combout\,
	combout => \Y~143_combout\);

-- Location: LCCOMB_X58_Y40_N24
\SRLcircuit|Y2[2]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~148_combout\ = (\B[3]~input_o\ & (\A_Y1[59]~17_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[51]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[59]~17_combout\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[51]~18_combout\,
	combout => \SRLcircuit|Y2[2]~148_combout\);

-- Location: LCCOMB_X58_Y40_N22
\SRLcircuit|Y2[47]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[47]~219_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~148_combout\ & ((\SRLcircuit|Y2[2]~48_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~148_combout\,
	datac => \SRLcircuit|Y2[2]~123_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[47]~219_combout\);

-- Location: LCCOMB_X61_Y44_N8
\seA_Y3[12]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[12]~63_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[46]~144_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[44]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[44]~132_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[46]~144_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[12]~63_combout\);

-- Location: LCCOMB_X61_Y44_N10
\seA_Y3[12]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[12]~64_combout\ = (\B[0]~input_o\ & ((\seA_Y3[12]~63_combout\ & ((\SRLcircuit|Y2[45]~138_combout\))) # (!\seA_Y3[12]~63_combout\ & (\SRLcircuit|Y2[47]~219_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[12]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[47]~219_combout\,
	datac => \seA_Y3[12]~63_combout\,
	datad => \SRLcircuit|Y2[45]~138_combout\,
	combout => \seA_Y3[12]~64_combout\);

-- Location: LCCOMB_X58_Y40_N2
\SRLcircuit|Y2[47]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[47]~149_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (\B[2]~input_o\ & \SRLcircuit|Y2[2]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~148_combout\,
	combout => \SRLcircuit|Y2[47]~149_combout\);

-- Location: LCCOMB_X62_Y40_N24
\SRLcircuit|Y2[54]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[54]~151_combout\ = (!\B[2]~input_o\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[54]~151_combout\);

-- Location: LCCOMB_X56_Y40_N6
\SRLcircuit|Y2[2]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~150_combout\ = (!\B[3]~input_o\ & ((\A_s~0_combout\ & (\A[15]~input_o\)) # (!\A_s~0_combout\ & ((\A[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SRLcircuit|Y2[2]~150_combout\);

-- Location: LCCOMB_X61_Y40_N14
\SRAcircuit|Y2[47]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[47]~78_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (\SRAcircuit|Y2[34]~25_combout\ & ((\A_Y1[55]~15_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~25_combout\,
	datab => \A_Y1[63]~14_combout\,
	datac => \A_Y1[55]~15_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y2[47]~78_combout\);

-- Location: LCCOMB_X62_Y40_N2
\SRAcircuit|Y2[47]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[47]~79_combout\ = (\SRLcircuit|Y2[47]~149_combout\) # ((\SRAcircuit|Y2[47]~78_combout\) # ((\SRLcircuit|Y2[54]~151_combout\ & \SRLcircuit|Y2[2]~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[47]~149_combout\,
	datab => \SRLcircuit|Y2[54]~151_combout\,
	datac => \SRLcircuit|Y2[2]~150_combout\,
	datad => \SRAcircuit|Y2[47]~78_combout\,
	combout => \SRAcircuit|Y2[47]~79_combout\);

-- Location: LCCOMB_X63_Y40_N0
\seA_Y3[12]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[12]~61_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & ((\SRAcircuit|Y2[47]~79_combout\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRAcircuit|Y2[44]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[44]~66_combout\,
	datad => \SRAcircuit|Y2[47]~79_combout\,
	combout => \seA_Y3[12]~61_combout\);

-- Location: LCCOMB_X63_Y40_N2
\seA_Y3[12]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[12]~62_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[12]~61_combout\ & (\SRAcircuit|Y2[45]~70_combout\)) # (!\seA_Y3[12]~61_combout\ & ((\SRAcircuit|Y2[46]~74_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[12]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[45]~70_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[46]~74_combout\,
	datad => \seA_Y3[12]~61_combout\,
	combout => \seA_Y3[12]~62_combout\);

-- Location: LCCOMB_X60_Y45_N4
\seA_Y3[12]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[12]~65_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[12]~62_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[12]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[12]~64_combout\,
	datab => \seA_Y3[12]~62_combout\,
	datac => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[12]~65_combout\);

-- Location: LCCOMB_X53_Y41_N18
\SRAcircuit|Y2[15]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[15]~76_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRAcircuit|Y1[19]~79_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SRAcircuit|Equal4~0_combout\,
	datac => \SRAcircuit|Y1[19]~79_combout\,
	datad => \SRLcircuit|Y1[2]~20_combout\,
	combout => \SRAcircuit|Y2[15]~76_combout\);

-- Location: LCCOMB_X53_Y41_N14
\SRAcircuit|Y1[27]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[27]~100_combout\ = (\SRAcircuit|Y1[27]~99_combout\) # ((\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~49_combout\) # (\SRAcircuit|Y1[16]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~49_combout\,
	datab => \SRAcircuit|Y1[16]~74_combout\,
	datac => \B[4]~input_o\,
	datad => \SRAcircuit|Y1[27]~99_combout\,
	combout => \SRAcircuit|Y1[27]~100_combout\);

-- Location: LCCOMB_X53_Y41_N16
\SRAcircuit|Y2[15]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[15]~75_combout\ = (\SRAcircuit|Y1[23]~91_combout\ & ((\SRAcircuit|Y2[34]~25_combout\) # ((\SRAcircuit|Y1[27]~100_combout\ & \SRAcircuit|Y2[51]~27_combout\)))) # (!\SRAcircuit|Y1[23]~91_combout\ & (((\SRAcircuit|Y1[27]~100_combout\ & 
-- \SRAcircuit|Y2[51]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[23]~91_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y1[27]~100_combout\,
	datad => \SRAcircuit|Y2[51]~27_combout\,
	combout => \SRAcircuit|Y2[15]~75_combout\);

-- Location: LCCOMB_X53_Y41_N28
\SRAcircuit|Y2[15]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[15]~77_combout\ = (\SRAcircuit|Y2[15]~76_combout\) # ((\SRAcircuit|Y2[15]~75_combout\) # ((\SRLcircuit|Y1[15]~6_combout\ & \SRAcircuit|Y2[34]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[15]~6_combout\,
	datab => \SRAcircuit|Y2[15]~76_combout\,
	datac => \SRAcircuit|Y2[34]~24_combout\,
	datad => \SRAcircuit|Y2[15]~75_combout\,
	combout => \SRAcircuit|Y2[15]~77_combout\);

-- Location: LCCOMB_X58_Y43_N14
\Y~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~139_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[15]~77_combout\ & ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y2[12]~65_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[15]~77_combout\,
	datab => \SRAcircuit|Y2[12]~65_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~139_combout\);

-- Location: LCCOMB_X58_Y43_N8
\Y~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~140_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~139_combout\ & ((\SRAcircuit|Y2[13]~69_combout\))) # (!\Y~139_combout\ & (\SRAcircuit|Y2[14]~73_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[14]~73_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \Y~139_combout\,
	datad => \SRAcircuit|Y2[13]~69_combout\,
	combout => \Y~140_combout\);

-- Location: LCCOMB_X60_Y45_N30
\Y~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~144_combout\ = (\Y~143_combout\ & ((\seA_Y3[12]~65_combout\) # ((!\Y~77_combout\)))) # (!\Y~143_combout\ & (((\Y~140_combout\ & \Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~143_combout\,
	datab => \seA_Y3[12]~65_combout\,
	datac => \Y~140_combout\,
	datad => \Y~77_combout\,
	combout => \Y~144_combout\);

-- Location: LCCOMB_X61_Y42_N12
\SLLcircuit|Y2[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~22_combout\ = (\B[3]~input_o\ & (\A[4]~input_o\)) # (!\B[3]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[4]~22_combout\);

-- Location: LCCOMB_X61_Y42_N14
\SLLcircuit|Y2[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[12]~23_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~14_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[4]~14_combout\,
	datad => \SLLcircuit|Y2[4]~22_combout\,
	combout => \SLLcircuit|Y2[12]~23_combout\);

-- Location: LCCOMB_X61_Y43_N4
\SLLcircuit|Y[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~13_combout\ = (\B[1]~input_o\ & (((\SLLcircuit|Y2[10]~19_combout\)))) # (!\B[1]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & (\SLLcircuit|Y2[12]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[25]~73_combout\,
	datab => \SLLcircuit|Y2[12]~23_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[10]~19_combout\,
	combout => \SLLcircuit|Y[1]~13_combout\);

-- Location: LCCOMB_X61_Y43_N6
\Y~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~138_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\Y~130_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~13_combout\,
	datad => \Y~130_combout\,
	combout => \Y~138_combout\);

-- Location: LCCOMB_X60_Y45_N26
\Y~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~377_combout\ = (\Y~138_combout\) # ((\Y~144_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~144_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~138_combout\,
	combout => \Y~377_combout\);

-- Location: IOIBUF_X0_Y36_N15
\C[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(13),
	o => \C[13]~input_o\);

-- Location: LCCOMB_X59_Y43_N20
\SRAcircuit|Y2[16]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[16]~81_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRAcircuit|Y1[20]~81_combout\) # ((\SRLcircuit|Y1[2]~10_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[20]~81_combout\,
	datab => \SRLcircuit|Y1[2]~10_combout\,
	datac => \B[4]~input_o\,
	datad => \SRAcircuit|Equal4~0_combout\,
	combout => \SRAcircuit|Y2[16]~81_combout\);

-- Location: LCCOMB_X59_Y43_N26
\SRAcircuit|Y2[16]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[16]~80_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRAcircuit|Y1[16]~75_combout\) # ((\SRAcircuit|Y1[24]~94_combout\ & \SRAcircuit|Y2[34]~25_combout\)))) # (!\SRAcircuit|Y2[34]~24_combout\ & (\SRAcircuit|Y1[24]~94_combout\ & 
-- ((\SRAcircuit|Y2[34]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \SRAcircuit|Y1[24]~94_combout\,
	datac => \SRAcircuit|Y1[16]~75_combout\,
	datad => \SRAcircuit|Y2[34]~25_combout\,
	combout => \SRAcircuit|Y2[16]~80_combout\);

-- Location: LCCOMB_X58_Y42_N30
\SRLcircuit|Y1[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~50_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\A[12]~input_o\))) # (!\A_s~0_combout\ & (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~50_combout\);

-- Location: LCCOMB_X58_Y38_N12
\SRAcircuit|Y1[28]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[28]~101_combout\ = (\A[28]~input_o\ & ((\SRAcircuit|Y1[25]~73_combout\) # ((\A[60]~input_o\ & \SRLcircuit|Y1[16]~42_combout\)))) # (!\A[28]~input_o\ & (\A[60]~input_o\ & (\SRLcircuit|Y1[16]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[60]~input_o\,
	datac => \SRLcircuit|Y1[16]~42_combout\,
	datad => \SRAcircuit|Y1[25]~73_combout\,
	combout => \SRAcircuit|Y1[28]~101_combout\);

-- Location: LCCOMB_X56_Y41_N2
\SRAcircuit|Y1[28]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[28]~102_combout\ = (\SRAcircuit|Y1[28]~101_combout\) # ((\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~50_combout\) # (\SRAcircuit|Y1[16]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SRLcircuit|Y1[2]~50_combout\,
	datac => \SRAcircuit|Y1[28]~101_combout\,
	datad => \SRAcircuit|Y1[16]~74_combout\,
	combout => \SRAcircuit|Y1[28]~102_combout\);

-- Location: LCCOMB_X59_Y43_N30
\SRAcircuit|Y2[16]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[16]~82_combout\ = (\SRAcircuit|Y2[16]~81_combout\) # ((\SRAcircuit|Y2[16]~80_combout\) # ((\SRAcircuit|Y2[51]~27_combout\ & \SRAcircuit|Y1[28]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y2[16]~81_combout\,
	datac => \SRAcircuit|Y2[16]~80_combout\,
	datad => \SRAcircuit|Y1[28]~102_combout\,
	combout => \SRAcircuit|Y2[16]~82_combout\);

-- Location: LCCOMB_X58_Y43_N2
\Y~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~146_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[16]~82_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\SRAcircuit|Y2[13]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[16]~82_combout\,
	datad => \SRAcircuit|Y2[13]~69_combout\,
	combout => \Y~146_combout\);

-- Location: LCCOMB_X58_Y43_N20
\Y~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~147_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~146_combout\ & ((\SRAcircuit|Y2[14]~73_combout\))) # (!\Y~146_combout\ & (\SRAcircuit|Y2[15]~77_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~146_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[15]~77_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[14]~73_combout\,
	datad => \Y~146_combout\,
	combout => \Y~147_combout\);

-- Location: LCCOMB_X56_Y41_N28
\SRLcircuit|Y2[2]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~152_combout\ = (\B[3]~input_o\ & (((\SRLcircuit|Y1[2]~50_combout\ & \B[4]~input_o\)))) # (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~215_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~215_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y1[2]~50_combout\,
	datad => \B[4]~input_o\,
	combout => \SRLcircuit|Y2[2]~152_combout\);

-- Location: LCCOMB_X56_Y41_N6
\SRLcircuit|Y2[2]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~153_combout\ = (\SRLcircuit|Y2[2]~152_combout\) # ((\B[3]~input_o\ & ((\SRAcircuit|Y1[28]~101_combout\))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[20]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[20]~83_combout\,
	datab => \SRAcircuit|Y1[28]~101_combout\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y2[2]~152_combout\,
	combout => \SRLcircuit|Y2[2]~153_combout\);

-- Location: LCCOMB_X56_Y41_N16
\SRLcircuit|Y2[16]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[16]~154_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~153_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~128_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~153_combout\,
	combout => \SRLcircuit|Y2[16]~154_combout\);

-- Location: LCCOMB_X60_Y44_N28
\Y~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~148_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[15]~147_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[13]~135_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[15]~147_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[13]~135_combout\,
	combout => \Y~148_combout\);

-- Location: LCCOMB_X60_Y44_N22
\Y~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~149_combout\ = (\B[0]~input_o\ & ((\Y~148_combout\ & (\SRLcircuit|Y2[14]~141_combout\)) # (!\Y~148_combout\ & ((\SRLcircuit|Y2[16]~154_combout\))))) # (!\B[0]~input_o\ & (((\Y~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[14]~141_combout\,
	datab => \SRLcircuit|Y2[16]~154_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~148_combout\,
	combout => \Y~149_combout\);

-- Location: LCCOMB_X60_Y44_N8
\Y~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~150_combout\ = (\Y~77_combout\ & ((\Y~147_combout\) # ((!\Y~52_combout\)))) # (!\Y~77_combout\ & (((\Y~52_combout\ & \Y~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~147_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~149_combout\,
	combout => \Y~150_combout\);

-- Location: LCCOMB_X61_Y44_N28
\seA_Y3[13]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[13]~68_combout\ = (\B[1]~input_o\ & (((!\B[0]~input_o\ & \SRLcircuit|Y2[47]~219_combout\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[45]~138_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRLcircuit|Y2[45]~138_combout\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[47]~219_combout\,
	combout => \seA_Y3[13]~68_combout\);

-- Location: LCCOMB_X59_Y42_N10
\SRLcircuit|Y2[48]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[48]~155_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\A_Y1[56]~21_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[48]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[56]~21_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[48]~22_combout\,
	combout => \SRLcircuit|Y2[48]~155_combout\);

-- Location: LCCOMB_X62_Y40_N20
\SRLcircuit|Y2[2]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~156_combout\ = (\B[3]~input_o\ & ((\A_Y1[60]~19_combout\))) # (!\B[3]~input_o\ & (\A_Y1[52]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[52]~20_combout\,
	datab => \A_Y1[60]~19_combout\,
	datac => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~156_combout\);

-- Location: LCCOMB_X62_Y40_N6
\SRLcircuit|Y2[48]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[48]~157_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRLcircuit|Y2[48]~155_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[48]~155_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~156_combout\,
	combout => \SRLcircuit|Y2[48]~157_combout\);

-- Location: LCCOMB_X61_Y44_N22
\seA_Y3[13]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[13]~69_combout\ = (\B[0]~input_o\ & ((\seA_Y3[13]~68_combout\ & (\SRLcircuit|Y2[46]~144_combout\)) # (!\seA_Y3[13]~68_combout\ & ((\SRLcircuit|Y2[48]~157_combout\))))) # (!\B[0]~input_o\ & (\seA_Y3[13]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \seA_Y3[13]~68_combout\,
	datac => \SRLcircuit|Y2[46]~144_combout\,
	datad => \SRLcircuit|Y2[48]~157_combout\,
	combout => \seA_Y3[13]~69_combout\);

-- Location: LCCOMB_X66_Y40_N0
\SRAcircuit|Y2[48]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[48]~83_combout\ = (\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[48]~157_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[48]~157_combout\,
	combout => \SRAcircuit|Y2[48]~83_combout\);

-- Location: LCCOMB_X63_Y40_N28
\seA_Y3[13]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[13]~66_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & ((\SRAcircuit|Y2[48]~83_combout\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRAcircuit|Y2[45]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[45]~70_combout\,
	datad => \SRAcircuit|Y2[48]~83_combout\,
	combout => \seA_Y3[13]~66_combout\);

-- Location: LCCOMB_X63_Y40_N30
\seA_Y3[13]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[13]~67_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[13]~66_combout\ & ((\SRAcircuit|Y2[46]~74_combout\))) # (!\seA_Y3[13]~66_combout\ & (\SRAcircuit|Y2[47]~79_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[13]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[47]~79_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[46]~74_combout\,
	datad => \seA_Y3[13]~66_combout\,
	combout => \seA_Y3[13]~67_combout\);

-- Location: LCCOMB_X60_Y44_N2
\seA_Y3[13]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[13]~70_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[13]~67_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[13]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[13]~69_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[13]~67_combout\,
	combout => \seA_Y3[13]~70_combout\);

-- Location: LCCOMB_X60_Y44_N20
\Y~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~151_combout\ = (\Y~150_combout\ & (((\Y~52_combout\) # (\seA_Y3[13]~70_combout\)))) # (!\Y~150_combout\ & (\C[13]~input_o\ & (!\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[13]~input_o\,
	datab => \Y~150_combout\,
	datac => \Y~52_combout\,
	datad => \seA_Y3[13]~70_combout\,
	combout => \Y~151_combout\);

-- Location: LCCOMB_X60_Y43_N20
\SLLcircuit|Y2[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~24_combout\ = (\B[3]~input_o\ & (\A[5]~input_o\)) # (!\B[3]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[5]~input_o\,
	datad => \A[13]~input_o\,
	combout => \SLLcircuit|Y2[5]~24_combout\);

-- Location: LCCOMB_X60_Y43_N14
\SLLcircuit|Y2[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[13]~25_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[5]~16_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~16_combout\,
	datab => \SLLcircuit|Y2[5]~24_combout\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y2[13]~25_combout\);

-- Location: LCCOMB_X61_Y43_N24
\SLLcircuit|Y[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~14_combout\ = (\B[1]~input_o\ & (((\SLLcircuit|Y2[11]~21_combout\)))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[13]~25_combout\ & ((\SRAcircuit|Y1[25]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[13]~25_combout\,
	datab => \SLLcircuit|Y2[11]~21_combout\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y1[25]~73_combout\,
	combout => \SLLcircuit|Y[1]~14_combout\);

-- Location: LCCOMB_X61_Y43_N26
\Y~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~145_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~13_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~13_combout\,
	datad => \SLLcircuit|Y[1]~14_combout\,
	combout => \Y~145_combout\);

-- Location: LCCOMB_X60_Y44_N10
\Y~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~378_combout\ = (\Y~145_combout\) # ((\Y~151_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~151_combout\,
	datab => \Y~145_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~378_combout\);

-- Location: IOIBUF_X0_Y36_N22
\C[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(14),
	o => \C[14]~input_o\);

-- Location: LCCOMB_X60_Y44_N30
\Y~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~155_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[16]~154_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[14]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[14]~141_combout\,
	datad => \SRLcircuit|Y2[16]~154_combout\,
	combout => \Y~155_combout\);

-- Location: LCCOMB_X58_Y39_N14
\SRLcircuit|Y1[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~51_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\A[13]~input_o\))) # (!\A_s~0_combout\ & (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \shiftCount[5]~0_combout\,
	datac => \A[13]~input_o\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~51_combout\);

-- Location: LCCOMB_X54_Y39_N12
\SRLcircuit|Y2[2]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~158_combout\ = (\B[3]~input_o\ & (((\B[4]~input_o\ & \SRLcircuit|Y1[2]~51_combout\)))) # (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~216_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~51_combout\,
	combout => \SRLcircuit|Y2[2]~158_combout\);

-- Location: LCCOMB_X58_Y39_N12
\SRAcircuit|Y1[29]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[29]~103_combout\ = (\A[61]~input_o\ & ((\SRLcircuit|Y1[16]~42_combout\) # ((\SRAcircuit|Y1[25]~73_combout\ & \A[29]~input_o\)))) # (!\A[61]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & ((\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \SRAcircuit|Y1[25]~73_combout\,
	datac => \SRLcircuit|Y1[16]~42_combout\,
	datad => \A[29]~input_o\,
	combout => \SRAcircuit|Y1[29]~103_combout\);

-- Location: LCCOMB_X54_Y39_N6
\SRLcircuit|Y2[2]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~159_combout\ = (\SRLcircuit|Y2[2]~158_combout\) # ((\B[3]~input_o\ & ((\SRAcircuit|Y1[29]~103_combout\))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[21]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~158_combout\,
	datab => \SRAcircuit|Y1[21]~86_combout\,
	datac => \B[3]~input_o\,
	datad => \SRAcircuit|Y1[29]~103_combout\,
	combout => \SRLcircuit|Y2[2]~159_combout\);

-- Location: LCCOMB_X59_Y42_N20
\SRLcircuit|Y2[17]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[17]~160_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~159_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~134_combout\,
	datab => \SRLcircuit|Y2[2]~159_combout\,
	datac => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[17]~160_combout\);

-- Location: LCCOMB_X60_Y44_N0
\Y~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~156_combout\ = (\B[0]~input_o\ & ((\Y~155_combout\ & (\SRLcircuit|Y2[15]~147_combout\)) # (!\Y~155_combout\ & ((\SRLcircuit|Y2[17]~160_combout\))))) # (!\B[0]~input_o\ & (((\Y~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[15]~147_combout\,
	datac => \Y~155_combout\,
	datad => \SRLcircuit|Y2[17]~160_combout\,
	combout => \Y~156_combout\);

-- Location: LCCOMB_X60_Y45_N0
\Y~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~157_combout\ = (\Y~52_combout\ & (((\Y~156_combout\ & !\Y~77_combout\)))) # (!\Y~52_combout\ & ((\C[14]~input_o\) # ((\Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[14]~input_o\,
	datab => \Y~156_combout\,
	datac => \Y~52_combout\,
	datad => \Y~77_combout\,
	combout => \Y~157_combout\);

-- Location: LCCOMB_X59_Y41_N28
\SRLcircuit|Y2[2]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~162_combout\ = (\B[3]~input_o\ & (\A_Y1[61]~27_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[53]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A_Y1[61]~27_combout\,
	datad => \A_Y1[53]~28_combout\,
	combout => \SRLcircuit|Y2[2]~162_combout\);

-- Location: LCCOMB_X59_Y41_N10
\SRLcircuit|Y2[49]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[49]~161_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\A_Y1[57]~29_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[49]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[57]~29_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A_Y1[49]~30_combout\,
	combout => \SRLcircuit|Y2[49]~161_combout\);

-- Location: LCCOMB_X59_Y41_N22
\SRLcircuit|Y2[49]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[49]~163_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRLcircuit|Y2[49]~161_combout\) # ((\SRLcircuit|Y2[2]~162_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \SRLcircuit|Y2[2]~162_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[49]~161_combout\,
	combout => \SRLcircuit|Y2[49]~163_combout\);

-- Location: LCCOMB_X63_Y41_N10
\seA_Y3[14]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[14]~73_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[48]~157_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[46]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[46]~144_combout\,
	datad => \SRLcircuit|Y2[48]~157_combout\,
	combout => \seA_Y3[14]~73_combout\);

-- Location: LCCOMB_X63_Y41_N4
\seA_Y3[14]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[14]~74_combout\ = (\B[0]~input_o\ & ((\seA_Y3[14]~73_combout\ & (\SRLcircuit|Y2[47]~219_combout\)) # (!\seA_Y3[14]~73_combout\ & ((\SRLcircuit|Y2[49]~163_combout\))))) # (!\B[0]~input_o\ & (((\seA_Y3[14]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[47]~219_combout\,
	datab => \SRLcircuit|Y2[49]~163_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[14]~73_combout\,
	combout => \seA_Y3[14]~74_combout\);

-- Location: LCCOMB_X63_Y41_N0
\SRAcircuit|Y2[49]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[49]~87_combout\ = (\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[49]~163_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[49]~163_combout\,
	combout => \SRAcircuit|Y2[49]~87_combout\);

-- Location: LCCOMB_X63_Y40_N8
\seA_Y3[14]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[14]~71_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\SRAcircuit|Y2[49]~87_combout\))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRAcircuit|Y2[46]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[49]~87_combout\,
	datad => \SRAcircuit|Y2[46]~74_combout\,
	combout => \seA_Y3[14]~71_combout\);

-- Location: LCCOMB_X63_Y40_N10
\seA_Y3[14]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[14]~72_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[14]~71_combout\ & (\SRAcircuit|Y2[47]~79_combout\)) # (!\seA_Y3[14]~71_combout\ & ((\SRAcircuit|Y2[48]~83_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[14]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[47]~79_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \seA_Y3[14]~71_combout\,
	datad => \SRAcircuit|Y2[48]~83_combout\,
	combout => \seA_Y3[14]~72_combout\);

-- Location: LCCOMB_X60_Y45_N2
\seA_Y3[14]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[14]~75_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[14]~72_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[14]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[14]~74_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[14]~72_combout\,
	combout => \seA_Y3[14]~75_combout\);

-- Location: LCCOMB_X55_Y39_N8
\SRAcircuit|Y1[29]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[29]~104_combout\ = (\SRAcircuit|Y1[29]~103_combout\) # ((\B[4]~input_o\ & ((\SRLcircuit|Y1[2]~51_combout\) # (\SRAcircuit|Y1[16]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[29]~103_combout\,
	datab => \SRLcircuit|Y1[2]~51_combout\,
	datac => \SRAcircuit|Y1[16]~74_combout\,
	datad => \B[4]~input_o\,
	combout => \SRAcircuit|Y1[29]~104_combout\);

-- Location: LCCOMB_X55_Y40_N6
\SRAcircuit|Y2[17]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[17]~85_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[29]~104_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \SRAcircuit|Y1[21]~85_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (((\SRAcircuit|Equal4~0_combout\ & 
-- \SRAcircuit|Y1[21]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[29]~104_combout\,
	datac => \SRAcircuit|Equal4~0_combout\,
	datad => \SRAcircuit|Y1[21]~85_combout\,
	combout => \SRAcircuit|Y2[17]~85_combout\);

-- Location: LCCOMB_X56_Y42_N18
\SRAcircuit|Y2[17]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[17]~84_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRAcircuit|Y1[17]~76_combout\) # ((\SRLcircuit|Y1[2]~0_combout\ & !\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \SRLcircuit|Y1[2]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SRAcircuit|Y1[17]~76_combout\,
	combout => \SRAcircuit|Y2[17]~84_combout\);

-- Location: LCCOMB_X55_Y42_N18
\SRAcircuit|Y2[17]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[17]~86_combout\ = (\SRAcircuit|Y2[17]~85_combout\) # ((\SRAcircuit|Y2[17]~84_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[25]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~25_combout\,
	datab => \SRAcircuit|Y1[25]~96_combout\,
	datac => \SRAcircuit|Y2[17]~85_combout\,
	datad => \SRAcircuit|Y2[17]~84_combout\,
	combout => \SRAcircuit|Y2[17]~86_combout\);

-- Location: LCCOMB_X58_Y43_N30
\Y~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~153_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[17]~86_combout\ & ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y2[14]~73_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[17]~86_combout\,
	datab => \SRAcircuit|Y2[14]~73_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~153_combout\);

-- Location: LCCOMB_X58_Y43_N16
\Y~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~154_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~153_combout\ & ((\SRAcircuit|Y2[15]~77_combout\))) # (!\Y~153_combout\ & (\SRAcircuit|Y2[16]~82_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[16]~82_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \Y~153_combout\,
	datad => \SRAcircuit|Y2[15]~77_combout\,
	combout => \Y~154_combout\);

-- Location: LCCOMB_X60_Y45_N20
\Y~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~158_combout\ = (\Y~157_combout\ & ((\seA_Y3[14]~75_combout\) # ((!\Y~77_combout\)))) # (!\Y~157_combout\ & (((\Y~154_combout\ & \Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~157_combout\,
	datab => \seA_Y3[14]~75_combout\,
	datac => \Y~154_combout\,
	datad => \Y~77_combout\,
	combout => \Y~158_combout\);

-- Location: LCCOMB_X61_Y42_N8
\SLLcircuit|Y2[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~26_combout\ = (\B[3]~input_o\ & (\A[6]~input_o\)) # (!\B[3]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[3]~input_o\,
	datad => \A[14]~input_o\,
	combout => \SLLcircuit|Y2[6]~26_combout\);

-- Location: LCCOMB_X61_Y42_N2
\SLLcircuit|Y2[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[14]~27_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~18_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[6]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[6]~18_combout\,
	datac => \SLLcircuit|Y2[6]~26_combout\,
	combout => \SLLcircuit|Y2[14]~27_combout\);

-- Location: LCCOMB_X61_Y43_N20
\SLLcircuit|Y[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~15_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[12]~23_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[14]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[12]~23_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[14]~27_combout\,
	combout => \SLLcircuit|Y[1]~15_combout\);

-- Location: LCCOMB_X61_Y43_N30
\Y~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~152_combout\ = (\B[0]~input_o\ & (((\SLLcircuit|Y[1]~14_combout\)))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~15_combout\ & (\SRAcircuit|Y1[25]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLLcircuit|Y[1]~15_combout\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y[1]~14_combout\,
	combout => \Y~152_combout\);

-- Location: LCCOMB_X60_Y45_N28
\Y~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~379_combout\ = (\ShiftFN[1]~input_o\ & (\Y~158_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y~152_combout\))) # (!\ShiftFN[0]~input_o\ & (\Y~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~158_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~152_combout\,
	combout => \Y~379_combout\);

-- Location: IOIBUF_X31_Y73_N1
\C[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(15),
	o => \C[15]~input_o\);

-- Location: LCCOMB_X62_Y40_N8
\SRLcircuit|Y2[50]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[50]~167_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\A_Y1[58]~25_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[50]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[58]~25_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[50]~26_combout\,
	combout => \SRLcircuit|Y2[50]~167_combout\);

-- Location: LCCOMB_X62_Y40_N18
\SRLcircuit|Y2[2]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~168_combout\ = (\B[3]~input_o\ & (\A_Y1[62]~23_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[54]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[62]~23_combout\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[54]~24_combout\,
	combout => \SRLcircuit|Y2[2]~168_combout\);

-- Location: LCCOMB_X62_Y40_N12
\SRLcircuit|Y2[50]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[50]~169_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRLcircuit|Y2[50]~167_combout\) # ((\B[2]~input_o\ & \SRLcircuit|Y2[2]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRLcircuit|Y2[50]~167_combout\,
	datad => \SRLcircuit|Y2[2]~168_combout\,
	combout => \SRLcircuit|Y2[50]~169_combout\);

-- Location: LCCOMB_X63_Y41_N24
\seA_Y3[15]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[15]~78_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[49]~163_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[47]~219_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[47]~219_combout\,
	datad => \SRLcircuit|Y2[49]~163_combout\,
	combout => \seA_Y3[15]~78_combout\);

-- Location: LCCOMB_X63_Y41_N2
\seA_Y3[15]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[15]~79_combout\ = (\seA_Y3[15]~78_combout\ & (((\SRLcircuit|Y2[48]~157_combout\) # (!\B[0]~input_o\)))) # (!\seA_Y3[15]~78_combout\ & (\SRLcircuit|Y2[50]~169_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[50]~169_combout\,
	datab => \seA_Y3[15]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[48]~157_combout\,
	combout => \seA_Y3[15]~79_combout\);

-- Location: LCCOMB_X63_Y41_N6
\SRAcircuit|Y2[50]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[50]~91_combout\ = (\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[50]~169_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[47]~117_combout\,
	datad => \SRLcircuit|Y2[50]~169_combout\,
	combout => \SRAcircuit|Y2[50]~91_combout\);

-- Location: LCCOMB_X63_Y40_N4
\seA_Y3[15]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[15]~76_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\SRAcircuit|Y2[50]~91_combout\))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRAcircuit|Y2[47]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[50]~91_combout\,
	datad => \SRAcircuit|Y2[47]~79_combout\,
	combout => \seA_Y3[15]~76_combout\);

-- Location: LCCOMB_X63_Y40_N22
\seA_Y3[15]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[15]~77_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[15]~76_combout\ & ((\SRAcircuit|Y2[48]~83_combout\))) # (!\seA_Y3[15]~76_combout\ & (\SRAcircuit|Y2[49]~87_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[15]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[49]~87_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \seA_Y3[15]~76_combout\,
	datad => \SRAcircuit|Y2[48]~83_combout\,
	combout => \seA_Y3[15]~77_combout\);

-- Location: LCCOMB_X61_Y45_N2
\seA_Y3[15]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[15]~80_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[15]~77_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[15]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[15]~79_combout\,
	datac => \seA_Y3[15]~77_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[15]~80_combout\);

-- Location: LCCOMB_X55_Y38_N0
\SRLcircuit|Y1[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~52_combout\ = (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\A[14]~input_o\))) # (!\A_s~0_combout\ & (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[14]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~52_combout\);

-- Location: LCCOMB_X54_Y41_N4
\SRLcircuit|Y2[2]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~164_combout\ = (\B[3]~input_o\ & (\B[4]~input_o\ & (\SRLcircuit|Y1[2]~52_combout\))) # (!\B[3]~input_o\ & (((\SRLcircuit|Y2[2]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y1[2]~52_combout\,
	datad => \SRLcircuit|Y2[2]~217_combout\,
	combout => \SRLcircuit|Y2[2]~164_combout\);

-- Location: LCCOMB_X55_Y38_N6
\SRAcircuit|Y1[30]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[30]~105_combout\ = (\A[30]~input_o\ & ((\SRAcircuit|Y1[25]~73_combout\) # ((\SRLcircuit|Y1[16]~42_combout\ & \A[62]~input_o\)))) # (!\A[30]~input_o\ & (((\SRLcircuit|Y1[16]~42_combout\ & \A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \SRAcircuit|Y1[25]~73_combout\,
	datac => \SRLcircuit|Y1[16]~42_combout\,
	datad => \A[62]~input_o\,
	combout => \SRAcircuit|Y1[30]~105_combout\);

-- Location: LCCOMB_X54_Y41_N30
\SRLcircuit|Y2[2]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~165_combout\ = (\SRLcircuit|Y2[2]~164_combout\) # ((\B[3]~input_o\ & ((\SRAcircuit|Y1[30]~105_combout\))) # (!\B[3]~input_o\ & (\SRAcircuit|Y1[22]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[22]~89_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~164_combout\,
	datad => \SRAcircuit|Y1[30]~105_combout\,
	combout => \SRLcircuit|Y2[2]~165_combout\);

-- Location: LCCOMB_X54_Y41_N0
\SRLcircuit|Y2[18]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[18]~166_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~165_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~165_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~140_combout\,
	combout => \SRLcircuit|Y2[18]~166_combout\);

-- Location: LCCOMB_X60_Y41_N8
\Y~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~162_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[17]~160_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[15]~147_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[15]~147_combout\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[17]~160_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~162_combout\);

-- Location: LCCOMB_X60_Y41_N18
\Y~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~163_combout\ = (\Y~162_combout\ & ((\SRLcircuit|Y2[16]~154_combout\) # ((!\B[0]~input_o\)))) # (!\Y~162_combout\ & (((\SRLcircuit|Y2[18]~166_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[16]~154_combout\,
	datab => \SRLcircuit|Y2[18]~166_combout\,
	datac => \Y~162_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~163_combout\);

-- Location: LCCOMB_X55_Y39_N2
\SRAcircuit|Y1[30]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[30]~106_combout\ = (\SRAcircuit|Y1[30]~105_combout\) # ((\B[4]~input_o\ & ((\SRAcircuit|Y1[16]~74_combout\) # (\SRLcircuit|Y1[2]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SRAcircuit|Y1[30]~105_combout\,
	datac => \SRAcircuit|Y1[16]~74_combout\,
	datad => \SRLcircuit|Y1[2]~52_combout\,
	combout => \SRAcircuit|Y1[30]~106_combout\);

-- Location: LCCOMB_X54_Y37_N22
\SRAcircuit|Y2[18]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[18]~89_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRAcircuit|Y1[22]~88_combout\) # ((\SRAcircuit|Y1[30]~106_combout\ & \SRAcircuit|Y2[51]~27_combout\)))) # (!\SRAcircuit|Equal4~0_combout\ & (\SRAcircuit|Y1[30]~106_combout\ & 
-- (\SRAcircuit|Y2[51]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \SRAcircuit|Y1[30]~106_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[22]~88_combout\,
	combout => \SRAcircuit|Y2[18]~89_combout\);

-- Location: LCCOMB_X54_Y37_N28
\SRAcircuit|Y2[18]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[18]~88_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRAcircuit|Y1[18]~77_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[18]~77_combout\,
	datab => \B[4]~input_o\,
	datac => \SRAcircuit|Y2[34]~24_combout\,
	datad => \SRLcircuit|Y1[2]~17_combout\,
	combout => \SRAcircuit|Y2[18]~88_combout\);

-- Location: LCCOMB_X54_Y37_N16
\SRAcircuit|Y2[18]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[18]~90_combout\ = (\SRAcircuit|Y2[18]~89_combout\) # ((\SRAcircuit|Y2[18]~88_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[26]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[18]~89_combout\,
	datab => \SRAcircuit|Y2[18]~88_combout\,
	datac => \SRAcircuit|Y2[34]~25_combout\,
	datad => \SRAcircuit|Y1[26]~98_combout\,
	combout => \SRAcircuit|Y2[18]~90_combout\);

-- Location: LCCOMB_X62_Y41_N16
\Y~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~160_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[18]~90_combout\ & ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y2[15]~77_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[18]~90_combout\,
	datab => \SRAcircuit|Y2[15]~77_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~160_combout\);

-- Location: LCCOMB_X60_Y44_N18
\Y~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~161_combout\ = (\Y~160_combout\ & ((\SRAcircuit|Y2[16]~82_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\Y~160_combout\ & (((\SRAcircuit|Y2[17]~86_combout\ & \seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[16]~82_combout\,
	datab => \SRAcircuit|Y2[17]~86_combout\,
	datac => \Y~160_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~161_combout\);

-- Location: LCCOMB_X60_Y44_N12
\Y~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~164_combout\ = (\Y~77_combout\ & (((\Y~161_combout\) # (!\Y~52_combout\)))) # (!\Y~77_combout\ & (\Y~163_combout\ & (\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~163_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~161_combout\,
	combout => \Y~164_combout\);

-- Location: LCCOMB_X60_Y44_N6
\Y~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~165_combout\ = (\Y~52_combout\ & (((\Y~164_combout\)))) # (!\Y~52_combout\ & ((\Y~164_combout\ & ((\seA_Y3[15]~80_combout\))) # (!\Y~164_combout\ & (\C[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~52_combout\,
	datab => \C[15]~input_o\,
	datac => \seA_Y3[15]~80_combout\,
	datad => \Y~164_combout\,
	combout => \Y~165_combout\);

-- Location: LCCOMB_X62_Y42_N10
\SLLcircuit|Y2[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~28_combout\ = (\B[3]~input_o\ & (\A[7]~input_o\)) # (!\B[3]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[15]~input_o\,
	combout => \SLLcircuit|Y2[7]~28_combout\);

-- Location: LCCOMB_X62_Y42_N12
\SLLcircuit|Y2[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[15]~29_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[7]~20_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[7]~20_combout\,
	datad => \SLLcircuit|Y2[7]~28_combout\,
	combout => \SLLcircuit|Y2[15]~29_combout\);

-- Location: LCCOMB_X61_Y43_N16
\SLLcircuit|Y[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~16_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[13]~25_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[15]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[13]~25_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[15]~29_combout\,
	combout => \SLLcircuit|Y[1]~16_combout\);

-- Location: LCCOMB_X61_Y43_N10
\Y~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~159_combout\ = (\B[0]~input_o\ & ((\SLLcircuit|Y[1]~15_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y[1]~16_combout\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~15_combout\,
	combout => \Y~159_combout\);

-- Location: LCCOMB_X60_Y44_N24
\Y~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~166_combout\ = (\Y~82_combout\ & (((\Y~159_combout\ & \SRAcircuit|Y1[25]~73_combout\)))) # (!\Y~82_combout\ & (\Y~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~165_combout\,
	datab => \Y~159_combout\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \Y~82_combout\,
	combout => \Y~166_combout\);

-- Location: LCCOMB_X56_Y44_N8
\SLLcircuit|Y2[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~30_combout\ = (\B[4]~input_o\ & ((\A[0]~input_o\))) # (!\B[4]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[0]~input_o\,
	combout => \SLLcircuit|Y2[4]~30_combout\);

-- Location: LCCOMB_X62_Y42_N22
\SLLcircuit|Y2[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~31_combout\ = (!\B[3]~input_o\ & ((\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\))) # (!\ExtWord~input_o\ & (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SLLcircuit|Y2[4]~31_combout\);

-- Location: LCCOMB_X62_Y42_N2
\SLLcircuit|Y2[7]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~127_combout\ = (\B[3]~input_o\ & (\SRLcircuit|Y2[2]~48_combout\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SLLcircuit|Y2[7]~127_combout\);

-- Location: LCCOMB_X61_Y42_N28
\SLLcircuit|Y2[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~32_combout\ = (\SLLcircuit|Y2[4]~30_combout\ & ((\SLLcircuit|Y2[4]~31_combout\) # ((\SLLcircuit|Y2[7]~127_combout\ & \A[8]~input_o\)))) # (!\SLLcircuit|Y2[4]~30_combout\ & (((\SLLcircuit|Y2[7]~127_combout\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~30_combout\,
	datab => \SLLcircuit|Y2[4]~31_combout\,
	datac => \SLLcircuit|Y2[7]~127_combout\,
	datad => \A[8]~input_o\,
	combout => \SLLcircuit|Y2[4]~32_combout\);

-- Location: LCCOMB_X61_Y42_N22
\SLLcircuit|Y2[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[16]~33_combout\ = (\B[2]~input_o\ & (((\SRAcircuit|Y1[25]~73_combout\ & \SLLcircuit|Y2[4]~22_combout\)))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[4]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[4]~32_combout\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y2[4]~22_combout\,
	combout => \SLLcircuit|Y2[16]~33_combout\);

-- Location: LCCOMB_X61_Y43_N28
\SLLcircuit|Y[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~17_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & ((\SLLcircuit|Y2[14]~27_combout\)))) # (!\B[1]~input_o\ & (((\SLLcircuit|Y2[16]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[25]~73_combout\,
	datab => \SLLcircuit|Y2[16]~33_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[14]~27_combout\,
	combout => \SLLcircuit|Y[1]~17_combout\);

-- Location: LCCOMB_X61_Y43_N22
\Y~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~167_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y1[25]~73_combout\ & \SLLcircuit|Y[1]~16_combout\)))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLLcircuit|Y[1]~17_combout\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y[1]~16_combout\,
	combout => \Y~167_combout\);

-- Location: LCCOMB_X61_Y40_N0
\SRAcircuit|Y2[51]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[51]~94_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~48_combout\ & (\A_Y1[55]~15_combout\)) # (!\SRLcircuit|Y2[2]~48_combout\ & ((\A_Y1[63]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[55]~15_combout\,
	datab => \A_Y1[63]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y2[51]~94_combout\);

-- Location: LCCOMB_X58_Y40_N20
\SRAcircuit|Y2[51]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[51]~93_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\A_Y1[59]~17_combout\)) # (!\B[3]~input_o\ & ((\A_Y1[51]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[59]~17_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[51]~18_combout\,
	combout => \SRAcircuit|Y2[51]~93_combout\);

-- Location: LCCOMB_X63_Y43_N22
\SRAcircuit|Y2[51]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[51]~145_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\))) # (!\B[2]~input_o\ & (!\SRLcircuit|Y2[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[51]~145_combout\);

-- Location: LCCOMB_X65_Y41_N24
\SRAcircuit|Y2[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[51]~95_combout\ = (\SRAcircuit|Y2[51]~145_combout\ & (\A_Y1[63]~14_combout\)) # (!\SRAcircuit|Y2[51]~145_combout\ & (((\SRAcircuit|Y2[51]~94_combout\) # (\SRAcircuit|Y2[51]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \SRAcircuit|Y2[51]~94_combout\,
	datac => \SRAcircuit|Y2[51]~93_combout\,
	datad => \SRAcircuit|Y2[51]~145_combout\,
	combout => \SRAcircuit|Y2[51]~95_combout\);

-- Location: LCCOMB_X63_Y41_N12
\seA_Y3[16]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[16]~81_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[51]~95_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[48]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRAcircuit|Y2[51]~95_combout\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[48]~83_combout\,
	combout => \seA_Y3[16]~81_combout\);

-- Location: LCCOMB_X63_Y41_N14
\seA_Y3[16]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[16]~82_combout\ = (\seA_Y3[16]~81_combout\ & ((\SRAcircuit|Y2[49]~87_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[16]~81_combout\ & (((\seA_Y3[20]~0_combout\ & \SRAcircuit|Y2[50]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[16]~81_combout\,
	datab => \SRAcircuit|Y2[49]~87_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[50]~91_combout\,
	combout => \seA_Y3[16]~82_combout\);

-- Location: LCCOMB_X61_Y40_N18
\SRLcircuit|Y2[51]~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[51]~172_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\A_Y1[63]~14_combout\))) # (!\B[3]~input_o\ & (\A_Y1[55]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_Y1[55]~15_combout\,
	datac => \B[2]~input_o\,
	datad => \A_Y1[63]~14_combout\,
	combout => \SRLcircuit|Y2[51]~172_combout\);

-- Location: LCCOMB_X61_Y40_N4
\SRLcircuit|Y2[51]~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[51]~173_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[51]~93_combout\) # (\SRLcircuit|Y2[51]~172_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \SRAcircuit|Y2[51]~93_combout\,
	datad => \SRLcircuit|Y2[51]~172_combout\,
	combout => \SRLcircuit|Y2[51]~173_combout\);

-- Location: LCCOMB_X63_Y41_N16
\seA_Y3[16]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[16]~83_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[50]~169_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[48]~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[50]~169_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[48]~157_combout\,
	combout => \seA_Y3[16]~83_combout\);

-- Location: LCCOMB_X63_Y41_N18
\seA_Y3[16]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[16]~84_combout\ = (\B[0]~input_o\ & ((\seA_Y3[16]~83_combout\ & (\SRLcircuit|Y2[49]~163_combout\)) # (!\seA_Y3[16]~83_combout\ & ((\SRLcircuit|Y2[51]~173_combout\))))) # (!\B[0]~input_o\ & (((\seA_Y3[16]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[49]~163_combout\,
	datac => \SRLcircuit|Y2[51]~173_combout\,
	datad => \seA_Y3[16]~83_combout\,
	combout => \seA_Y3[16]~84_combout\);

-- Location: LCCOMB_X62_Y41_N14
\seA_Y3[16]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[16]~85_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[16]~82_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[16]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[16]~82_combout\,
	datad => \seA_Y3[16]~84_combout\,
	combout => \seA_Y3[16]~85_combout\);

-- Location: LCCOMB_X56_Y38_N6
\SRLcircuit|Y1[31]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[31]~53_combout\ = (\SRAcircuit|Y1[25]~73_combout\ & ((\A[31]~input_o\) # ((\SRAcircuit|Equal2~0_combout\ & \A_Y1[47]~16_combout\)))) # (!\SRAcircuit|Y1[25]~73_combout\ & (\SRAcircuit|Equal2~0_combout\ & ((\A_Y1[47]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[25]~73_combout\,
	datab => \SRAcircuit|Equal2~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A_Y1[47]~16_combout\,
	combout => \SRLcircuit|Y1[31]~53_combout\);

-- Location: LCCOMB_X56_Y38_N16
\SRLcircuit|Y1[31]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[31]~54_combout\ = (\SRLcircuit|Y1[31]~53_combout\) # ((\A[63]~input_o\ & \SRLcircuit|Y1[16]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[31]~53_combout\,
	datac => \A[63]~input_o\,
	datad => \SRLcircuit|Y1[16]~42_combout\,
	combout => \SRLcircuit|Y1[31]~54_combout\);

-- Location: LCCOMB_X57_Y41_N24
\SRLcircuit|Y2[2]~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~170_combout\ = (\B[3]~input_o\ & (((\SRLcircuit|Y1[31]~54_combout\)))) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[23]~92_combout\) # ((\SRLcircuit|Y2[2]~218_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[23]~92_combout\,
	datac => \SRLcircuit|Y2[2]~218_combout\,
	datad => \SRLcircuit|Y1[31]~54_combout\,
	combout => \SRLcircuit|Y2[2]~170_combout\);

-- Location: LCCOMB_X57_Y41_N2
\SRLcircuit|Y2[19]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[19]~171_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~170_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~146_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~170_combout\,
	combout => \SRLcircuit|Y2[19]~171_combout\);

-- Location: LCCOMB_X60_Y41_N12
\Y~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~170_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[18]~166_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[16]~154_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[16]~154_combout\,
	datab => \SRLcircuit|Y2[18]~166_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~170_combout\);

-- Location: LCCOMB_X60_Y41_N22
\Y~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~171_combout\ = (\B[0]~input_o\ & ((\Y~170_combout\ & ((\SRLcircuit|Y2[17]~160_combout\))) # (!\Y~170_combout\ & (\SRLcircuit|Y2[19]~171_combout\)))) # (!\B[0]~input_o\ & (((\Y~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[19]~171_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[17]~160_combout\,
	datad => \Y~170_combout\,
	combout => \Y~171_combout\);

-- Location: IOIBUF_X83_Y73_N22
\C[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(16),
	o => \C[16]~input_o\);

-- Location: LCCOMB_X60_Y41_N24
\Y~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~172_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & (\Y~171_combout\)) # (!\Y~52_combout\ & ((\C[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~171_combout\,
	datab => \Y~77_combout\,
	datac => \C[16]~input_o\,
	datad => \Y~52_combout\,
	combout => \Y~172_combout\);

-- Location: LCCOMB_X53_Y41_N10
\SRAcircuit|Y2[19]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[19]~92_combout\ = (\B[3]~input_o\ & (((\SRAcircuit|Y1[27]~100_combout\)))) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[19]~79_combout\) # ((\SRAcircuit|Y1[19]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[19]~79_combout\,
	datab => \SRAcircuit|Y1[27]~100_combout\,
	datac => \SRAcircuit|Y1[19]~80_combout\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[19]~92_combout\);

-- Location: LCCOMB_X56_Y40_N16
\SRAcircuit|Y1[31]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[31]~107_combout\ = (!\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Equal2~0_combout\ & (\A[47]~input_o\)) # (!\SRAcircuit|Equal2~0_combout\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal2~0_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[47]~input_o\,
	datad => \A[63]~input_o\,
	combout => \SRAcircuit|Y1[31]~107_combout\);

-- Location: LCCOMB_X56_Y40_N26
\SRAcircuit|Y1[31]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[31]~108_combout\ = (\SRAcircuit|Y1[31]~107_combout\) # ((\SRLcircuit|Y2[2]~48_combout\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A[31]~input_o\,
	datad => \SRAcircuit|Y1[31]~107_combout\,
	combout => \SRAcircuit|Y1[31]~108_combout\);

-- Location: LCCOMB_X56_Y40_N4
\SRAcircuit|Y1[31]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y1[31]~109_combout\ = (\A_s~0_combout\ & (\B[4]~input_o\ & (\A[15]~input_o\))) # (!\A_s~0_combout\ & (((\SRAcircuit|Y1[31]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[15]~input_o\,
	datad => \SRAcircuit|Y1[31]~108_combout\,
	combout => \SRAcircuit|Y1[31]~109_combout\);

-- Location: LCCOMB_X53_Y41_N12
\SRAcircuit|Y2[19]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[19]~143_combout\ = (\B[2]~input_o\ & (((\B[3]~input_o\ & \SRAcircuit|Y1[31]~109_combout\)))) # (!\B[2]~input_o\ & (\SRAcircuit|Y2[19]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[19]~92_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[31]~109_combout\,
	combout => \SRAcircuit|Y2[19]~143_combout\);

-- Location: LCCOMB_X53_Y41_N22
\SRAcircuit|Y2[19]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[19]~144_combout\ = (\SRAcircuit|Y2[19]~143_combout\) # ((!\B[3]~input_o\ & (\SRAcircuit|Y1[23]~91_combout\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[19]~143_combout\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[23]~91_combout\,
	datad => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[19]~144_combout\);

-- Location: LCCOMB_X62_Y41_N2
\Y~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~168_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y2[19]~144_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[16]~82_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[16]~82_combout\,
	datab => \SRAcircuit|Y2[19]~144_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~168_combout\);

-- Location: LCCOMB_X62_Y41_N12
\Y~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~169_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~168_combout\ & (\SRAcircuit|Y2[17]~86_combout\)) # (!\Y~168_combout\ & ((\SRAcircuit|Y2[18]~90_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\Y~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[17]~86_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[18]~90_combout\,
	datad => \Y~168_combout\,
	combout => \Y~169_combout\);

-- Location: LCCOMB_X62_Y41_N24
\Y~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~173_combout\ = (\Y~77_combout\ & ((\Y~172_combout\ & (\seA_Y3[16]~85_combout\)) # (!\Y~172_combout\ & ((\Y~169_combout\))))) # (!\Y~77_combout\ & (((\Y~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \seA_Y3[16]~85_combout\,
	datac => \Y~172_combout\,
	datad => \Y~169_combout\,
	combout => \Y~173_combout\);

-- Location: LCCOMB_X62_Y45_N14
\Y~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~380_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Y~173_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y~167_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Y~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y~167_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~173_combout\,
	combout => \Y~380_combout\);

-- Location: LCCOMB_X62_Y40_N26
\SRLcircuit|Y2[52]~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[52]~221_combout\ = (\A_Y1[56]~21_combout\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A_Y1[56]~21_combout\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[52]~221_combout\);

-- Location: LCCOMB_X62_Y40_N0
\SRLcircuit|Y2[52]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[52]~177_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRLcircuit|Y2[52]~221_combout\) # ((\SRLcircuit|Y2[54]~151_combout\ & \SRLcircuit|Y2[2]~156_combout\)))) # (!\SRAcircuit|Equal4~0_combout\ & (\SRLcircuit|Y2[54]~151_combout\ & 
-- ((\SRLcircuit|Y2[2]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \SRLcircuit|Y2[54]~151_combout\,
	datac => \SRLcircuit|Y2[52]~221_combout\,
	datad => \SRLcircuit|Y2[2]~156_combout\,
	combout => \SRLcircuit|Y2[52]~177_combout\);

-- Location: LCCOMB_X63_Y41_N8
\seA_Y3[17]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[17]~88_combout\ = (\B[0]~input_o\ & (!\B[1]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[51]~173_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[49]~163_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[51]~173_combout\,
	datad => \SRLcircuit|Y2[49]~163_combout\,
	combout => \seA_Y3[17]~88_combout\);

-- Location: LCCOMB_X63_Y41_N26
\seA_Y3[17]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[17]~89_combout\ = (\B[0]~input_o\ & ((\seA_Y3[17]~88_combout\ & ((\SRLcircuit|Y2[50]~169_combout\))) # (!\seA_Y3[17]~88_combout\ & (\SRLcircuit|Y2[52]~177_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[17]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[52]~177_combout\,
	datac => \seA_Y3[17]~88_combout\,
	datad => \SRLcircuit|Y2[50]~169_combout\,
	combout => \seA_Y3[17]~89_combout\);

-- Location: LCCOMB_X62_Y40_N22
\SRAcircuit|Y2[52]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[52]~99_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[52]~221_combout\) # ((\SRAcircuit|Y1[47]~117_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[52]~221_combout\,
	datab => \SRAcircuit|Y1[47]~117_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~156_combout\,
	combout => \SRAcircuit|Y2[52]~99_combout\);

-- Location: LCCOMB_X65_Y41_N2
\SRAcircuit|Y2[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[52]~100_combout\ = (\SRAcircuit|Y2[51]~145_combout\ & (\A_Y1[63]~14_combout\)) # (!\SRAcircuit|Y2[51]~145_combout\ & ((\SRAcircuit|Y2[52]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \SRAcircuit|Y2[52]~99_combout\,
	datad => \SRAcircuit|Y2[51]~145_combout\,
	combout => \SRAcircuit|Y2[52]~100_combout\);

-- Location: LCCOMB_X63_Y41_N20
\seA_Y3[17]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[17]~86_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[52]~100_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[49]~87_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRAcircuit|Y2[49]~87_combout\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[52]~100_combout\,
	combout => \seA_Y3[17]~86_combout\);

-- Location: LCCOMB_X63_Y41_N22
\seA_Y3[17]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[17]~87_combout\ = (\seA_Y3[17]~86_combout\ & ((\SRAcircuit|Y2[50]~91_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[17]~86_combout\ & (((\seA_Y3[20]~0_combout\ & \SRAcircuit|Y2[51]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[50]~91_combout\,
	datab => \seA_Y3[17]~86_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[51]~95_combout\,
	combout => \seA_Y3[17]~87_combout\);

-- Location: LCCOMB_X62_Y41_N6
\seA_Y3[17]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[17]~90_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[17]~87_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[17]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \seA_Y3[17]~89_combout\,
	datad => \seA_Y3[17]~87_combout\,
	combout => \seA_Y3[17]~90_combout\);

-- Location: IOIBUF_X115_Y29_N8
\C[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(17),
	o => \C[17]~input_o\);

-- Location: LCCOMB_X55_Y42_N20
\SRLcircuit|Y3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~19_combout\ = (\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y3~19_combout\);

-- Location: LCCOMB_X55_Y44_N6
\SRLcircuit|Y2[2]~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~220_combout\ = (!\B[3]~input_o\ & ((\SRAcircuit|Y1[24]~93_combout\) # ((\B[4]~input_o\ & \SRLcircuit|Y1[2]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[24]~93_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~46_combout\,
	combout => \SRLcircuit|Y2[2]~220_combout\);

-- Location: LCCOMB_X56_Y41_N10
\SRLcircuit|Y2[2]~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~175_combout\ = (\SRLcircuit|Y2[2]~220_combout\) # ((\SRLcircuit|Y1[32]~33_combout\ & \SRLcircuit|Y3~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[32]~33_combout\,
	datac => \SRLcircuit|Y3~19_combout\,
	datad => \SRLcircuit|Y2[2]~220_combout\,
	combout => \SRLcircuit|Y2[2]~175_combout\);

-- Location: LCCOMB_X56_Y41_N20
\SRLcircuit|Y2[20]~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[20]~176_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~175_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~175_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~153_combout\,
	combout => \SRLcircuit|Y2[20]~176_combout\);

-- Location: LCCOMB_X60_Y41_N2
\Y~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~177_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[19]~171_combout\ & ((!\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y2[17]~160_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[19]~171_combout\,
	datab => \SRLcircuit|Y2[17]~160_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~177_combout\);

-- Location: LCCOMB_X60_Y41_N28
\Y~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~178_combout\ = (\B[0]~input_o\ & ((\Y~177_combout\ & ((\SRLcircuit|Y2[18]~166_combout\))) # (!\Y~177_combout\ & (\SRLcircuit|Y2[20]~176_combout\)))) # (!\B[0]~input_o\ & (((\Y~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[20]~176_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[18]~166_combout\,
	datad => \Y~177_combout\,
	combout => \Y~178_combout\);

-- Location: LCCOMB_X59_Y43_N0
\SRAcircuit|Y2[20]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[20]~96_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[28]~102_combout\)) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[20]~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[28]~102_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRAcircuit|Y1[20]~82_combout\,
	combout => \SRAcircuit|Y2[20]~96_combout\);

-- Location: LCCOMB_X59_Y43_N18
\SRAcircuit|Y2[20]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[20]~97_combout\ = (\SRAcircuit|Y1[32]~46_combout\ & ((\SRAcircuit|Y2[51]~27_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \SRAcircuit|Y1[24]~94_combout\)))) # (!\SRAcircuit|Y1[32]~46_combout\ & (\SRAcircuit|Equal4~0_combout\ & 
-- ((\SRAcircuit|Y1[24]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[32]~46_combout\,
	datab => \SRAcircuit|Equal4~0_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[24]~94_combout\,
	combout => \SRAcircuit|Y2[20]~97_combout\);

-- Location: LCCOMB_X59_Y43_N28
\SRAcircuit|Y2[20]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[20]~98_combout\ = (\SRAcircuit|Y2[20]~96_combout\) # (\SRAcircuit|Y2[20]~97_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAcircuit|Y2[20]~96_combout\,
	datad => \SRAcircuit|Y2[20]~97_combout\,
	combout => \SRAcircuit|Y2[20]~98_combout\);

-- Location: LCCOMB_X58_Y43_N18
\Y~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~175_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y2[20]~98_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[17]~86_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[17]~86_combout\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[20]~98_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~175_combout\);

-- Location: LCCOMB_X62_Y41_N10
\Y~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~176_combout\ = (\Y~175_combout\ & (((\SRAcircuit|Y2[18]~90_combout\)) # (!\seA_Y3[20]~0_combout\))) # (!\Y~175_combout\ & (\seA_Y3[20]~0_combout\ & ((\SRAcircuit|Y2[19]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~175_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[18]~90_combout\,
	datad => \SRAcircuit|Y2[19]~144_combout\,
	combout => \Y~176_combout\);

-- Location: LCCOMB_X62_Y41_N28
\Y~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~179_combout\ = (\Y~77_combout\ & (((\Y~176_combout\) # (!\Y~52_combout\)))) # (!\Y~77_combout\ & (\Y~178_combout\ & (\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~178_combout\,
	datac => \Y~52_combout\,
	datad => \Y~176_combout\,
	combout => \Y~179_combout\);

-- Location: LCCOMB_X62_Y41_N0
\Y~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~180_combout\ = (\Y~52_combout\ & (((\Y~179_combout\)))) # (!\Y~52_combout\ & ((\Y~179_combout\ & (\seA_Y3[17]~90_combout\)) # (!\Y~179_combout\ & ((\C[17]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[17]~90_combout\,
	datab => \C[17]~input_o\,
	datac => \Y~52_combout\,
	datad => \Y~179_combout\,
	combout => \Y~180_combout\);

-- Location: LCCOMB_X57_Y42_N28
\SLLcircuit|Y2[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~34_combout\ = (\B[4]~input_o\ & (\A[1]~input_o\)) # (!\B[4]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \SLLcircuit|Y2[5]~34_combout\);

-- Location: LCCOMB_X57_Y42_N22
\SLLcircuit|Y2[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~35_combout\ = (\A[9]~input_o\ & ((\SLLcircuit|Y2[7]~127_combout\) # ((\SLLcircuit|Y2[4]~31_combout\ & \SLLcircuit|Y2[5]~34_combout\)))) # (!\A[9]~input_o\ & (\SLLcircuit|Y2[4]~31_combout\ & ((\SLLcircuit|Y2[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \SLLcircuit|Y2[4]~31_combout\,
	datac => \SLLcircuit|Y2[7]~127_combout\,
	datad => \SLLcircuit|Y2[5]~34_combout\,
	combout => \SLLcircuit|Y2[5]~35_combout\);

-- Location: LCCOMB_X60_Y43_N8
\SLLcircuit|Y2[17]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[17]~36_combout\ = (\B[2]~input_o\ & (\SRAcircuit|Y1[25]~73_combout\ & (\SLLcircuit|Y2[5]~24_combout\))) # (!\B[2]~input_o\ & (((\SLLcircuit|Y2[5]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[25]~73_combout\,
	datab => \SLLcircuit|Y2[5]~24_combout\,
	datac => \SLLcircuit|Y2[5]~35_combout\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y2[17]~36_combout\);

-- Location: LCCOMB_X61_Y43_N0
\SLLcircuit|Y[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~18_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y1[25]~73_combout\ & \SLLcircuit|Y2[15]~29_combout\)))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[17]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[17]~36_combout\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y2[15]~29_combout\,
	combout => \SLLcircuit|Y[1]~18_combout\);

-- Location: LCCOMB_X61_Y43_N18
\Y~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~174_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~17_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~18_combout\,
	datab => \Y~82_combout\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~17_combout\,
	combout => \Y~174_combout\);

-- Location: LCCOMB_X62_Y41_N20
\Y~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~381_combout\ = (\Y~174_combout\) # ((\Y~180_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y~180_combout\,
	datac => \Y~174_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~381_combout\);

-- Location: LCCOMB_X56_Y39_N26
\SLLcircuit|Y2[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~37_combout\ = (\B[4]~input_o\ & (\A[2]~input_o\)) # (!\B[4]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[18]~input_o\,
	combout => \SLLcircuit|Y2[6]~37_combout\);

-- Location: LCCOMB_X61_Y42_N24
\SLLcircuit|Y2[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~38_combout\ = (\SLLcircuit|Y2[6]~37_combout\ & ((\SLLcircuit|Y2[4]~31_combout\) # ((\SLLcircuit|Y2[7]~127_combout\ & \A[10]~input_o\)))) # (!\SLLcircuit|Y2[6]~37_combout\ & (\SLLcircuit|Y2[7]~127_combout\ & (\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~37_combout\,
	datab => \SLLcircuit|Y2[7]~127_combout\,
	datac => \A[10]~input_o\,
	datad => \SLLcircuit|Y2[4]~31_combout\,
	combout => \SLLcircuit|Y2[6]~38_combout\);

-- Location: LCCOMB_X61_Y42_N26
\SLLcircuit|Y2[18]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[18]~39_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~26_combout\ & (\SRAcircuit|Y1[25]~73_combout\))) # (!\B[2]~input_o\ & (((\SLLcircuit|Y2[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[6]~26_combout\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y2[6]~38_combout\,
	combout => \SLLcircuit|Y2[18]~39_combout\);

-- Location: LCCOMB_X61_Y43_N12
\Y~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~181_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[16]~33_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[18]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[18]~39_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[16]~33_combout\,
	combout => \Y~181_combout\);

-- Location: LCCOMB_X61_Y43_N14
\Y~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~182_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~18_combout\))) # (!\B[0]~input_o\ & (\Y~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~181_combout\,
	datab => \Y~82_combout\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~18_combout\,
	combout => \Y~182_combout\);

-- Location: LCCOMB_X55_Y40_N22
\SRAcircuit|Y2[21]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[21]~146_combout\ = (!\B[3]~input_o\ & (\SRAcircuit|Y1[25]~96_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[25]~96_combout\,
	datac => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[21]~146_combout\);

-- Location: LCCOMB_X55_Y40_N16
\SRAcircuit|Y2[21]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[21]~101_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[29]~104_combout\)) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[21]~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[29]~104_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[21]~85_combout\,
	combout => \SRAcircuit|Y2[21]~101_combout\);

-- Location: LCCOMB_X55_Y40_N18
\SRAcircuit|Y2[21]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[21]~102_combout\ = (\SRAcircuit|Y2[21]~146_combout\) # ((\SRAcircuit|Y2[21]~101_combout\) # ((\SRAcircuit|Y2[51]~27_combout\ & \SRAcircuit|Y1[33]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[33]~119_combout\,
	datac => \SRAcircuit|Y2[21]~146_combout\,
	datad => \SRAcircuit|Y2[21]~101_combout\,
	combout => \SRAcircuit|Y2[21]~102_combout\);

-- Location: LCCOMB_X62_Y41_N26
\Y~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~183_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y2[21]~102_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[18]~90_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[18]~90_combout\,
	datab => \SRAcircuit|Y2[21]~102_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~183_combout\);

-- Location: LCCOMB_X62_Y41_N4
\Y~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~184_combout\ = (\Y~183_combout\ & (((\SRAcircuit|Y2[19]~144_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\Y~183_combout\ & (\SRAcircuit|Y2[20]~98_combout\ & (\seA_Y3[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~183_combout\,
	datab => \SRAcircuit|Y2[20]~98_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[19]~144_combout\,
	combout => \Y~184_combout\);

-- Location: IOIBUF_X60_Y73_N22
\C[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(18),
	o => \C[18]~input_o\);

-- Location: LCCOMB_X56_Y38_N18
\SRLcircuit|Y2[2]~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~174_combout\ = (!\B[3]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SRLcircuit|Y2[2]~174_combout\);

-- Location: LCCOMB_X59_Y41_N0
\SRLcircuit|Y2[2]~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~178_combout\ = (\SRLcircuit|Y3~19_combout\ & ((\SRLcircuit|Y2[2]~67_combout\) # ((\SRLcircuit|Y1[2]~47_combout\ & \SRLcircuit|Y2[2]~174_combout\)))) # (!\SRLcircuit|Y3~19_combout\ & (\SRLcircuit|Y1[2]~47_combout\ & 
-- (\SRLcircuit|Y2[2]~174_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~19_combout\,
	datab => \SRLcircuit|Y1[2]~47_combout\,
	datac => \SRLcircuit|Y2[2]~174_combout\,
	datad => \SRLcircuit|Y2[2]~67_combout\,
	combout => \SRLcircuit|Y2[2]~178_combout\);

-- Location: LCCOMB_X55_Y39_N12
\SRLcircuit|Y2[2]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~179_combout\ = (\SRLcircuit|Y2[2]~178_combout\) # ((!\B[3]~input_o\ & \SRAcircuit|Y1[25]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[25]~95_combout\,
	datad => \SRLcircuit|Y2[2]~178_combout\,
	combout => \SRLcircuit|Y2[2]~179_combout\);

-- Location: LCCOMB_X54_Y39_N16
\SRLcircuit|Y2[21]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[21]~180_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~179_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~159_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~159_combout\,
	datab => \SRLcircuit|Y2[2]~179_combout\,
	datac => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[21]~180_combout\);

-- Location: LCCOMB_X60_Y41_N6
\Y~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~185_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[20]~176_combout\ & ((!\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y2[18]~166_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[20]~176_combout\,
	datab => \SRLcircuit|Y2[18]~166_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~185_combout\);

-- Location: LCCOMB_X60_Y41_N16
\Y~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~186_combout\ = (\B[0]~input_o\ & ((\Y~185_combout\ & (\SRLcircuit|Y2[19]~171_combout\)) # (!\Y~185_combout\ & ((\SRLcircuit|Y2[21]~180_combout\))))) # (!\B[0]~input_o\ & (((\Y~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[19]~171_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[21]~180_combout\,
	datad => \Y~185_combout\,
	combout => \Y~186_combout\);

-- Location: LCCOMB_X60_Y41_N26
\Y~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~187_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~186_combout\))) # (!\Y~52_combout\ & (\C[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[18]~input_o\,
	datab => \Y~77_combout\,
	datac => \Y~186_combout\,
	datad => \Y~52_combout\,
	combout => \Y~187_combout\);

-- Location: LCCOMB_X62_Y40_N28
\SRLcircuit|Y2[53]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[53]~222_combout\ = (\A_Y1[57]~29_combout\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A_Y1[57]~29_combout\,
	datac => \B[4]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[53]~222_combout\);

-- Location: LCCOMB_X62_Y40_N4
\SRLcircuit|Y2[53]~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[53]~181_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRLcircuit|Y2[53]~222_combout\) # ((\SRLcircuit|Y2[2]~162_combout\ & \SRLcircuit|Y2[54]~151_combout\)))) # (!\SRAcircuit|Equal4~0_combout\ & (((\SRLcircuit|Y2[2]~162_combout\ & 
-- \SRLcircuit|Y2[54]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \SRLcircuit|Y2[53]~222_combout\,
	datac => \SRLcircuit|Y2[2]~162_combout\,
	datad => \SRLcircuit|Y2[54]~151_combout\,
	combout => \SRLcircuit|Y2[53]~181_combout\);

-- Location: LCCOMB_X63_Y41_N28
\seA_Y3[18]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[18]~93_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[52]~177_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[50]~169_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[52]~177_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[50]~169_combout\,
	combout => \seA_Y3[18]~93_combout\);

-- Location: LCCOMB_X63_Y41_N30
\seA_Y3[18]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[18]~94_combout\ = (\B[0]~input_o\ & ((\seA_Y3[18]~93_combout\ & ((\SRLcircuit|Y2[51]~173_combout\))) # (!\seA_Y3[18]~93_combout\ & (\SRLcircuit|Y2[53]~181_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[18]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[53]~181_combout\,
	datab => \SRLcircuit|Y2[51]~173_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[18]~93_combout\,
	combout => \seA_Y3[18]~94_combout\);

-- Location: LCCOMB_X62_Y40_N10
\SRAcircuit|Y2[53]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[53]~103_combout\ = (\B[2]~input_o\ & (((\SRAcircuit|Y1[47]~117_combout\) # (\SRLcircuit|Y2[53]~222_combout\)))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~162_combout\,
	datab => \SRAcircuit|Y1[47]~117_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[53]~222_combout\,
	combout => \SRAcircuit|Y2[53]~103_combout\);

-- Location: LCCOMB_X65_Y41_N12
\SRAcircuit|Y2[53]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[53]~104_combout\ = (\SRAcircuit|Y2[51]~145_combout\ & (\A_Y1[63]~14_combout\)) # (!\SRAcircuit|Y2[51]~145_combout\ & ((\SRAcircuit|Y2[53]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datac => \SRAcircuit|Y2[53]~103_combout\,
	datad => \SRAcircuit|Y2[51]~145_combout\,
	combout => \SRAcircuit|Y2[53]~104_combout\);

-- Location: LCCOMB_X65_Y41_N6
\seA_Y3[18]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[18]~91_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[53]~104_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[50]~91_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[50]~91_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[53]~104_combout\,
	combout => \seA_Y3[18]~91_combout\);

-- Location: LCCOMB_X65_Y41_N8
\seA_Y3[18]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[18]~92_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[18]~91_combout\ & ((\SRAcircuit|Y2[51]~95_combout\))) # (!\seA_Y3[18]~91_combout\ & (\SRAcircuit|Y2[52]~100_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[18]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[52]~100_combout\,
	datac => \seA_Y3[18]~91_combout\,
	datad => \SRAcircuit|Y2[51]~95_combout\,
	combout => \seA_Y3[18]~92_combout\);

-- Location: LCCOMB_X66_Y41_N16
\seA_Y3[18]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[18]~95_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[18]~92_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[18]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[18]~94_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[18]~92_combout\,
	combout => \seA_Y3[18]~95_combout\);

-- Location: LCCOMB_X62_Y41_N22
\Y~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~188_combout\ = (\Y~77_combout\ & ((\Y~187_combout\ & ((\seA_Y3[18]~95_combout\))) # (!\Y~187_combout\ & (\Y~184_combout\)))) # (!\Y~77_combout\ & (((\Y~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~184_combout\,
	datac => \Y~187_combout\,
	datad => \seA_Y3[18]~95_combout\,
	combout => \Y~188_combout\);

-- Location: LCCOMB_X62_Y41_N30
\Y~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~382_combout\ = (\Y~182_combout\) # ((\Y~188_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y~182_combout\,
	datac => \Y~188_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y~382_combout\);

-- Location: LCCOMB_X62_Y40_N30
\SRLcircuit|Y2[54]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[54]~223_combout\ = (\A_Y1[58]~25_combout\ & (!\B[4]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[58]~25_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[54]~223_combout\);

-- Location: LCCOMB_X62_Y40_N14
\SRAcircuit|Y2[54]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[54]~107_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[54]~223_combout\) # ((\SRAcircuit|Y1[47]~117_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[54]~223_combout\,
	datab => \SRAcircuit|Y1[47]~117_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~168_combout\,
	combout => \SRAcircuit|Y2[54]~107_combout\);

-- Location: LCCOMB_X65_Y41_N10
\SRAcircuit|Y2[54]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[54]~108_combout\ = (\SRAcircuit|Y2[51]~145_combout\ & (\A_Y1[63]~14_combout\)) # (!\SRAcircuit|Y2[51]~145_combout\ & ((\SRAcircuit|Y2[54]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \SRAcircuit|Y2[51]~145_combout\,
	datad => \SRAcircuit|Y2[54]~107_combout\,
	combout => \SRAcircuit|Y2[54]~108_combout\);

-- Location: LCCOMB_X65_Y41_N4
\seA_Y3[19]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[19]~96_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[54]~108_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[51]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[54]~108_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[51]~95_combout\,
	combout => \seA_Y3[19]~96_combout\);

-- Location: LCCOMB_X65_Y41_N14
\seA_Y3[19]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[19]~97_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[19]~96_combout\ & (\SRAcircuit|Y2[52]~100_combout\)) # (!\seA_Y3[19]~96_combout\ & ((\SRAcircuit|Y2[53]~104_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[19]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[52]~100_combout\,
	datac => \seA_Y3[19]~96_combout\,
	datad => \SRAcircuit|Y2[53]~104_combout\,
	combout => \seA_Y3[19]~97_combout\);

-- Location: LCCOMB_X62_Y40_N16
\SRLcircuit|Y2[54]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[54]~185_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\SRLcircuit|Y2[54]~223_combout\) # ((\SRLcircuit|Y2[54]~151_combout\ & \SRLcircuit|Y2[2]~168_combout\)))) # (!\SRAcircuit|Equal4~0_combout\ & (\SRLcircuit|Y2[54]~151_combout\ & 
-- ((\SRLcircuit|Y2[2]~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \SRLcircuit|Y2[54]~151_combout\,
	datac => \SRLcircuit|Y2[54]~223_combout\,
	datad => \SRLcircuit|Y2[2]~168_combout\,
	combout => \SRLcircuit|Y2[54]~185_combout\);

-- Location: LCCOMB_X66_Y42_N16
\seA_Y3[19]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[19]~98_combout\ = (\B[1]~input_o\ & (((!\B[0]~input_o\ & \SRLcircuit|Y2[53]~181_combout\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[51]~173_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[51]~173_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[53]~181_combout\,
	combout => \seA_Y3[19]~98_combout\);

-- Location: LCCOMB_X66_Y42_N26
\seA_Y3[19]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[19]~99_combout\ = (\B[0]~input_o\ & ((\seA_Y3[19]~98_combout\ & ((\SRLcircuit|Y2[52]~177_combout\))) # (!\seA_Y3[19]~98_combout\ & (\SRLcircuit|Y2[54]~185_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[19]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[54]~185_combout\,
	datab => \SRLcircuit|Y2[52]~177_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[19]~98_combout\,
	combout => \seA_Y3[19]~99_combout\);

-- Location: LCCOMB_X66_Y41_N6
\seA_Y3[19]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[19]~100_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[19]~97_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[19]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[19]~97_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[19]~99_combout\,
	combout => \seA_Y3[19]~100_combout\);

-- Location: LCCOMB_X55_Y39_N6
\SRLcircuit|Y2[2]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~182_combout\ = (\SRLcircuit|Y2[2]~174_combout\ & ((\SRLcircuit|Y1[2]~48_combout\) # ((\SRLcircuit|Y2[2]~62_combout\ & \SRLcircuit|Y3~19_combout\)))) # (!\SRLcircuit|Y2[2]~174_combout\ & (\SRLcircuit|Y2[2]~62_combout\ & 
-- (\SRLcircuit|Y3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~174_combout\,
	datab => \SRLcircuit|Y2[2]~62_combout\,
	datac => \SRLcircuit|Y3~19_combout\,
	datad => \SRLcircuit|Y1[2]~48_combout\,
	combout => \SRLcircuit|Y2[2]~182_combout\);

-- Location: LCCOMB_X55_Y39_N0
\SRLcircuit|Y2[2]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~183_combout\ = (\SRLcircuit|Y2[2]~182_combout\) # ((!\B[3]~input_o\ & \SRAcircuit|Y1[26]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~182_combout\,
	datab => \B[3]~input_o\,
	datad => \SRAcircuit|Y1[26]~97_combout\,
	combout => \SRLcircuit|Y2[2]~183_combout\);

-- Location: LCCOMB_X54_Y41_N18
\SRLcircuit|Y2[22]~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[22]~184_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~183_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~165_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~183_combout\,
	combout => \SRLcircuit|Y2[22]~184_combout\);

-- Location: LCCOMB_X60_Y41_N20
\Y~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~193_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[21]~180_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[19]~171_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[19]~171_combout\,
	datab => \SRLcircuit|Y2[21]~180_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~193_combout\);

-- Location: LCCOMB_X60_Y41_N14
\Y~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~194_combout\ = (\B[0]~input_o\ & ((\Y~193_combout\ & (\SRLcircuit|Y2[20]~176_combout\)) # (!\Y~193_combout\ & ((\SRLcircuit|Y2[22]~184_combout\))))) # (!\B[0]~input_o\ & (((\Y~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[20]~176_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[22]~184_combout\,
	datad => \Y~193_combout\,
	combout => \Y~194_combout\);

-- Location: LCCOMB_X54_Y37_N26
\SRAcircuit|Y2[22]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[22]~105_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SRAcircuit|Y1[30]~106_combout\)) # (!\B[3]~input_o\ & ((\SRAcircuit|Y1[22]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[30]~106_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[22]~88_combout\,
	combout => \SRAcircuit|Y2[22]~105_combout\);

-- Location: LCCOMB_X54_Y37_N10
\SRAcircuit|Y2[22]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[22]~147_combout\ = (!\B[3]~input_o\ & (\B[2]~input_o\ & \SRAcircuit|Y1[26]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[26]~98_combout\,
	combout => \SRAcircuit|Y2[22]~147_combout\);

-- Location: LCCOMB_X54_Y37_N20
\SRAcircuit|Y2[22]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[22]~106_combout\ = (\SRAcircuit|Y2[22]~105_combout\) # ((\SRAcircuit|Y2[22]~147_combout\) # ((\SRAcircuit|Y1[34]~111_combout\ & \SRAcircuit|Y2[51]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[22]~105_combout\,
	datab => \SRAcircuit|Y1[34]~111_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y2[22]~147_combout\,
	combout => \SRAcircuit|Y2[22]~106_combout\);

-- Location: LCCOMB_X62_Y41_N8
\Y~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~191_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[22]~106_combout\ & ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y2[19]~144_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[22]~106_combout\,
	datab => \SRAcircuit|Y2[19]~144_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~191_combout\);

-- Location: LCCOMB_X62_Y41_N18
\Y~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~192_combout\ = (\Y~191_combout\ & (((\SRAcircuit|Y2[20]~98_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\Y~191_combout\ & (\SRAcircuit|Y2[21]~102_combout\ & (\seA_Y3[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~191_combout\,
	datab => \SRAcircuit|Y2[21]~102_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[20]~98_combout\,
	combout => \Y~192_combout\);

-- Location: LCCOMB_X66_Y41_N20
\Y~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~195_combout\ = (\Y~52_combout\ & ((\Y~77_combout\ & ((\Y~192_combout\))) # (!\Y~77_combout\ & (\Y~194_combout\)))) # (!\Y~52_combout\ & (\Y~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~52_combout\,
	datab => \Y~77_combout\,
	datac => \Y~194_combout\,
	datad => \Y~192_combout\,
	combout => \Y~195_combout\);

-- Location: IOIBUF_X115_Y33_N8
\C[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(19),
	o => \C[19]~input_o\);

-- Location: LCCOMB_X66_Y41_N0
\Y~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~196_combout\ = (\Y~195_combout\ & ((\seA_Y3[19]~100_combout\) # ((\Y~52_combout\)))) # (!\Y~195_combout\ & (((!\Y~52_combout\ & \C[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[19]~100_combout\,
	datab => \Y~195_combout\,
	datac => \Y~52_combout\,
	datad => \C[19]~input_o\,
	combout => \Y~196_combout\);

-- Location: LCCOMB_X54_Y43_N0
\SLLcircuit|Y2[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~40_combout\ = (\B[4]~input_o\ & ((\A[3]~input_o\))) # (!\B[4]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \SLLcircuit|Y2[7]~40_combout\);

-- Location: LCCOMB_X62_Y42_N16
\SLLcircuit|Y2[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~41_combout\ = (\SLLcircuit|Y2[4]~31_combout\ & ((\SLLcircuit|Y2[7]~40_combout\) # ((\A[11]~input_o\ & \SLLcircuit|Y2[7]~127_combout\)))) # (!\SLLcircuit|Y2[4]~31_combout\ & (((\A[11]~input_o\ & \SLLcircuit|Y2[7]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~31_combout\,
	datab => \SLLcircuit|Y2[7]~40_combout\,
	datac => \A[11]~input_o\,
	datad => \SLLcircuit|Y2[7]~127_combout\,
	combout => \SLLcircuit|Y2[7]~41_combout\);

-- Location: LCCOMB_X62_Y42_N26
\SLLcircuit|Y2[19]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[19]~42_combout\ = (\B[2]~input_o\ & (((\SRAcircuit|Y1[25]~73_combout\ & \SLLcircuit|Y2[7]~28_combout\)))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[7]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[7]~41_combout\,
	datac => \SRAcircuit|Y1[25]~73_combout\,
	datad => \SLLcircuit|Y2[7]~28_combout\,
	combout => \SLLcircuit|Y2[19]~42_combout\);

-- Location: LCCOMB_X65_Y40_N2
\Y~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~189_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[17]~36_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[19]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[17]~36_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[19]~42_combout\,
	combout => \Y~189_combout\);

-- Location: LCCOMB_X66_Y41_N18
\Y~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~190_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\Y~181_combout\)) # (!\B[0]~input_o\ & ((\Y~189_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~181_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~82_combout\,
	datad => \Y~189_combout\,
	combout => \Y~190_combout\);

-- Location: LCCOMB_X66_Y41_N14
\Y~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~383_combout\ = (\Y~190_combout\) # ((\Y~196_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~196_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~190_combout\,
	combout => \Y~383_combout\);

-- Location: LCCOMB_X57_Y41_N12
\SRLcircuit|Y2[2]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~186_combout\ = (\SRLcircuit|Y2[2]~174_combout\ & ((\SRLcircuit|Y1[2]~49_combout\) # ((\SRLcircuit|Y2[2]~53_combout\ & \SRLcircuit|Y3~19_combout\)))) # (!\SRLcircuit|Y2[2]~174_combout\ & (\SRLcircuit|Y2[2]~53_combout\ & 
-- (\SRLcircuit|Y3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~174_combout\,
	datab => \SRLcircuit|Y2[2]~53_combout\,
	datac => \SRLcircuit|Y3~19_combout\,
	datad => \SRLcircuit|Y1[2]~49_combout\,
	combout => \SRLcircuit|Y2[2]~186_combout\);

-- Location: LCCOMB_X57_Y41_N6
\SRLcircuit|Y2[2]~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~187_combout\ = (\SRLcircuit|Y2[2]~186_combout\) # ((!\B[3]~input_o\ & \SRAcircuit|Y1[27]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[27]~99_combout\,
	datad => \SRLcircuit|Y2[2]~186_combout\,
	combout => \SRLcircuit|Y2[2]~187_combout\);

-- Location: LCCOMB_X57_Y41_N16
\SRLcircuit|Y2[23]~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[23]~188_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~187_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~170_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~187_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~170_combout\,
	combout => \SRLcircuit|Y2[23]~188_combout\);

-- Location: LCCOMB_X60_Y41_N0
\Y~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~200_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[22]~184_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[20]~176_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[20]~176_combout\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y2[22]~184_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~200_combout\);

-- Location: LCCOMB_X60_Y41_N10
\Y~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~201_combout\ = (\B[0]~input_o\ & ((\Y~200_combout\ & ((\SRLcircuit|Y2[21]~180_combout\))) # (!\Y~200_combout\ & (\SRLcircuit|Y2[23]~188_combout\)))) # (!\B[0]~input_o\ & (((\Y~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[23]~188_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[21]~180_combout\,
	datad => \Y~200_combout\,
	combout => \Y~201_combout\);

-- Location: IOIBUF_X115_Y28_N1
\C[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(20),
	o => \C[20]~input_o\);

-- Location: LCCOMB_X63_Y39_N8
\Y~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~202_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & (\Y~201_combout\)) # (!\Y~52_combout\ & ((\C[20]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~201_combout\,
	datac => \Y~52_combout\,
	datad => \C[20]~input_o\,
	combout => \Y~202_combout\);

-- Location: LCCOMB_X61_Y40_N8
\SRLcircuit|Y2[55]~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[55]~189_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\A_Y1[63]~14_combout\))) # (!\B[3]~input_o\ & (\A_Y1[55]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_Y1[55]~15_combout\,
	datac => \B[2]~input_o\,
	datad => \A_Y1[63]~14_combout\,
	combout => \SRLcircuit|Y2[55]~189_combout\);

-- Location: LCCOMB_X61_Y40_N26
\SRLcircuit|Y2[55]~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[55]~190_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRLcircuit|Y2[55]~189_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \A_Y1[59]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal4~0_combout\,
	datab => \A_Y1[59]~17_combout\,
	datac => \SRLcircuit|Y2[55]~189_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[55]~190_combout\);

-- Location: LCCOMB_X66_Y42_N12
\seA_Y3[20]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[20]~103_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[54]~185_combout\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRLcircuit|Y2[52]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[54]~185_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[52]~177_combout\,
	combout => \seA_Y3[20]~103_combout\);

-- Location: LCCOMB_X66_Y42_N30
\seA_Y3[20]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[20]~104_combout\ = (\B[0]~input_o\ & ((\seA_Y3[20]~103_combout\ & ((\SRLcircuit|Y2[53]~181_combout\))) # (!\seA_Y3[20]~103_combout\ & (\SRLcircuit|Y2[55]~190_combout\)))) # (!\B[0]~input_o\ & (((\seA_Y3[20]~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[55]~190_combout\,
	datab => \B[0]~input_o\,
	datac => \seA_Y3[20]~103_combout\,
	datad => \SRLcircuit|Y2[53]~181_combout\,
	combout => \seA_Y3[20]~104_combout\);

-- Location: LCCOMB_X61_Y40_N10
\SRAcircuit|Y2[55]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[55]~148_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\A_Y1[59]~17_combout\)) # (!\B[2]~input_o\ & ((\A_Y1[55]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_Y1[59]~17_combout\,
	datac => \B[2]~input_o\,
	datad => \A_Y1[55]~15_combout\,
	combout => \SRAcircuit|Y2[55]~148_combout\);

-- Location: LCCOMB_X61_Y40_N30
\SRAcircuit|Y2[55]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[55]~112_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[55]~148_combout\) # ((\B[3]~input_o\ & \A_Y1[63]~14_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_Y1[63]~14_combout\,
	datad => \SRAcircuit|Y2[55]~148_combout\,
	combout => \SRAcircuit|Y2[55]~112_combout\);

-- Location: LCCOMB_X65_Y41_N0
\seA_Y3[20]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[20]~101_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[55]~112_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[52]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[55]~112_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[52]~100_combout\,
	combout => \seA_Y3[20]~101_combout\);

-- Location: LCCOMB_X65_Y41_N18
\seA_Y3[20]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[20]~102_combout\ = (\seA_Y3[20]~101_combout\ & (((\SRAcircuit|Y2[53]~104_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\seA_Y3[20]~101_combout\ & (\SRAcircuit|Y2[54]~108_combout\ & (\seA_Y3[20]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[54]~108_combout\,
	datab => \seA_Y3[20]~101_combout\,
	datac => \seA_Y3[20]~0_combout\,
	datad => \SRAcircuit|Y2[53]~104_combout\,
	combout => \seA_Y3[20]~102_combout\);

-- Location: LCCOMB_X66_Y41_N2
\seA_Y3[20]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[20]~105_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[20]~102_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[20]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[20]~104_combout\,
	datad => \seA_Y3[20]~102_combout\,
	combout => \seA_Y3[20]~105_combout\);

-- Location: LCCOMB_X54_Y40_N6
\SRAcircuit|Y2[23]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[23]~110_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRAcircuit|Y1[27]~100_combout\)) # (!\B[2]~input_o\ & ((\SRAcircuit|Y1[23]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[27]~100_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[23]~91_combout\,
	combout => \SRAcircuit|Y2[23]~110_combout\);

-- Location: LCCOMB_X54_Y40_N20
\SRAcircuit|Y2[23]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[23]~109_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\A_s~0_combout\ & (\SRAcircuit|Y1[35]~57_combout\)) # (!\A_s~0_combout\ & ((\SRAcircuit|Y1[35]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[35]~57_combout\,
	datab => \SRAcircuit|Y1[35]~59_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \A_s~0_combout\,
	combout => \SRAcircuit|Y2[23]~109_combout\);

-- Location: LCCOMB_X54_Y40_N0
\SRAcircuit|Y2[23]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[23]~111_combout\ = (\SRAcircuit|Y2[23]~110_combout\) # ((\SRAcircuit|Y2[23]~109_combout\) # ((\SRAcircuit|Y1[31]~109_combout\ & \SRAcircuit|Y2[34]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[23]~110_combout\,
	datab => \SRAcircuit|Y2[23]~109_combout\,
	datac => \SRAcircuit|Y1[31]~109_combout\,
	datad => \SRAcircuit|Y2[34]~25_combout\,
	combout => \SRAcircuit|Y2[23]~111_combout\);

-- Location: LCCOMB_X58_Y43_N28
\Y~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~198_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[23]~111_combout\)) # (!\B[1]~input_o\))) # (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\SRAcircuit|Y2[20]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[23]~111_combout\,
	datad => \SRAcircuit|Y2[20]~98_combout\,
	combout => \Y~198_combout\);

-- Location: LCCOMB_X59_Y39_N24
\Y~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~199_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~198_combout\ & ((\SRAcircuit|Y2[21]~102_combout\))) # (!\Y~198_combout\ & (\SRAcircuit|Y2[22]~106_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[22]~106_combout\,
	datac => \SRAcircuit|Y2[21]~102_combout\,
	datad => \Y~198_combout\,
	combout => \Y~199_combout\);

-- Location: LCCOMB_X59_Y39_N26
\Y~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~203_combout\ = (\Y~202_combout\ & (((\seA_Y3[20]~105_combout\)) # (!\Y~77_combout\))) # (!\Y~202_combout\ & (\Y~77_combout\ & ((\Y~199_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~202_combout\,
	datab => \Y~77_combout\,
	datac => \seA_Y3[20]~105_combout\,
	datad => \Y~199_combout\,
	combout => \Y~203_combout\);

-- Location: LCCOMB_X54_Y42_N22
\SLLcircuit|Y2[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~43_combout\ = (\B[4]~input_o\ & (\A[4]~input_o\)) # (!\B[4]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLLcircuit|Y2[4]~43_combout\);

-- Location: LCCOMB_X61_Y42_N4
\SLLcircuit|Y2[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~44_combout\ = (\SLLcircuit|Y2[4]~43_combout\ & ((\SLLcircuit|Y2[4]~31_combout\) # ((\SLLcircuit|Y2[7]~127_combout\ & \A[12]~input_o\)))) # (!\SLLcircuit|Y2[4]~43_combout\ & (\SLLcircuit|Y2[7]~127_combout\ & (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~43_combout\,
	datab => \SLLcircuit|Y2[7]~127_combout\,
	datac => \A[12]~input_o\,
	datad => \SLLcircuit|Y2[4]~31_combout\,
	combout => \SLLcircuit|Y2[4]~44_combout\);

-- Location: LCCOMB_X61_Y42_N30
\SLLcircuit|Y[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~19_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~32_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[4]~32_combout\,
	datac => \SLLcircuit|Y2[4]~44_combout\,
	combout => \SLLcircuit|Y[1]~19_combout\);

-- Location: LCCOMB_X62_Y39_N10
\SLLcircuit|Y[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~20_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[18]~39_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~19_combout\,
	datad => \SLLcircuit|Y2[18]~39_combout\,
	combout => \SLLcircuit|Y[1]~20_combout\);

-- Location: LCCOMB_X62_Y39_N4
\Y~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~197_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\Y~189_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~20_combout\,
	datab => \Y~82_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~189_combout\,
	combout => \Y~197_combout\);

-- Location: LCCOMB_X62_Y39_N28
\Y~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~384_combout\ = (\Y~197_combout\) # ((\Y~203_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y~203_combout\,
	datad => \Y~197_combout\,
	combout => \Y~384_combout\);

-- Location: LCCOMB_X55_Y43_N2
\SLLcircuit|Y2[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~45_combout\ = (\B[4]~input_o\ & ((\A[5]~input_o\))) # (!\B[4]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[21]~input_o\,
	datac => \A[5]~input_o\,
	combout => \SLLcircuit|Y2[5]~45_combout\);

-- Location: LCCOMB_X61_Y42_N16
\SLLcircuit|Y2[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~46_combout\ = (\A[13]~input_o\ & ((\SLLcircuit|Y2[7]~127_combout\) # ((\SLLcircuit|Y2[4]~31_combout\ & \SLLcircuit|Y2[5]~45_combout\)))) # (!\A[13]~input_o\ & (\SLLcircuit|Y2[4]~31_combout\ & ((\SLLcircuit|Y2[5]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \SLLcircuit|Y2[4]~31_combout\,
	datac => \SLLcircuit|Y2[7]~127_combout\,
	datad => \SLLcircuit|Y2[5]~45_combout\,
	combout => \SLLcircuit|Y2[5]~46_combout\);

-- Location: LCCOMB_X65_Y40_N28
\SLLcircuit|Y[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~21_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[5]~35_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~35_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[5]~46_combout\,
	combout => \SLLcircuit|Y[1]~21_combout\);

-- Location: LCCOMB_X65_Y40_N30
\SLLcircuit|Y[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~22_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[19]~42_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[19]~42_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~21_combout\,
	combout => \SLLcircuit|Y[1]~22_combout\);

-- Location: LCCOMB_X62_Y39_N6
\Y~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~204_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~20_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~22_combout\,
	datad => \SLLcircuit|Y[1]~20_combout\,
	combout => \Y~204_combout\);

-- Location: LCCOMB_X56_Y41_N22
\SRLcircuit|Y2[2]~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~191_combout\ = (\SRLcircuit|Y3~19_combout\ & ((\SRLcircuit|Y2[2]~56_combout\) # ((\SRLcircuit|Y1[2]~50_combout\ & \SRLcircuit|Y2[2]~174_combout\)))) # (!\SRLcircuit|Y3~19_combout\ & (((\SRLcircuit|Y1[2]~50_combout\ & 
-- \SRLcircuit|Y2[2]~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~19_combout\,
	datab => \SRLcircuit|Y2[2]~56_combout\,
	datac => \SRLcircuit|Y1[2]~50_combout\,
	datad => \SRLcircuit|Y2[2]~174_combout\,
	combout => \SRLcircuit|Y2[2]~191_combout\);

-- Location: LCCOMB_X56_Y41_N0
\SRLcircuit|Y2[2]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~192_combout\ = (\SRLcircuit|Y2[2]~191_combout\) # ((\SRAcircuit|Y1[28]~101_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~191_combout\,
	datab => \SRAcircuit|Y1[28]~101_combout\,
	datac => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[2]~192_combout\);

-- Location: LCCOMB_X56_Y41_N26
\SRLcircuit|Y2[24]~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[24]~193_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~192_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~192_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~175_combout\,
	combout => \SRLcircuit|Y2[24]~193_combout\);

-- Location: LCCOMB_X60_Y41_N4
\Y~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~207_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[23]~188_combout\ & ((!\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y2[21]~180_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[23]~188_combout\,
	datab => \SRLcircuit|Y2[21]~180_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~207_combout\);

-- Location: LCCOMB_X60_Y41_N30
\Y~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~208_combout\ = (\Y~207_combout\ & ((\SRLcircuit|Y2[22]~184_combout\) # ((!\B[0]~input_o\)))) # (!\Y~207_combout\ & (((\SRLcircuit|Y2[24]~193_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[22]~184_combout\,
	datab => \SRLcircuit|Y2[24]~193_combout\,
	datac => \Y~207_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~208_combout\);

-- Location: LCCOMB_X59_Y43_N6
\SRAcircuit|Y2[24]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[24]~113_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRAcircuit|Y1[28]~102_combout\)) # (!\B[2]~input_o\ & ((\SRAcircuit|Y1[24]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[28]~102_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRAcircuit|Y1[24]~94_combout\,
	combout => \SRAcircuit|Y2[24]~113_combout\);

-- Location: LCCOMB_X59_Y43_N16
\SRAcircuit|Y2[24]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[24]~114_combout\ = (\SRAcircuit|Y2[34]~25_combout\ & ((\SRAcircuit|Y1[32]~46_combout\) # ((\SRAcircuit|Y2[51]~27_combout\ & \SRAcircuit|Y1[36]~50_combout\)))) # (!\SRAcircuit|Y2[34]~25_combout\ & (\SRAcircuit|Y2[51]~27_combout\ & 
-- ((\SRAcircuit|Y1[36]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~25_combout\,
	datab => \SRAcircuit|Y2[51]~27_combout\,
	datac => \SRAcircuit|Y1[32]~46_combout\,
	datad => \SRAcircuit|Y1[36]~50_combout\,
	combout => \SRAcircuit|Y2[24]~114_combout\);

-- Location: LCCOMB_X59_Y39_N12
\SRAcircuit|Y2[24]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[24]~115_combout\ = (\SRAcircuit|Y2[24]~113_combout\) # (\SRAcircuit|Y2[24]~114_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[24]~113_combout\,
	datad => \SRAcircuit|Y2[24]~114_combout\,
	combout => \SRAcircuit|Y2[24]~115_combout\);

-- Location: LCCOMB_X59_Y39_N6
\Y~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~205_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & \SRAcircuit|Y2[24]~115_combout\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[21]~102_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[21]~102_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[24]~115_combout\,
	combout => \Y~205_combout\);

-- Location: LCCOMB_X59_Y39_N8
\Y~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~206_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~205_combout\ & ((\SRAcircuit|Y2[22]~106_combout\))) # (!\Y~205_combout\ & (\SRAcircuit|Y2[23]~111_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~205_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[23]~111_combout\,
	datac => \SRAcircuit|Y2[22]~106_combout\,
	datad => \Y~205_combout\,
	combout => \Y~206_combout\);

-- Location: LCCOMB_X66_Y43_N22
\Y~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~209_combout\ = (\Y~77_combout\ & (((\Y~206_combout\) # (!\Y~52_combout\)))) # (!\Y~77_combout\ & (\Y~208_combout\ & (\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~208_combout\,
	datac => \Y~52_combout\,
	datad => \Y~206_combout\,
	combout => \Y~209_combout\);

-- Location: LCCOMB_X59_Y42_N6
\SRAcircuit|Y2[56]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[56]~149_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A_Y1[60]~19_combout\))) # (!\B[2]~input_o\ & (\A_Y1[56]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[56]~21_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[60]~19_combout\,
	combout => \SRAcircuit|Y2[56]~149_combout\);

-- Location: LCCOMB_X59_Y42_N22
\SRAcircuit|Y2[56]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[56]~116_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[56]~149_combout\) # ((\B[3]~input_o\ & \A_Y1[63]~14_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_Y1[63]~14_combout\,
	datad => \SRAcircuit|Y2[56]~149_combout\,
	combout => \SRAcircuit|Y2[56]~116_combout\);

-- Location: LCCOMB_X65_Y41_N20
\seA_Y3[21]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[21]~106_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[56]~116_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[53]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[56]~116_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[53]~104_combout\,
	combout => \seA_Y3[21]~106_combout\);

-- Location: LCCOMB_X65_Y41_N30
\seA_Y3[21]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[21]~107_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[21]~106_combout\ & ((\SRAcircuit|Y2[54]~108_combout\))) # (!\seA_Y3[21]~106_combout\ & (\SRAcircuit|Y2[55]~112_combout\)))) # (!\seA_Y3[20]~0_combout\ & (\seA_Y3[21]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \seA_Y3[21]~106_combout\,
	datac => \SRAcircuit|Y2[55]~112_combout\,
	datad => \SRAcircuit|Y2[54]~108_combout\,
	combout => \seA_Y3[21]~107_combout\);

-- Location: LCCOMB_X55_Y42_N6
\SRLcircuit|Y2[56]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[56]~194_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & ((\ExtWord~input_o\) # (!\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \SRLcircuit|Y2[56]~194_combout\);

-- Location: LCCOMB_X59_Y42_N8
\SRLcircuit|Y2[56]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[56]~195_combout\ = (\SRLcircuit|Y2[56]~194_combout\ & ((\B[2]~input_o\ & ((\A_Y1[60]~19_combout\))) # (!\B[2]~input_o\ & (\A_Y1[56]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[56]~21_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[56]~194_combout\,
	datad => \A_Y1[60]~19_combout\,
	combout => \SRLcircuit|Y2[56]~195_combout\);

-- Location: LCCOMB_X66_Y42_N24
\seA_Y3[21]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[21]~108_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[55]~190_combout\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRLcircuit|Y2[53]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[55]~190_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[53]~181_combout\,
	combout => \seA_Y3[21]~108_combout\);

-- Location: LCCOMB_X66_Y42_N2
\seA_Y3[21]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[21]~109_combout\ = (\B[0]~input_o\ & ((\seA_Y3[21]~108_combout\ & (\SRLcircuit|Y2[54]~185_combout\)) # (!\seA_Y3[21]~108_combout\ & ((\SRLcircuit|Y2[56]~195_combout\))))) # (!\B[0]~input_o\ & (((\seA_Y3[21]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[54]~185_combout\,
	datab => \SRLcircuit|Y2[56]~195_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[21]~108_combout\,
	combout => \seA_Y3[21]~109_combout\);

-- Location: LCCOMB_X66_Y43_N8
\seA_Y3[21]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[21]~110_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[21]~107_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[21]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[21]~107_combout\,
	datad => \seA_Y3[21]~109_combout\,
	combout => \seA_Y3[21]~110_combout\);

-- Location: IOIBUF_X115_Y50_N8
\C[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(21),
	o => \C[21]~input_o\);

-- Location: LCCOMB_X66_Y43_N26
\Y~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~210_combout\ = (\Y~209_combout\ & ((\Y~52_combout\) # ((\seA_Y3[21]~110_combout\)))) # (!\Y~209_combout\ & (!\Y~52_combout\ & ((\C[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~209_combout\,
	datab => \Y~52_combout\,
	datac => \seA_Y3[21]~110_combout\,
	datad => \C[21]~input_o\,
	combout => \Y~210_combout\);

-- Location: LCCOMB_X62_Y39_N14
\Y~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~385_combout\ = (\Y~204_combout\) # ((\Y~210_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~204_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~210_combout\,
	combout => \Y~385_combout\);

-- Location: LCCOMB_X55_Y41_N2
\SLLcircuit|Y2[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~47_combout\ = (\B[4]~input_o\ & (\A[6]~input_o\)) # (!\B[4]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[22]~input_o\,
	combout => \SLLcircuit|Y2[6]~47_combout\);

-- Location: LCCOMB_X61_Y42_N10
\SLLcircuit|Y2[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~48_combout\ = (\A[14]~input_o\ & ((\SLLcircuit|Y2[7]~127_combout\) # ((\SLLcircuit|Y2[6]~47_combout\ & \SLLcircuit|Y2[4]~31_combout\)))) # (!\A[14]~input_o\ & (\SLLcircuit|Y2[6]~47_combout\ & ((\SLLcircuit|Y2[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \SLLcircuit|Y2[6]~47_combout\,
	datac => \SLLcircuit|Y2[7]~127_combout\,
	datad => \SLLcircuit|Y2[4]~31_combout\,
	combout => \SLLcircuit|Y2[6]~48_combout\);

-- Location: LCCOMB_X61_Y42_N20
\SLLcircuit|Y[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~23_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~38_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[6]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[6]~38_combout\,
	datad => \SLLcircuit|Y2[6]~48_combout\,
	combout => \SLLcircuit|Y[1]~23_combout\);

-- Location: LCCOMB_X62_Y39_N24
\SLLcircuit|Y[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~24_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~19_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~23_combout\,
	datad => \SLLcircuit|Y[1]~19_combout\,
	combout => \SLLcircuit|Y[1]~24_combout\);

-- Location: LCCOMB_X62_Y39_N26
\Y~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~211_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~22_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~22_combout\,
	datad => \SLLcircuit|Y[1]~24_combout\,
	combout => \Y~211_combout\);

-- Location: IOIBUF_X81_Y73_N15
\C[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(22),
	o => \C[22]~input_o\);

-- Location: LCCOMB_X55_Y39_N26
\SRLcircuit|Y2[2]~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~196_combout\ = (\SRLcircuit|Y2[2]~174_combout\ & ((\SRLcircuit|Y1[2]~51_combout\) # ((\SRLcircuit|Y2[2]~65_combout\ & \SRLcircuit|Y3~19_combout\)))) # (!\SRLcircuit|Y2[2]~174_combout\ & (\SRLcircuit|Y2[2]~65_combout\ & 
-- (\SRLcircuit|Y3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~174_combout\,
	datab => \SRLcircuit|Y2[2]~65_combout\,
	datac => \SRLcircuit|Y3~19_combout\,
	datad => \SRLcircuit|Y1[2]~51_combout\,
	combout => \SRLcircuit|Y2[2]~196_combout\);

-- Location: LCCOMB_X55_Y39_N28
\SRLcircuit|Y2[2]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~197_combout\ = (\SRLcircuit|Y2[2]~196_combout\) # ((!\B[3]~input_o\ & \SRAcircuit|Y1[29]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~196_combout\,
	datad => \SRAcircuit|Y1[29]~103_combout\,
	combout => \SRLcircuit|Y2[2]~197_combout\);

-- Location: LCCOMB_X55_Y39_N22
\SRLcircuit|Y2[25]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[25]~198_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[2]~197_combout\)) # (!\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y2[2]~197_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~179_combout\,
	combout => \SRLcircuit|Y2[25]~198_combout\);

-- Location: LCCOMB_X63_Y39_N10
\Y~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~214_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\SRLcircuit|Y2[24]~193_combout\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRLcircuit|Y2[22]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[22]~184_combout\,
	datad => \SRLcircuit|Y2[24]~193_combout\,
	combout => \Y~214_combout\);

-- Location: LCCOMB_X63_Y39_N20
\Y~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~215_combout\ = (\B[0]~input_o\ & ((\Y~214_combout\ & ((\SRLcircuit|Y2[23]~188_combout\))) # (!\Y~214_combout\ & (\SRLcircuit|Y2[25]~198_combout\)))) # (!\B[0]~input_o\ & (((\Y~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[25]~198_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[23]~188_combout\,
	datad => \Y~214_combout\,
	combout => \Y~215_combout\);

-- Location: LCCOMB_X63_Y39_N22
\Y~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~216_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~215_combout\))) # (!\Y~52_combout\ & (\C[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \C[22]~input_o\,
	datac => \Y~52_combout\,
	datad => \Y~215_combout\,
	combout => \Y~216_combout\);

-- Location: LCCOMB_X55_Y40_N12
\SRAcircuit|Y2[25]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[25]~118_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRAcircuit|Y1[29]~104_combout\)) # (!\B[2]~input_o\ & ((\SRAcircuit|Y1[25]~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[29]~104_combout\,
	datac => \SRAcircuit|Y1[25]~96_combout\,
	datad => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[25]~118_combout\);

-- Location: LCCOMB_X56_Y36_N26
\SRAcircuit|Y2[25]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[25]~117_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\A_s~0_combout\ & ((\SRAcircuit|Y1[37]~68_combout\))) # (!\A_s~0_combout\ & (\SRAcircuit|Y1[37]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[37]~70_combout\,
	datab => \A_s~0_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[37]~68_combout\,
	combout => \SRAcircuit|Y2[25]~117_combout\);

-- Location: LCCOMB_X55_Y40_N30
\SRAcircuit|Y2[25]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[25]~119_combout\ = (\SRAcircuit|Y2[25]~118_combout\) # ((\SRAcircuit|Y2[25]~117_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[33]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[25]~118_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y1[33]~119_combout\,
	datad => \SRAcircuit|Y2[25]~117_combout\,
	combout => \SRAcircuit|Y2[25]~119_combout\);

-- Location: LCCOMB_X59_Y39_N10
\Y~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~212_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[25]~119_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[22]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[25]~119_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[22]~106_combout\,
	combout => \Y~212_combout\);

-- Location: LCCOMB_X59_Y39_N28
\Y~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~213_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~212_combout\ & (\SRAcircuit|Y2[23]~111_combout\)) # (!\Y~212_combout\ & ((\SRAcircuit|Y2[24]~115_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\Y~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[23]~111_combout\,
	datac => \Y~212_combout\,
	datad => \SRAcircuit|Y2[24]~115_combout\,
	combout => \Y~213_combout\);

-- Location: LCCOMB_X59_Y41_N4
\SRAcircuit|Y2[57]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[57]~150_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A_Y1[61]~27_combout\))) # (!\B[2]~input_o\ & (\A_Y1[57]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[57]~29_combout\,
	datab => \A_Y1[61]~27_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[57]~150_combout\);

-- Location: LCCOMB_X61_Y41_N24
\SRAcircuit|Y2[57]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[57]~120_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[57]~150_combout\) # ((\B[3]~input_o\ & \A_Y1[63]~14_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[57]~150_combout\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \B[3]~input_o\,
	datad => \A_Y1[63]~14_combout\,
	combout => \SRAcircuit|Y2[57]~120_combout\);

-- Location: LCCOMB_X65_Y41_N16
\seA_Y3[22]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[22]~111_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[57]~120_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[54]~108_combout\ & (!\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[54]~108_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[57]~120_combout\,
	combout => \seA_Y3[22]~111_combout\);

-- Location: LCCOMB_X65_Y41_N26
\seA_Y3[22]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[22]~112_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[22]~111_combout\ & (\SRAcircuit|Y2[55]~112_combout\)) # (!\seA_Y3[22]~111_combout\ & ((\SRAcircuit|Y2[56]~116_combout\))))) # (!\seA_Y3[20]~0_combout\ & (\seA_Y3[22]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \seA_Y3[22]~111_combout\,
	datac => \SRAcircuit|Y2[55]~112_combout\,
	datad => \SRAcircuit|Y2[56]~116_combout\,
	combout => \seA_Y3[22]~112_combout\);

-- Location: LCCOMB_X59_Y41_N2
\SRLcircuit|Y2[57]~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[57]~199_combout\ = (\SRLcircuit|Y2[56]~194_combout\ & ((\B[2]~input_o\ & ((\A_Y1[61]~27_combout\))) # (!\B[2]~input_o\ & (\A_Y1[57]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[57]~29_combout\,
	datab => \A_Y1[61]~27_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[56]~194_combout\,
	combout => \SRLcircuit|Y2[57]~199_combout\);

-- Location: LCCOMB_X66_Y42_N20
\seA_Y3[22]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[22]~113_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[56]~195_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[54]~185_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[56]~195_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y2[54]~185_combout\,
	combout => \seA_Y3[22]~113_combout\);

-- Location: LCCOMB_X66_Y42_N14
\seA_Y3[22]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[22]~114_combout\ = (\seA_Y3[22]~113_combout\ & (((\SRLcircuit|Y2[55]~190_combout\) # (!\B[0]~input_o\)))) # (!\seA_Y3[22]~113_combout\ & (\SRLcircuit|Y2[57]~199_combout\ & (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[57]~199_combout\,
	datab => \seA_Y3[22]~113_combout\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[55]~190_combout\,
	combout => \seA_Y3[22]~114_combout\);

-- Location: LCCOMB_X66_Y39_N8
\seA_Y3[22]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[22]~115_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[22]~112_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[22]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[22]~112_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[22]~114_combout\,
	combout => \seA_Y3[22]~115_combout\);

-- Location: LCCOMB_X62_Y39_N20
\Y~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~217_combout\ = (\Y~77_combout\ & ((\Y~216_combout\ & ((\seA_Y3[22]~115_combout\))) # (!\Y~216_combout\ & (\Y~213_combout\)))) # (!\Y~77_combout\ & (\Y~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~216_combout\,
	datac => \Y~213_combout\,
	datad => \seA_Y3[22]~115_combout\,
	combout => \Y~217_combout\);

-- Location: LCCOMB_X62_Y39_N0
\Y~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~386_combout\ = (\Y~211_combout\) # ((\Y~217_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~211_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~217_combout\,
	combout => \Y~386_combout\);

-- Location: LCCOMB_X56_Y36_N28
\SLLcircuit|Y2[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~49_combout\ = (\B[4]~input_o\ & (\A[7]~input_o\)) # (!\B[4]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[23]~input_o\,
	combout => \SLLcircuit|Y2[7]~49_combout\);

-- Location: LCCOMB_X62_Y42_N28
\SLLcircuit|Y2[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~50_combout\ = (\A[15]~input_o\ & ((\SLLcircuit|Y2[7]~127_combout\) # ((\SLLcircuit|Y2[4]~31_combout\ & \SLLcircuit|Y2[7]~49_combout\)))) # (!\A[15]~input_o\ & (\SLLcircuit|Y2[4]~31_combout\ & (\SLLcircuit|Y2[7]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \SLLcircuit|Y2[4]~31_combout\,
	datac => \SLLcircuit|Y2[7]~49_combout\,
	datad => \SLLcircuit|Y2[7]~127_combout\,
	combout => \SLLcircuit|Y2[7]~50_combout\);

-- Location: LCCOMB_X62_Y42_N6
\SLLcircuit|Y[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~25_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[7]~41_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[7]~41_combout\,
	datad => \SLLcircuit|Y2[7]~50_combout\,
	combout => \SLLcircuit|Y[1]~25_combout\);

-- Location: LCCOMB_X65_Y40_N16
\SLLcircuit|Y[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~26_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~21_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y[1]~25_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~21_combout\,
	combout => \SLLcircuit|Y[1]~26_combout\);

-- Location: LCCOMB_X62_Y39_N22
\Y~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~218_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~24_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~26_combout\,
	datab => \Y~82_combout\,
	datac => \B[0]~input_o\,
	datad => \SLLcircuit|Y[1]~24_combout\,
	combout => \Y~218_combout\);

-- Location: LCCOMB_X61_Y40_N12
\SRAcircuit|Y2[58]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[58]~151_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\A_Y1[62]~23_combout\)) # (!\B[2]~input_o\ & ((\A_Y1[58]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A_Y1[62]~23_combout\,
	datac => \A_Y1[58]~25_combout\,
	datad => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[58]~151_combout\);

-- Location: LCCOMB_X61_Y40_N20
\SRAcircuit|Y2[58]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[58]~124_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[58]~151_combout\) # ((\B[3]~input_o\ & \A_Y1[63]~14_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRLcircuit|Y2[2]~48_combout\,
	datac => \A_Y1[63]~14_combout\,
	datad => \SRAcircuit|Y2[58]~151_combout\,
	combout => \SRAcircuit|Y2[58]~124_combout\);

-- Location: LCCOMB_X65_Y41_N28
\seA_Y3[23]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[23]~116_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[58]~124_combout\ & ((\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y2[55]~112_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[58]~124_combout\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y2[55]~112_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[23]~116_combout\);

-- Location: LCCOMB_X65_Y41_N22
\seA_Y3[23]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[23]~117_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[23]~116_combout\ & ((\SRAcircuit|Y2[56]~116_combout\))) # (!\seA_Y3[23]~116_combout\ & (\SRAcircuit|Y2[57]~120_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[23]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[57]~120_combout\,
	datac => \seA_Y3[23]~116_combout\,
	datad => \SRAcircuit|Y2[56]~116_combout\,
	combout => \seA_Y3[23]~117_combout\);

-- Location: LCCOMB_X59_Y42_N18
\SRLcircuit|Y2[58]~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[58]~203_combout\ = (\SRLcircuit|Y2[56]~194_combout\ & ((\B[2]~input_o\ & ((\A_Y1[62]~23_combout\))) # (!\B[2]~input_o\ & (\A_Y1[58]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[58]~25_combout\,
	datab => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[56]~194_combout\,
	datad => \A_Y1[62]~23_combout\,
	combout => \SRLcircuit|Y2[58]~203_combout\);

-- Location: LCCOMB_X66_Y42_N8
\seA_Y3[23]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[23]~118_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[57]~199_combout\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRLcircuit|Y2[55]~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[57]~199_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[55]~190_combout\,
	combout => \seA_Y3[23]~118_combout\);

-- Location: LCCOMB_X66_Y42_N10
\seA_Y3[23]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[23]~119_combout\ = (\seA_Y3[23]~118_combout\ & (((\SRLcircuit|Y2[56]~195_combout\) # (!\B[0]~input_o\)))) # (!\seA_Y3[23]~118_combout\ & (\SRLcircuit|Y2[58]~203_combout\ & ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[58]~203_combout\,
	datab => \SRLcircuit|Y2[56]~195_combout\,
	datac => \seA_Y3[23]~118_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[23]~119_combout\);

-- Location: LCCOMB_X66_Y43_N6
\seA_Y3[23]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[23]~120_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[23]~117_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[23]~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[23]~117_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \seA_Y3[23]~119_combout\,
	combout => \seA_Y3[23]~120_combout\);

-- Location: LCCOMB_X54_Y37_N30
\SRAcircuit|Y2[26]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[26]~122_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\SRAcircuit|Y1[30]~106_combout\)) # (!\B[2]~input_o\ & ((\SRAcircuit|Y1[26]~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[30]~106_combout\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[26]~98_combout\,
	combout => \SRAcircuit|Y2[26]~122_combout\);

-- Location: LCCOMB_X55_Y41_N4
\SRAcircuit|Y2[26]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[26]~121_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\A_s~0_combout\ & ((\SRAcircuit|Y1[38]~36_combout\))) # (!\A_s~0_combout\ & (\SRAcircuit|Y1[38]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[38]~38_combout\,
	datac => \SRAcircuit|Y1[38]~36_combout\,
	datad => \A_s~0_combout\,
	combout => \SRAcircuit|Y2[26]~121_combout\);

-- Location: LCCOMB_X54_Y37_N0
\SRAcircuit|Y2[26]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[26]~123_combout\ = (\SRAcircuit|Y2[26]~122_combout\) # ((\SRAcircuit|Y2[26]~121_combout\) # ((\SRAcircuit|Y1[34]~111_combout\ & \SRAcircuit|Y2[34]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[26]~122_combout\,
	datab => \SRAcircuit|Y1[34]~111_combout\,
	datac => \SRAcircuit|Y2[34]~25_combout\,
	datad => \SRAcircuit|Y2[26]~121_combout\,
	combout => \SRAcircuit|Y2[26]~123_combout\);

-- Location: LCCOMB_X59_Y39_N22
\Y~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~219_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[26]~123_combout\ & (\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRAcircuit|Y2[23]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[26]~123_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[23]~111_combout\,
	combout => \Y~219_combout\);

-- Location: LCCOMB_X59_Y39_N16
\Y~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~220_combout\ = (\Y~219_combout\ & ((\SRAcircuit|Y2[24]~115_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\Y~219_combout\ & (((\SRAcircuit|Y2[25]~119_combout\ & \seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[24]~115_combout\,
	datab => \SRAcircuit|Y2[25]~119_combout\,
	datac => \Y~219_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~220_combout\);

-- Location: LCCOMB_X55_Y39_N16
\SRLcircuit|Y2[2]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~200_combout\ = (\SRLcircuit|Y2[2]~174_combout\ & ((\SRLcircuit|Y1[2]~52_combout\) # ((\SRLcircuit|Y2[2]~60_combout\ & \SRLcircuit|Y3~19_combout\)))) # (!\SRLcircuit|Y2[2]~174_combout\ & (((\SRLcircuit|Y2[2]~60_combout\ & 
-- \SRLcircuit|Y3~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~174_combout\,
	datab => \SRLcircuit|Y1[2]~52_combout\,
	datac => \SRLcircuit|Y2[2]~60_combout\,
	datad => \SRLcircuit|Y3~19_combout\,
	combout => \SRLcircuit|Y2[2]~200_combout\);

-- Location: LCCOMB_X55_Y39_N10
\SRLcircuit|Y2[2]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~201_combout\ = (\SRLcircuit|Y2[2]~200_combout\) # ((!\B[3]~input_o\ & \SRAcircuit|Y1[30]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y1[30]~105_combout\,
	datad => \SRLcircuit|Y2[2]~200_combout\,
	combout => \SRLcircuit|Y2[2]~201_combout\);

-- Location: LCCOMB_X53_Y40_N30
\SRLcircuit|Y2[26]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[26]~202_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~201_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SRLcircuit|Y2[2]~183_combout\,
	datad => \SRLcircuit|Y2[2]~201_combout\,
	combout => \SRLcircuit|Y2[26]~202_combout\);

-- Location: LCCOMB_X63_Y39_N24
\Y~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~221_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[25]~198_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[23]~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[25]~198_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[23]~188_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~221_combout\);

-- Location: LCCOMB_X63_Y39_N2
\Y~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~222_combout\ = (\B[0]~input_o\ & ((\Y~221_combout\ & (\SRLcircuit|Y2[24]~193_combout\)) # (!\Y~221_combout\ & ((\SRLcircuit|Y2[26]~202_combout\))))) # (!\B[0]~input_o\ & (((\Y~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[24]~193_combout\,
	datac => \SRLcircuit|Y2[26]~202_combout\,
	datad => \Y~221_combout\,
	combout => \Y~222_combout\);

-- Location: LCCOMB_X66_Y43_N28
\Y~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~223_combout\ = (\Y~77_combout\ & ((\Y~220_combout\) # ((!\Y~52_combout\)))) # (!\Y~77_combout\ & (((\Y~52_combout\ & \Y~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \Y~220_combout\,
	datac => \Y~52_combout\,
	datad => \Y~222_combout\,
	combout => \Y~223_combout\);

-- Location: IOIBUF_X115_Y44_N8
\C[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(23),
	o => \C[23]~input_o\);

-- Location: LCCOMB_X66_Y43_N24
\Y~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~224_combout\ = (\Y~223_combout\ & ((\seA_Y3[23]~120_combout\) # ((\Y~52_combout\)))) # (!\Y~223_combout\ & (((!\Y~52_combout\ & \C[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[23]~120_combout\,
	datab => \Y~223_combout\,
	datac => \Y~52_combout\,
	datad => \C[23]~input_o\,
	combout => \Y~224_combout\);

-- Location: LCCOMB_X62_Y39_N2
\Y~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~387_combout\ = (\Y~218_combout\) # ((\Y~224_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~218_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~224_combout\,
	combout => \Y~387_combout\);

-- Location: IOIBUF_X91_Y73_N15
\C[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(24),
	o => \C[24]~input_o\);

-- Location: LCCOMB_X63_Y39_N4
\Y~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~228_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & (\SRLcircuit|Y2[26]~202_combout\))) # (!\B[1]~input_o\ & ((\B[0]~input_o\) # ((\SRLcircuit|Y2[24]~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[26]~202_combout\,
	datad => \SRLcircuit|Y2[24]~193_combout\,
	combout => \Y~228_combout\);

-- Location: LCCOMB_X61_Y40_N22
\SRLcircuit|Y2[2]~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~204_combout\ = (\SRLcircuit|Y3~19_combout\ & ((\B[4]~input_o\ & (\A_Y1[55]~15_combout\)) # (!\B[4]~input_o\ & ((\A_Y1[39]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A_Y1[55]~15_combout\,
	datac => \SRLcircuit|Y3~19_combout\,
	datad => \A_Y1[39]~2_combout\,
	combout => \SRLcircuit|Y2[2]~204_combout\);

-- Location: LCCOMB_X57_Y41_N26
\SRLcircuit|Y2[2]~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[2]~205_combout\ = (\SRLcircuit|Y2[2]~204_combout\) # ((!\B[3]~input_o\ & \SRLcircuit|Y1[31]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~204_combout\,
	datad => \SRLcircuit|Y1[31]~54_combout\,
	combout => \SRLcircuit|Y2[2]~205_combout\);

-- Location: LCCOMB_X57_Y41_N4
\SRLcircuit|Y2[27]~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[27]~206_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y2[2]~205_combout\))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~187_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~187_combout\,
	datac => \SRLcircuit|Y2[2]~205_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[27]~206_combout\);

-- Location: LCCOMB_X63_Y39_N6
\Y~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~229_combout\ = (\B[0]~input_o\ & ((\Y~228_combout\ & (\SRLcircuit|Y2[25]~198_combout\)) # (!\Y~228_combout\ & ((\SRLcircuit|Y2[27]~206_combout\))))) # (!\B[0]~input_o\ & (((\Y~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[25]~198_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~228_combout\,
	datad => \SRLcircuit|Y2[27]~206_combout\,
	combout => \Y~229_combout\);

-- Location: LCCOMB_X63_Y39_N16
\Y~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~230_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~229_combout\))) # (!\Y~52_combout\ & (\C[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \C[24]~input_o\,
	datac => \Y~52_combout\,
	datad => \Y~229_combout\,
	combout => \Y~230_combout\);

-- Location: LCCOMB_X54_Y37_N4
\SRAcircuit|Y2[27]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[27]~152_combout\ = (!\B[3]~input_o\ & (!\B[2]~input_o\ & \SRAcircuit|Y1[27]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SRAcircuit|Y1[27]~100_combout\,
	combout => \SRAcircuit|Y2[27]~152_combout\);

-- Location: LCCOMB_X54_Y40_N18
\SRAcircuit|Y2[27]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[27]~125_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[39]~116_combout\) # ((\SRAcircuit|Y1[35]~115_combout\ & \SRAcircuit|Y2[34]~25_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (\SRAcircuit|Y1[35]~115_combout\ & 
-- ((\SRAcircuit|Y2[34]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[35]~115_combout\,
	datac => \SRAcircuit|Y1[39]~116_combout\,
	datad => \SRAcircuit|Y2[34]~25_combout\,
	combout => \SRAcircuit|Y2[27]~125_combout\);

-- Location: LCCOMB_X54_Y40_N4
\SRAcircuit|Y2[27]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[27]~126_combout\ = (\SRAcircuit|Y2[27]~152_combout\) # ((\SRAcircuit|Y2[27]~125_combout\) # ((\SRAcircuit|Equal4~0_combout\ & \SRAcircuit|Y1[31]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[27]~152_combout\,
	datab => \SRAcircuit|Equal4~0_combout\,
	datac => \SRAcircuit|Y1[31]~109_combout\,
	datad => \SRAcircuit|Y2[27]~125_combout\,
	combout => \SRAcircuit|Y2[27]~126_combout\);

-- Location: LCCOMB_X59_Y39_N2
\Y~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~226_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[27]~126_combout\ & (\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRAcircuit|Y2[24]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[27]~126_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[24]~115_combout\,
	combout => \Y~226_combout\);

-- Location: LCCOMB_X59_Y39_N4
\Y~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~227_combout\ = (\Y~226_combout\ & (((\SRAcircuit|Y2[25]~119_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\Y~226_combout\ & (\SRAcircuit|Y2[26]~123_combout\ & ((\seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[26]~123_combout\,
	datab => \Y~226_combout\,
	datac => \SRAcircuit|Y2[25]~119_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~227_combout\);

-- Location: LCCOMB_X61_Y41_N10
\SRAcircuit|Y2[59]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[59]~127_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[34]~24_combout\ & ((\A_Y1[59]~17_combout\))) # (!\SRAcircuit|Y2[34]~24_combout\ & (\A_Y1[63]~14_combout\)))) # (!\SRLcircuit|Y2[2]~48_combout\ & (\A_Y1[63]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \A_Y1[59]~17_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRAcircuit|Y2[34]~24_combout\,
	combout => \SRAcircuit|Y2[59]~127_combout\);

-- Location: LCCOMB_X61_Y41_N12
\seA_Y3[24]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[24]~121_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\ & \SRAcircuit|Y2[59]~127_combout\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[56]~116_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y2[56]~116_combout\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[59]~127_combout\,
	combout => \seA_Y3[24]~121_combout\);

-- Location: LCCOMB_X61_Y41_N22
\seA_Y3[24]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[24]~122_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[24]~121_combout\ & (\SRAcircuit|Y2[57]~120_combout\)) # (!\seA_Y3[24]~121_combout\ & ((\SRAcircuit|Y2[58]~124_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[24]~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[57]~120_combout\,
	datac => \SRAcircuit|Y2[58]~124_combout\,
	datad => \seA_Y3[24]~121_combout\,
	combout => \seA_Y3[24]~122_combout\);

-- Location: LCCOMB_X59_Y42_N4
\SRLcircuit|Y2[59]~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[59]~207_combout\ = (\SRLcircuit|Y2[56]~194_combout\ & ((\B[2]~input_o\ & (\A_Y1[63]~14_combout\)) # (!\B[2]~input_o\ & ((\A_Y1[59]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[56]~194_combout\,
	datac => \A_Y1[63]~14_combout\,
	datad => \A_Y1[59]~17_combout\,
	combout => \SRLcircuit|Y2[59]~207_combout\);

-- Location: LCCOMB_X66_Y42_N4
\seA_Y3[24]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[24]~123_combout\ = (\B[1]~input_o\ & (\SRLcircuit|Y2[58]~203_combout\ & ((!\B[0]~input_o\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y2[56]~195_combout\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[58]~203_combout\,
	datab => \SRLcircuit|Y2[56]~195_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[24]~123_combout\);

-- Location: LCCOMB_X66_Y42_N6
\seA_Y3[24]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[24]~124_combout\ = (\seA_Y3[24]~123_combout\ & ((\SRLcircuit|Y2[57]~199_combout\) # ((!\B[0]~input_o\)))) # (!\seA_Y3[24]~123_combout\ & (((\SRLcircuit|Y2[59]~207_combout\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[57]~199_combout\,
	datab => \SRLcircuit|Y2[59]~207_combout\,
	datac => \seA_Y3[24]~123_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[24]~124_combout\);

-- Location: LCCOMB_X66_Y39_N26
\seA_Y3[24]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[24]~125_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[24]~122_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[24]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[24]~122_combout\,
	datab => \seA_Y3[24]~124_combout\,
	datac => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[24]~125_combout\);

-- Location: LCCOMB_X59_Y39_N30
\Y~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~231_combout\ = (\Y~230_combout\ & (((\seA_Y3[24]~125_combout\)) # (!\Y~77_combout\))) # (!\Y~230_combout\ & (\Y~77_combout\ & (\Y~227_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~230_combout\,
	datab => \Y~77_combout\,
	datac => \Y~227_combout\,
	datad => \seA_Y3[24]~125_combout\,
	combout => \Y~231_combout\);

-- Location: LCCOMB_X56_Y38_N12
\SLLcircuit|Y1[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[16]~0_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\))) # (!\ExtWord~input_o\ & (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \SLLcircuit|Y1[16]~0_combout\);

-- Location: LCCOMB_X63_Y38_N8
\SLLcircuit|Y2[4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~51_combout\ = (\B[4]~input_o\ & (\A[8]~input_o\)) # (!\B[4]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLLcircuit|Y2[4]~51_combout\);

-- Location: LCCOMB_X63_Y38_N2
\SLLcircuit|Y2[4]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~52_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[4]~30_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y2[4]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~30_combout\,
	datab => \SLLcircuit|Y2[4]~51_combout\,
	datac => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[4]~52_combout\);

-- Location: LCCOMB_X63_Y38_N4
\SLLcircuit|Y[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~27_combout\ = (\B[2]~input_o\ & (((\SLLcircuit|Y2[4]~44_combout\)))) # (!\B[2]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\SLLcircuit|Y2[4]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SLLcircuit|Y2[4]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~44_combout\,
	combout => \SLLcircuit|Y[1]~27_combout\);

-- Location: LCCOMB_X62_Y39_N8
\SLLcircuit|Y[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~28_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~23_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~23_combout\,
	datad => \SLLcircuit|Y[1]~27_combout\,
	combout => \SLLcircuit|Y[1]~28_combout\);

-- Location: LCCOMB_X62_Y39_N18
\Y~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~225_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~26_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~28_combout\,
	datad => \SLLcircuit|Y[1]~26_combout\,
	combout => \Y~225_combout\);

-- Location: LCCOMB_X62_Y39_N12
\Y~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~388_combout\ = (\Y~225_combout\) # ((\Y~231_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y~231_combout\,
	datad => \Y~225_combout\,
	combout => \Y~388_combout\);

-- Location: LCCOMB_X59_Y43_N10
\SRAcircuit|Y2[28]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[28]~128_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[40]~42_combout\) # ((\SRAcircuit|Y1[32]~46_combout\ & \SRAcircuit|Equal4~0_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (((\SRAcircuit|Y1[32]~46_combout\ & 
-- \SRAcircuit|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[40]~42_combout\,
	datac => \SRAcircuit|Y1[32]~46_combout\,
	datad => \SRAcircuit|Equal4~0_combout\,
	combout => \SRAcircuit|Y2[28]~128_combout\);

-- Location: LCCOMB_X59_Y43_N22
\SRAcircuit|Y2[28]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[28]~153_combout\ = (\SRAcircuit|Y1[28]~102_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[28]~102_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \SRAcircuit|Y2[28]~153_combout\);

-- Location: LCCOMB_X59_Y43_N12
\SRAcircuit|Y2[28]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[28]~129_combout\ = (\SRAcircuit|Y2[28]~128_combout\) # ((\SRAcircuit|Y2[28]~153_combout\) # ((\SRAcircuit|Y1[36]~50_combout\ & \SRAcircuit|Y2[34]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[36]~50_combout\,
	datab => \SRAcircuit|Y2[28]~128_combout\,
	datac => \SRAcircuit|Y2[28]~153_combout\,
	datad => \SRAcircuit|Y2[34]~25_combout\,
	combout => \SRAcircuit|Y2[28]~129_combout\);

-- Location: LCCOMB_X59_Y39_N0
\Y~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~233_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y2[28]~129_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[25]~119_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[25]~119_combout\,
	datab => \SRAcircuit|Y2[28]~129_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~233_combout\);

-- Location: LCCOMB_X59_Y39_N18
\Y~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~234_combout\ = (\Y~233_combout\ & ((\SRAcircuit|Y2[26]~123_combout\) # ((!\seA_Y3[20]~0_combout\)))) # (!\Y~233_combout\ & (((\SRAcircuit|Y2[27]~126_combout\ & \seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[26]~123_combout\,
	datab => \Y~233_combout\,
	datac => \SRAcircuit|Y2[27]~126_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~234_combout\);

-- Location: LCCOMB_X56_Y41_N4
\SRLcircuit|Y2[28]~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[28]~208_combout\ = (\B[2]~input_o\ & (\SRLcircuit|Y2[28]~58_combout\ & (!\shiftCount[5]~0_combout\))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[28]~58_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~192_combout\,
	combout => \SRLcircuit|Y2[28]~208_combout\);

-- Location: LCCOMB_X63_Y39_N18
\Y~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~235_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[27]~206_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[25]~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[27]~206_combout\,
	datac => \SRLcircuit|Y2[25]~198_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~235_combout\);

-- Location: LCCOMB_X63_Y39_N12
\Y~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~236_combout\ = (\B[0]~input_o\ & ((\Y~235_combout\ & ((\SRLcircuit|Y2[26]~202_combout\))) # (!\Y~235_combout\ & (\SRLcircuit|Y2[28]~208_combout\)))) # (!\B[0]~input_o\ & (((\Y~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[28]~208_combout\,
	datac => \SRLcircuit|Y2[26]~202_combout\,
	datad => \Y~235_combout\,
	combout => \Y~236_combout\);

-- Location: LCCOMB_X65_Y38_N10
\Y~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~237_combout\ = (\Y~77_combout\ & ((\Y~234_combout\) # ((!\Y~52_combout\)))) # (!\Y~77_combout\ & (((\Y~52_combout\ & \Y~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~234_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~236_combout\,
	combout => \Y~237_combout\);

-- Location: LCCOMB_X61_Y41_N0
\SRAcircuit|Y2[60]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[60]~130_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[34]~24_combout\ & (\A_Y1[60]~19_combout\)) # (!\SRAcircuit|Y2[34]~24_combout\ & ((\A_Y1[63]~14_combout\))))) # (!\SRLcircuit|Y2[2]~48_combout\ & 
-- (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[60]~19_combout\,
	datab => \A_Y1[63]~14_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRAcircuit|Y2[34]~24_combout\,
	combout => \SRAcircuit|Y2[60]~130_combout\);

-- Location: LCCOMB_X61_Y41_N2
\seA_Y3[25]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[25]~126_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[60]~130_combout\ & (\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRAcircuit|Y2[57]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y2[60]~130_combout\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[57]~120_combout\,
	combout => \seA_Y3[25]~126_combout\);

-- Location: LCCOMB_X61_Y41_N20
\seA_Y3[25]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[25]~127_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[25]~126_combout\ & (\SRAcircuit|Y2[58]~124_combout\)) # (!\seA_Y3[25]~126_combout\ & ((\SRAcircuit|Y2[59]~127_combout\))))) # (!\seA_Y3[20]~0_combout\ & (\seA_Y3[25]~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \seA_Y3[25]~126_combout\,
	datac => \SRAcircuit|Y2[58]~124_combout\,
	datad => \SRAcircuit|Y2[59]~127_combout\,
	combout => \seA_Y3[25]~127_combout\);

-- Location: LCCOMB_X60_Y42_N18
\SRLcircuit|Y2[60]~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[60]~224_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & (\A_Y1[60]~19_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~48_combout\,
	datab => \A_Y1[60]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \SRLcircuit|Y2[60]~224_combout\);

-- Location: LCCOMB_X66_Y42_N0
\seA_Y3[25]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[25]~128_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[59]~207_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[57]~199_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[57]~199_combout\,
	datab => \SRLcircuit|Y2[59]~207_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[25]~128_combout\);

-- Location: LCCOMB_X66_Y42_N18
\seA_Y3[25]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[25]~129_combout\ = (\B[0]~input_o\ & ((\seA_Y3[25]~128_combout\ & (\SRLcircuit|Y2[58]~203_combout\)) # (!\seA_Y3[25]~128_combout\ & ((\SRLcircuit|Y2[60]~224_combout\))))) # (!\B[0]~input_o\ & (((\seA_Y3[25]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[58]~203_combout\,
	datab => \SRLcircuit|Y2[60]~224_combout\,
	datac => \B[0]~input_o\,
	datad => \seA_Y3[25]~128_combout\,
	combout => \seA_Y3[25]~129_combout\);

-- Location: LCCOMB_X66_Y42_N28
\seA_Y3[25]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[25]~130_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y3[25]~127_combout\)) # (!\ShiftFN[0]~input_o\ & ((\seA_Y3[25]~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[25]~127_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[25]~129_combout\,
	combout => \seA_Y3[25]~130_combout\);

-- Location: IOIBUF_X67_Y0_N22
\C[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(25),
	o => \C[25]~input_o\);

-- Location: LCCOMB_X65_Y38_N20
\Y~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~238_combout\ = (\Y~237_combout\ & ((\seA_Y3[25]~130_combout\) # ((\Y~52_combout\)))) # (!\Y~237_combout\ & (((!\Y~52_combout\ & \C[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~237_combout\,
	datab => \seA_Y3[25]~130_combout\,
	datac => \Y~52_combout\,
	datad => \C[25]~input_o\,
	combout => \Y~238_combout\);

-- Location: LCCOMB_X57_Y42_N16
\SLLcircuit|Y2[5]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~53_combout\ = (\B[4]~input_o\ & (\A[9]~input_o\)) # (!\B[4]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLLcircuit|Y2[5]~53_combout\);

-- Location: LCCOMB_X57_Y42_N18
\SLLcircuit|Y2[5]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~54_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[5]~34_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[5]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[5]~53_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y2[5]~34_combout\,
	combout => \SLLcircuit|Y2[5]~54_combout\);

-- Location: LCCOMB_X65_Y40_N26
\SLLcircuit|Y[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~29_combout\ = (\B[2]~input_o\ & (((\SLLcircuit|Y2[5]~46_combout\)))) # (!\B[2]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\SLLcircuit|Y2[5]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SLLcircuit|Y2[5]~54_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[5]~46_combout\,
	combout => \SLLcircuit|Y[1]~29_combout\);

-- Location: LCCOMB_X65_Y40_N20
\SLLcircuit|Y[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~30_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~25_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~29_combout\,
	datab => \SLLcircuit|Y[1]~25_combout\,
	datac => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~30_combout\);

-- Location: LCCOMB_X65_Y38_N24
\Y~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~232_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~28_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~28_combout\,
	datac => \SLLcircuit|Y[1]~30_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~232_combout\);

-- Location: LCCOMB_X65_Y38_N4
\Y~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~389_combout\ = (\Y~232_combout\) # ((\Y~238_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y~238_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~232_combout\,
	combout => \Y~389_combout\);

-- Location: IOIBUF_X83_Y0_N8
\C[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(26),
	o => \C[26]~input_o\);

-- Location: LCCOMB_X55_Y39_N20
\SRLcircuit|Y2[29]~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[29]~209_combout\ = (\B[2]~input_o\ & (!\shiftCount[5]~0_combout\ & ((\SRLcircuit|Y2[2]~68_combout\)))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SRLcircuit|Y2[2]~197_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~68_combout\,
	combout => \SRLcircuit|Y2[29]~209_combout\);

-- Location: LCCOMB_X63_Y39_N14
\Y~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~242_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[28]~208_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[26]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[26]~202_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[28]~208_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~242_combout\);

-- Location: LCCOMB_X63_Y39_N0
\Y~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~243_combout\ = (\B[0]~input_o\ & ((\Y~242_combout\ & ((\SRLcircuit|Y2[27]~206_combout\))) # (!\Y~242_combout\ & (\SRLcircuit|Y2[29]~209_combout\)))) # (!\B[0]~input_o\ & (((\Y~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[29]~209_combout\,
	datab => \B[0]~input_o\,
	datac => \Y~242_combout\,
	datad => \SRLcircuit|Y2[27]~206_combout\,
	combout => \Y~243_combout\);

-- Location: LCCOMB_X63_Y39_N26
\Y~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~244_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~243_combout\))) # (!\Y~52_combout\ & (\C[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~77_combout\,
	datab => \C[26]~input_o\,
	datac => \Y~52_combout\,
	datad => \Y~243_combout\,
	combout => \Y~244_combout\);

-- Location: LCCOMB_X55_Y40_N10
\SRAcircuit|Y2[29]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[29]~132_combout\ = (!\B[3]~input_o\ & (\SRAcircuit|Y1[29]~104_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SRAcircuit|Y1[29]~104_combout\,
	datac => \B[2]~input_o\,
	combout => \SRAcircuit|Y2[29]~132_combout\);

-- Location: LCCOMB_X55_Y40_N8
\SRAcircuit|Y2[29]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[29]~131_combout\ = (\SRAcircuit|Y2[51]~27_combout\ & ((\SRAcircuit|Y1[41]~118_combout\) # ((\SRAcircuit|Y1[33]~119_combout\ & \SRAcircuit|Equal4~0_combout\)))) # (!\SRAcircuit|Y2[51]~27_combout\ & (\SRAcircuit|Y1[33]~119_combout\ & 
-- (\SRAcircuit|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[51]~27_combout\,
	datab => \SRAcircuit|Y1[33]~119_combout\,
	datac => \SRAcircuit|Equal4~0_combout\,
	datad => \SRAcircuit|Y1[41]~118_combout\,
	combout => \SRAcircuit|Y2[29]~131_combout\);

-- Location: LCCOMB_X55_Y40_N28
\SRAcircuit|Y2[29]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[29]~133_combout\ = (\SRAcircuit|Y2[29]~132_combout\) # ((\SRAcircuit|Y2[29]~131_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[37]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[29]~132_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SRAcircuit|Y2[29]~131_combout\,
	datad => \SRAcircuit|Y1[37]~120_combout\,
	combout => \SRAcircuit|Y2[29]~133_combout\);

-- Location: LCCOMB_X59_Y39_N20
\Y~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~240_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y2[29]~133_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[26]~123_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[26]~123_combout\,
	datab => \SRAcircuit|Y2[29]~133_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y~240_combout\);

-- Location: LCCOMB_X59_Y39_N14
\Y~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~241_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~240_combout\ & ((\SRAcircuit|Y2[27]~126_combout\))) # (!\Y~240_combout\ & (\SRAcircuit|Y2[28]~129_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\Y~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[28]~129_combout\,
	datac => \SRAcircuit|Y2[27]~126_combout\,
	datad => \Y~240_combout\,
	combout => \Y~241_combout\);

-- Location: LCCOMB_X66_Y42_N22
\seA_Y3[26]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[26]~133_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[60]~224_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[58]~203_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[58]~203_combout\,
	datab => \SRLcircuit|Y2[60]~224_combout\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[26]~133_combout\);

-- Location: LCCOMB_X60_Y42_N12
\SRLcircuit|Y2[61]~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[61]~225_combout\ = (\A_Y1[61]~27_combout\ & (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~48_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[61]~27_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[61]~225_combout\);

-- Location: LCCOMB_X60_Y42_N10
\seA_Y3[26]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[26]~134_combout\ = (\B[0]~input_o\ & ((\seA_Y3[26]~133_combout\ & (\SRLcircuit|Y2[59]~207_combout\)) # (!\seA_Y3[26]~133_combout\ & ((\SRLcircuit|Y2[61]~225_combout\))))) # (!\B[0]~input_o\ & (\seA_Y3[26]~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \seA_Y3[26]~133_combout\,
	datac => \SRLcircuit|Y2[59]~207_combout\,
	datad => \SRLcircuit|Y2[61]~225_combout\,
	combout => \seA_Y3[26]~134_combout\);

-- Location: LCCOMB_X61_Y41_N30
\SRAcircuit|Y2[61]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[61]~134_combout\ = (\SRLcircuit|Y2[2]~48_combout\ & ((\SRAcircuit|Y2[34]~24_combout\ & (\A_Y1[61]~27_combout\)) # (!\SRAcircuit|Y2[34]~24_combout\ & ((\A_Y1[63]~14_combout\))))) # (!\SRLcircuit|Y2[2]~48_combout\ & 
-- (((\A_Y1[63]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[61]~27_combout\,
	datab => \A_Y1[63]~14_combout\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \SRAcircuit|Y2[34]~24_combout\,
	combout => \SRAcircuit|Y2[61]~134_combout\);

-- Location: LCCOMB_X61_Y41_N8
\seA_Y3[26]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[26]~131_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y2[61]~134_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[58]~124_combout\) # ((\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y2[58]~124_combout\,
	datac => \SRAcircuit|Y2[61]~134_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[26]~131_combout\);

-- Location: LCCOMB_X61_Y41_N26
\seA_Y3[26]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[26]~132_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[26]~131_combout\ & ((\SRAcircuit|Y2[59]~127_combout\))) # (!\seA_Y3[26]~131_combout\ & (\SRAcircuit|Y2[60]~130_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[26]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[60]~130_combout\,
	datac => \seA_Y3[26]~131_combout\,
	datad => \SRAcircuit|Y2[59]~127_combout\,
	combout => \seA_Y3[26]~132_combout\);

-- Location: LCCOMB_X65_Y38_N16
\seA_Y3[26]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[26]~135_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[26]~132_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[26]~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[26]~134_combout\,
	datac => \seA_Y3[26]~132_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[26]~135_combout\);

-- Location: LCCOMB_X65_Y39_N8
\Y~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~245_combout\ = (\Y~244_combout\ & (((\seA_Y3[26]~135_combout\)) # (!\Y~77_combout\))) # (!\Y~244_combout\ & (\Y~77_combout\ & (\Y~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~244_combout\,
	datab => \Y~77_combout\,
	datac => \Y~241_combout\,
	datad => \seA_Y3[26]~135_combout\,
	combout => \Y~245_combout\);

-- Location: LCCOMB_X57_Y38_N28
\SLLcircuit|Y2[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~55_combout\ = (\B[4]~input_o\ & ((\A[10]~input_o\))) # (!\B[4]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLLcircuit|Y2[6]~55_combout\);

-- Location: LCCOMB_X57_Y38_N14
\SLLcircuit|Y2[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~56_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[6]~37_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y2[6]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~37_combout\,
	datab => \SLLcircuit|Y2[6]~55_combout\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[6]~56_combout\);

-- Location: LCCOMB_X63_Y38_N0
\SLLcircuit|Y[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~32_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[4]~52_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[6]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLLcircuit|Y2[6]~56_combout\,
	datad => \SLLcircuit|Y2[4]~52_combout\,
	combout => \SLLcircuit|Y[1]~32_combout\);

-- Location: LCCOMB_X63_Y38_N14
\SLLcircuit|Y[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~31_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\SLLcircuit|Y2[4]~44_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[6]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[6]~48_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~44_combout\,
	combout => \SLLcircuit|Y[1]~31_combout\);

-- Location: LCCOMB_X63_Y38_N26
\SLLcircuit|Y[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~33_combout\ = (\SLLcircuit|Y[1]~31_combout\) # ((!\SLLcircuit|Y1[16]~0_combout\ & (\SLLcircuit|Y[1]~32_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SLLcircuit|Y[1]~32_combout\,
	datac => \SLLcircuit|Y[1]~31_combout\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y[1]~33_combout\);

-- Location: LCCOMB_X65_Y38_N30
\Y~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~239_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~30_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~30_combout\,
	datac => \SLLcircuit|Y[1]~33_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~239_combout\);

-- Location: LCCOMB_X65_Y38_N6
\Y~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~390_combout\ = (\Y~239_combout\) # ((\Y~245_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~245_combout\,
	datac => \Y~239_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~390_combout\);

-- Location: LCCOMB_X60_Y42_N20
\seA_Y3[27]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[27]~138_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[61]~225_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[59]~207_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[61]~225_combout\,
	datab => \B[0]~input_o\,
	datac => \SRLcircuit|Y2[59]~207_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[27]~138_combout\);

-- Location: LCCOMB_X60_Y42_N22
\SRLcircuit|Y2[62]~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[62]~226_combout\ = (\A_Y1[62]~23_combout\ & (!\B[3]~input_o\ & (\SRLcircuit|Y2[2]~48_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[62]~23_combout\,
	datab => \B[3]~input_o\,
	datac => \SRLcircuit|Y2[2]~48_combout\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y2[62]~226_combout\);

-- Location: LCCOMB_X60_Y42_N30
\seA_Y3[27]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[27]~139_combout\ = (\B[0]~input_o\ & ((\seA_Y3[27]~138_combout\ & ((\SRLcircuit|Y2[60]~224_combout\))) # (!\seA_Y3[27]~138_combout\ & (\SRLcircuit|Y2[62]~226_combout\)))) # (!\B[0]~input_o\ & (\seA_Y3[27]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \seA_Y3[27]~138_combout\,
	datac => \SRLcircuit|Y2[62]~226_combout\,
	datad => \SRLcircuit|Y2[60]~224_combout\,
	combout => \seA_Y3[27]~139_combout\);

-- Location: LCCOMB_X61_Y40_N16
\SRAcircuit|Y2[62]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[62]~138_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRLcircuit|Y2[2]~48_combout\ & ((\A_Y1[62]~23_combout\))) # (!\SRLcircuit|Y2[2]~48_combout\ & (\A_Y1[63]~14_combout\)))) # (!\SRAcircuit|Y2[34]~24_combout\ & (\A_Y1[63]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \A_Y1[63]~14_combout\,
	datac => \A_Y1[62]~23_combout\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRAcircuit|Y2[62]~138_combout\);

-- Location: LCCOMB_X61_Y41_N4
\seA_Y3[27]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[27]~136_combout\ = (\B[1]~input_o\ & (\SRAcircuit|Y2[62]~138_combout\ & (\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\SRAcircuit|Y2[59]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y2[62]~138_combout\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y2[59]~127_combout\,
	combout => \seA_Y3[27]~136_combout\);

-- Location: LCCOMB_X61_Y41_N6
\seA_Y3[27]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[27]~137_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[27]~136_combout\ & ((\SRAcircuit|Y2[60]~130_combout\))) # (!\seA_Y3[27]~136_combout\ & (\SRAcircuit|Y2[61]~134_combout\)))) # (!\seA_Y3[20]~0_combout\ & (\seA_Y3[27]~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \seA_Y3[27]~136_combout\,
	datac => \SRAcircuit|Y2[61]~134_combout\,
	datad => \SRAcircuit|Y2[60]~130_combout\,
	combout => \seA_Y3[27]~137_combout\);

-- Location: LCCOMB_X61_Y38_N0
\seA_Y3[27]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[27]~140_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[27]~137_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[27]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seA_Y3[27]~139_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[27]~137_combout\,
	combout => \seA_Y3[27]~140_combout\);

-- Location: IOIBUF_X115_Y35_N22
\C[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(27),
	o => \C[27]~input_o\);

-- Location: LCCOMB_X59_Y40_N4
\SRAcircuit|Y2[30]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[30]~136_combout\ = (\SRAcircuit|Y1[30]~106_combout\ & ((\SRAcircuit|Y2[34]~24_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SRAcircuit|Y1[38]~113_combout\)))) # (!\SRAcircuit|Y1[30]~106_combout\ & (((\SRAcircuit|Y2[34]~25_combout\ & 
-- \SRAcircuit|Y1[38]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[30]~106_combout\,
	datab => \SRAcircuit|Y2[34]~24_combout\,
	datac => \SRAcircuit|Y2[34]~25_combout\,
	datad => \SRAcircuit|Y1[38]~113_combout\,
	combout => \SRAcircuit|Y2[30]~136_combout\);

-- Location: LCCOMB_X59_Y40_N10
\SRAcircuit|Y2[30]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[30]~135_combout\ = (\SRAcircuit|Y1[34]~111_combout\ & ((\SRAcircuit|Equal4~0_combout\) # ((\SRAcircuit|Y1[42]~110_combout\ & \SRAcircuit|Y2[51]~27_combout\)))) # (!\SRAcircuit|Y1[34]~111_combout\ & (\SRAcircuit|Y1[42]~110_combout\ & 
-- (\SRAcircuit|Y2[51]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[34]~111_combout\,
	datab => \SRAcircuit|Y1[42]~110_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Equal4~0_combout\,
	combout => \SRAcircuit|Y2[30]~135_combout\);

-- Location: LCCOMB_X59_Y40_N30
\SRAcircuit|Y2[30]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[30]~137_combout\ = (\SRAcircuit|Y2[30]~136_combout\) # (\SRAcircuit|Y2[30]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAcircuit|Y2[30]~136_combout\,
	datad => \SRAcircuit|Y2[30]~135_combout\,
	combout => \SRAcircuit|Y2[30]~137_combout\);

-- Location: LCCOMB_X60_Y39_N8
\Y~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~247_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[30]~137_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[27]~126_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[27]~126_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[30]~137_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~247_combout\);

-- Location: LCCOMB_X60_Y39_N18
\Y~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~248_combout\ = (\Y~247_combout\ & (((\SRAcircuit|Y2[28]~129_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\Y~247_combout\ & (\SRAcircuit|Y2[29]~133_combout\ & ((\seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[29]~133_combout\,
	datab => \Y~247_combout\,
	datac => \SRAcircuit|Y2[28]~129_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~248_combout\);

-- Location: LCCOMB_X57_Y40_N20
\SRLcircuit|Y2[30]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[30]~210_combout\ = (\B[2]~input_o\ & (((\SRLcircuit|Y2[2]~63_combout\ & !\shiftCount[5]~0_combout\)))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~201_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SRLcircuit|Y2[2]~201_combout\,
	datac => \SRLcircuit|Y2[2]~63_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y2[30]~210_combout\);

-- Location: LCCOMB_X63_Y39_N28
\Y~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~249_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[29]~209_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[27]~206_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[29]~209_combout\,
	datab => \SRLcircuit|Y2[27]~206_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y~249_combout\);

-- Location: LCCOMB_X63_Y39_N30
\Y~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~250_combout\ = (\B[0]~input_o\ & ((\Y~249_combout\ & (\SRLcircuit|Y2[28]~208_combout\)) # (!\Y~249_combout\ & ((\SRLcircuit|Y2[30]~210_combout\))))) # (!\B[0]~input_o\ & (((\Y~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[28]~208_combout\,
	datac => \SRLcircuit|Y2[30]~210_combout\,
	datad => \Y~249_combout\,
	combout => \Y~250_combout\);

-- Location: LCCOMB_X65_Y38_N28
\Y~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~251_combout\ = (\Y~77_combout\ & ((\Y~248_combout\) # ((!\Y~52_combout\)))) # (!\Y~77_combout\ & (((\Y~52_combout\ & \Y~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~248_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~250_combout\,
	combout => \Y~251_combout\);

-- Location: LCCOMB_X65_Y38_N14
\Y~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~252_combout\ = (\Y~52_combout\ & (((\Y~251_combout\)))) # (!\Y~52_combout\ & ((\Y~251_combout\ & (\seA_Y3[27]~140_combout\)) # (!\Y~251_combout\ & ((\C[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[27]~140_combout\,
	datab => \Y~52_combout\,
	datac => \C[27]~input_o\,
	datad => \Y~251_combout\,
	combout => \Y~252_combout\);

-- Location: LCCOMB_X54_Y39_N18
\SLLcircuit|Y2[7]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~57_combout\ = (\B[4]~input_o\ & ((\A[11]~input_o\))) # (!\B[4]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[4]~input_o\,
	datad => \A[11]~input_o\,
	combout => \SLLcircuit|Y2[7]~57_combout\);

-- Location: LCCOMB_X65_Y43_N0
\SLLcircuit|Y2[7]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~58_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[7]~40_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y2[7]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[7]~40_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y2[7]~57_combout\,
	combout => \SLLcircuit|Y2[7]~58_combout\);

-- Location: LCCOMB_X65_Y42_N26
\SLLcircuit|Y[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~35_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[5]~54_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[7]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~54_combout\,
	datac => \SLLcircuit|Y2[7]~58_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~35_combout\);

-- Location: LCCOMB_X65_Y42_N24
\SLLcircuit|Y[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~34_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\SLLcircuit|Y2[5]~46_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[7]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[5]~46_combout\,
	datad => \SLLcircuit|Y2[7]~50_combout\,
	combout => \SLLcircuit|Y[1]~34_combout\);

-- Location: LCCOMB_X65_Y42_N28
\SLLcircuit|Y[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~36_combout\ = (\SLLcircuit|Y[1]~34_combout\) # ((!\SLLcircuit|Y1[16]~0_combout\ & (!\B[2]~input_o\ & \SLLcircuit|Y[1]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y[1]~35_combout\,
	datad => \SLLcircuit|Y[1]~34_combout\,
	combout => \SLLcircuit|Y[1]~36_combout\);

-- Location: LCCOMB_X65_Y38_N26
\Y~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~246_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~33_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~36_combout\,
	datac => \SLLcircuit|Y[1]~33_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~246_combout\);

-- Location: LCCOMB_X65_Y38_N8
\Y~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~391_combout\ = (\Y~246_combout\) # ((\Y~252_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~252_combout\,
	datac => \Y~246_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~391_combout\);

-- Location: LCCOMB_X54_Y40_N22
\SRAcircuit|Y2[31]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[31]~139_combout\ = (\SRAcircuit|Equal4~0_combout\ & ((\A_s~0_combout\ & (\SRAcircuit|Y1[35]~57_combout\)) # (!\A_s~0_combout\ & ((\SRAcircuit|Y1[35]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \SRAcircuit|Equal4~0_combout\,
	datac => \SRAcircuit|Y1[35]~57_combout\,
	datad => \SRAcircuit|Y1[35]~59_combout\,
	combout => \SRAcircuit|Y2[31]~139_combout\);

-- Location: LCCOMB_X54_Y40_N24
\SRAcircuit|Y2[31]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[31]~140_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SRAcircuit|Y1[31]~109_combout\) # ((\SRAcircuit|Y1[39]~116_combout\ & \SRAcircuit|Y2[34]~25_combout\)))) # (!\SRAcircuit|Y2[34]~24_combout\ & (((\SRAcircuit|Y1[39]~116_combout\ & 
-- \SRAcircuit|Y2[34]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \SRAcircuit|Y1[31]~109_combout\,
	datac => \SRAcircuit|Y1[39]~116_combout\,
	datad => \SRAcircuit|Y2[34]~25_combout\,
	combout => \SRAcircuit|Y2[31]~140_combout\);

-- Location: LCCOMB_X54_Y40_N2
\SRAcircuit|Y2[31]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y2[31]~141_combout\ = (\SRAcircuit|Y2[31]~139_combout\) # ((\SRAcircuit|Y2[31]~140_combout\) # ((\SRAcircuit|Y2[51]~27_combout\ & \SRAcircuit|Y1[43]~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[31]~139_combout\,
	datab => \SRAcircuit|Y2[31]~140_combout\,
	datac => \SRAcircuit|Y2[51]~27_combout\,
	datad => \SRAcircuit|Y1[43]~114_combout\,
	combout => \SRAcircuit|Y2[31]~141_combout\);

-- Location: LCCOMB_X60_Y39_N12
\Y~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~254_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[31]~141_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((\SRAcircuit|Y2[28]~129_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[31]~141_combout\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y2[28]~129_combout\,
	datad => \B[1]~input_o\,
	combout => \Y~254_combout\);

-- Location: LCCOMB_X60_Y39_N6
\Y~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~255_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~254_combout\ & (\SRAcircuit|Y2[29]~133_combout\)) # (!\Y~254_combout\ & ((\SRAcircuit|Y2[30]~137_combout\))))) # (!\seA_Y3[20]~0_combout\ & (((\Y~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[29]~133_combout\,
	datab => \seA_Y3[20]~0_combout\,
	datac => \SRAcircuit|Y2[30]~137_combout\,
	datad => \Y~254_combout\,
	combout => \Y~255_combout\);

-- Location: IOIBUF_X52_Y0_N15
\C[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(28),
	o => \C[28]~input_o\);

-- Location: LCCOMB_X57_Y41_N30
\SRLcircuit|Y2[31]~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[31]~211_combout\ = (\B[2]~input_o\ & (((!\shiftCount[5]~0_combout\ & \SRLcircuit|Y2[2]~54_combout\)))) # (!\B[2]~input_o\ & (\SRLcircuit|Y2[2]~205_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~205_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~54_combout\,
	combout => \SRLcircuit|Y2[31]~211_combout\);

-- Location: LCCOMB_X60_Y39_N24
\Y~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~256_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[30]~210_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[28]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[28]~208_combout\,
	datab => \SRLcircuit|Y2[30]~210_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y~256_combout\);

-- Location: LCCOMB_X60_Y39_N2
\Y~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~257_combout\ = (\B[0]~input_o\ & ((\Y~256_combout\ & (\SRLcircuit|Y2[29]~209_combout\)) # (!\Y~256_combout\ & ((\SRLcircuit|Y2[31]~211_combout\))))) # (!\B[0]~input_o\ & (((\Y~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[29]~209_combout\,
	datab => \SRLcircuit|Y2[31]~211_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~256_combout\,
	combout => \Y~257_combout\);

-- Location: LCCOMB_X60_Y39_N4
\Y~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~258_combout\ = (\Y~52_combout\ & (((\Y~257_combout\ & !\Y~77_combout\)))) # (!\Y~52_combout\ & ((\C[28]~input_o\) # ((\Y~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[28]~input_o\,
	datab => \Y~257_combout\,
	datac => \Y~52_combout\,
	datad => \Y~77_combout\,
	combout => \Y~258_combout\);

-- Location: LCCOMB_X60_Y42_N16
\seA_Y3[28]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[28]~143_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[62]~226_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[60]~224_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y2[60]~224_combout\,
	datac => \SRLcircuit|Y2[62]~226_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[28]~143_combout\);

-- Location: LCCOMB_X61_Y40_N6
\SRLcircuit|Y2[63]~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y2[63]~227_combout\ = (!\B[3]~input_o\ & (\A_Y1[63]~14_combout\ & (!\B[2]~input_o\ & \SRLcircuit|Y2[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A_Y1[63]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \SRLcircuit|Y2[2]~48_combout\,
	combout => \SRLcircuit|Y2[63]~227_combout\);

-- Location: LCCOMB_X60_Y42_N2
\seA_Y3[28]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[28]~144_combout\ = (\seA_Y3[28]~143_combout\ & ((\SRLcircuit|Y2[61]~225_combout\) # ((!\B[0]~input_o\)))) # (!\seA_Y3[28]~143_combout\ & (((\B[0]~input_o\ & \SRLcircuit|Y2[63]~227_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[61]~225_combout\,
	datab => \seA_Y3[28]~143_combout\,
	datac => \B[0]~input_o\,
	datad => \SRLcircuit|Y2[63]~227_combout\,
	combout => \seA_Y3[28]~144_combout\);

-- Location: LCCOMB_X61_Y41_N16
\seA_Y3[28]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[28]~141_combout\ = (\B[0]~input_o\ & (((\A_Y1[63]~14_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[60]~130_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRAcircuit|Y2[60]~130_combout\,
	datac => \A_Y1[63]~14_combout\,
	datad => \B[1]~input_o\,
	combout => \seA_Y3[28]~141_combout\);

-- Location: LCCOMB_X61_Y41_N18
\seA_Y3[28]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[28]~142_combout\ = (\seA_Y3[20]~0_combout\ & ((\seA_Y3[28]~141_combout\ & ((\SRAcircuit|Y2[61]~134_combout\))) # (!\seA_Y3[28]~141_combout\ & (\SRAcircuit|Y2[62]~138_combout\)))) # (!\seA_Y3[20]~0_combout\ & (((\seA_Y3[28]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \SRAcircuit|Y2[62]~138_combout\,
	datac => \SRAcircuit|Y2[61]~134_combout\,
	datad => \seA_Y3[28]~141_combout\,
	combout => \seA_Y3[28]~142_combout\);

-- Location: LCCOMB_X61_Y41_N28
\seA_Y3[28]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[28]~145_combout\ = (\ShiftFN[0]~input_o\ & ((\seA_Y3[28]~142_combout\))) # (!\ShiftFN[0]~input_o\ & (\seA_Y3[28]~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \seA_Y3[28]~144_combout\,
	datad => \seA_Y3[28]~142_combout\,
	combout => \seA_Y3[28]~145_combout\);

-- Location: LCCOMB_X60_Y39_N30
\Y~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~259_combout\ = (\Y~77_combout\ & ((\Y~258_combout\ & ((\seA_Y3[28]~145_combout\))) # (!\Y~258_combout\ & (\Y~255_combout\)))) # (!\Y~77_combout\ & (((\Y~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~255_combout\,
	datab => \Y~77_combout\,
	datac => \Y~258_combout\,
	datad => \seA_Y3[28]~145_combout\,
	combout => \Y~259_combout\);

-- Location: LCCOMB_X63_Y38_N20
\SLLcircuit|Y[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~37_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[6]~48_combout\)) # (!\B[1]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \SLLcircuit|Y2[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[6]~48_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y2[4]~52_combout\,
	combout => \SLLcircuit|Y[1]~37_combout\);

-- Location: LCCOMB_X58_Y42_N16
\SLLcircuit|Y2[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~59_combout\ = (\B[4]~input_o\ & ((\A[12]~input_o\))) # (!\B[4]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[28]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[12]~input_o\,
	combout => \SLLcircuit|Y2[4]~59_combout\);

-- Location: LCCOMB_X58_Y42_N26
\SLLcircuit|Y2[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~60_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[4]~43_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[4]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[4]~59_combout\,
	datad => \SLLcircuit|Y2[4]~43_combout\,
	combout => \SLLcircuit|Y2[4]~60_combout\);

-- Location: LCCOMB_X63_Y38_N30
\SLLcircuit|Y[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~38_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[6]~56_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[4]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[4]~60_combout\,
	datac => \SLLcircuit|Y2[6]~56_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~38_combout\);

-- Location: LCCOMB_X63_Y38_N24
\SLLcircuit|Y[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~39_combout\ = (\B[2]~input_o\ & (((\SLLcircuit|Y[1]~37_combout\)))) # (!\B[2]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & ((\SLLcircuit|Y[1]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SLLcircuit|Y[1]~37_combout\,
	datac => \SLLcircuit|Y[1]~38_combout\,
	datad => \B[2]~input_o\,
	combout => \SLLcircuit|Y[1]~39_combout\);

-- Location: LCCOMB_X65_Y38_N0
\Y~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~253_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & ((\SLLcircuit|Y[1]~36_combout\))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLLcircuit|Y[1]~39_combout\,
	datac => \Y~82_combout\,
	datad => \SLLcircuit|Y[1]~36_combout\,
	combout => \Y~253_combout\);

-- Location: LCCOMB_X65_Y38_N2
\Y~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~392_combout\ = (\Y~253_combout\) # ((\Y~259_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~259_combout\,
	datab => \Y~253_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~392_combout\);

-- Location: LCCOMB_X60_Y42_N28
\SRLcircuit|Y3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~20_combout\ = (\B[1]~input_o\ & (((\SRLcircuit|Y2[63]~227_combout\ & !\B[0]~input_o\)))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[61]~225_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[61]~225_combout\,
	datab => \SRLcircuit|Y2[63]~227_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SRLcircuit|Y3~20_combout\);

-- Location: LCCOMB_X61_Y41_N14
\SRAcircuit|Y3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~27_combout\ = (\B[1]~input_o\ & (\A_Y1[63]~14_combout\)) # (!\B[1]~input_o\ & ((\SRAcircuit|Y2[61]~134_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A_Y1[63]~14_combout\,
	datac => \SRAcircuit|Y2[61]~134_combout\,
	combout => \SRAcircuit|Y3~27_combout\);

-- Location: LCCOMB_X60_Y42_N14
\seA_Y3[29]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[29]~146_combout\ = (\SRAcircuit|Equal7~0_combout\ & (((\ShiftFN[0]~input_o\)))) # (!\SRAcircuit|Equal7~0_combout\ & ((\ShiftFN[0]~input_o\ & ((\SRAcircuit|Y3~27_combout\))) # (!\ShiftFN[0]~input_o\ & (\SRLcircuit|Y3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal7~0_combout\,
	datab => \SRLcircuit|Y3~20_combout\,
	datac => \SRAcircuit|Y3~27_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \seA_Y3[29]~146_combout\);

-- Location: LCCOMB_X60_Y42_N8
\seA_Y3[29]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[29]~147_combout\ = (\seA_Y3[29]~146_combout\ & (((\SRAcircuit|Y2[62]~138_combout\) # (!\SRAcircuit|Equal7~0_combout\)))) # (!\seA_Y3[29]~146_combout\ & (\SRLcircuit|Y2[62]~226_combout\ & ((\SRAcircuit|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[62]~226_combout\,
	datab => \seA_Y3[29]~146_combout\,
	datac => \SRAcircuit|Y2[62]~138_combout\,
	datad => \SRAcircuit|Equal7~0_combout\,
	combout => \seA_Y3[29]~147_combout\);

-- Location: LCCOMB_X60_Y39_N20
\Y~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~263_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y2[31]~211_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y2[29]~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[29]~209_combout\,
	datab => \SRLcircuit|Y2[31]~211_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y~263_combout\);

-- Location: LCCOMB_X60_Y39_N22
\Y~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~264_combout\ = (\B[0]~input_o\ & ((\Y~263_combout\ & ((\SRLcircuit|Y2[30]~210_combout\))) # (!\Y~263_combout\ & (\SRLcircuit|Y2[32]~59_combout\)))) # (!\B[0]~input_o\ & (((\Y~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[32]~59_combout\,
	datab => \SRLcircuit|Y2[30]~210_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~263_combout\,
	combout => \Y~264_combout\);

-- Location: LCCOMB_X60_Y39_N0
\Y~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~261_combout\ = (\B[0]~input_o\ & (((\SRAcircuit|Y2[32]~32_combout\) # (!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (\SRAcircuit|Y2[29]~133_combout\ & ((!\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[29]~133_combout\,
	datab => \SRAcircuit|Y2[32]~32_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y~261_combout\);

-- Location: LCCOMB_X60_Y39_N10
\Y~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~262_combout\ = (\Y~261_combout\ & (((\SRAcircuit|Y2[30]~137_combout\) # (!\seA_Y3[20]~0_combout\)))) # (!\Y~261_combout\ & (\SRAcircuit|Y2[31]~141_combout\ & ((\seA_Y3[20]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[31]~141_combout\,
	datab => \Y~261_combout\,
	datac => \SRAcircuit|Y2[30]~137_combout\,
	datad => \seA_Y3[20]~0_combout\,
	combout => \Y~262_combout\);

-- Location: LCCOMB_X60_Y39_N16
\Y~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~265_combout\ = (\Y~77_combout\ & (((\Y~262_combout\) # (!\Y~52_combout\)))) # (!\Y~77_combout\ & (\Y~264_combout\ & (\Y~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~264_combout\,
	datab => \Y~77_combout\,
	datac => \Y~52_combout\,
	datad => \Y~262_combout\,
	combout => \Y~265_combout\);

-- Location: IOIBUF_X52_Y0_N1
\C[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(29),
	o => \C[29]~input_o\);

-- Location: LCCOMB_X60_Y39_N26
\Y~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~266_combout\ = (\Y~265_combout\ & ((\seA_Y3[29]~147_combout\) # ((\Y~52_combout\)))) # (!\Y~265_combout\ & (((!\Y~52_combout\ & \C[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[29]~147_combout\,
	datab => \Y~265_combout\,
	datac => \Y~52_combout\,
	datad => \C[29]~input_o\,
	combout => \Y~266_combout\);

-- Location: LCCOMB_X65_Y42_N22
\SLLcircuit|Y[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~40_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[7]~50_combout\)) # (!\B[1]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \SLLcircuit|Y2[5]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[7]~50_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y2[5]~54_combout\,
	combout => \SLLcircuit|Y[1]~40_combout\);

-- Location: LCCOMB_X58_Y39_N8
\SLLcircuit|Y2[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~61_combout\ = (\B[4]~input_o\ & (\A[13]~input_o\)) # (!\B[4]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[29]~input_o\,
	combout => \SLLcircuit|Y2[5]~61_combout\);

-- Location: LCCOMB_X61_Y42_N6
\SLLcircuit|Y2[5]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~62_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[5]~45_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[5]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~61_combout\,
	datab => \SLLcircuit|Y2[5]~45_combout\,
	datad => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[5]~62_combout\);

-- Location: LCCOMB_X65_Y42_N16
\SLLcircuit|Y[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~41_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[7]~58_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[5]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[5]~62_combout\,
	datac => \SLLcircuit|Y2[7]~58_combout\,
	combout => \SLLcircuit|Y[1]~41_combout\);

-- Location: LCCOMB_X65_Y42_N2
\SLLcircuit|Y[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~42_combout\ = (\B[2]~input_o\ & (((\SLLcircuit|Y[1]~40_combout\)))) # (!\B[2]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & ((\SLLcircuit|Y[1]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y[1]~40_combout\,
	datad => \SLLcircuit|Y[1]~41_combout\,
	combout => \SLLcircuit|Y[1]~42_combout\);

-- Location: LCCOMB_X65_Y38_N18
\Y~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~260_combout\ = (\Y~82_combout\ & ((\B[0]~input_o\ & (\SLLcircuit|Y[1]~39_combout\)) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~39_combout\,
	datac => \SLLcircuit|Y[1]~42_combout\,
	datad => \B[0]~input_o\,
	combout => \Y~260_combout\);

-- Location: LCCOMB_X65_Y38_N12
\Y~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~393_combout\ = (\Y~260_combout\) # ((\Y~266_combout\ & ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y~266_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y~260_combout\,
	combout => \Y~393_combout\);

-- Location: LCCOMB_X60_Y40_N20
\Y~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~268_combout\ = (\B[0]~input_o\ & ((\SRAcircuit|Y2[33]~37_combout\) # ((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \SRAcircuit|Y2[30]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[33]~37_combout\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRAcircuit|Y2[30]~137_combout\,
	combout => \Y~268_combout\);

-- Location: LCCOMB_X60_Y40_N14
\Y~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~269_combout\ = (\seA_Y3[20]~0_combout\ & ((\Y~268_combout\ & (\SRAcircuit|Y2[31]~141_combout\)) # (!\Y~268_combout\ & ((\SRAcircuit|Y2[32]~32_combout\))))) # (!\seA_Y3[20]~0_combout\ & (\Y~268_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[20]~0_combout\,
	datab => \Y~268_combout\,
	datac => \SRAcircuit|Y2[31]~141_combout\,
	datad => \SRAcircuit|Y2[32]~32_combout\,
	combout => \Y~269_combout\);

-- Location: LCCOMB_X62_Y43_N8
\seA_Y3[30]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[30]~149_combout\ = (\B[0]~input_o\ & (((\A_Y1[63]~14_combout\)))) # (!\B[0]~input_o\ & (\A_Y1[62]~23_combout\ & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[62]~23_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A_Y1[63]~14_combout\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[30]~149_combout\);

-- Location: LCCOMB_X62_Y43_N6
\seA_Y3[30]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[30]~148_combout\ = (\SRAcircuit|Y2[62]~138_combout\ & (\ShiftFN[0]~input_o\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[62]~138_combout\,
	datab => \ShiftFN[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[30]~148_combout\);

-- Location: LCCOMB_X62_Y43_N26
\seA_Y3[30]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[30]~150_combout\ = (!\B[1]~input_o\ & ((\seA_Y3[30]~148_combout\) # ((\SRLcircuit|Y2[60]~70_combout\ & \seA_Y3[30]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[60]~70_combout\,
	datab => \B[1]~input_o\,
	datac => \seA_Y3[30]~149_combout\,
	datad => \seA_Y3[30]~148_combout\,
	combout => \seA_Y3[30]~150_combout\);

-- Location: LCCOMB_X65_Y40_N14
\seA_Y3[32]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[32]~151_combout\ = (!\B[1]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \seA_Y3[32]~151_combout\);

-- Location: LCCOMB_X60_Y38_N26
\seA_Y3[30]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[30]~152_combout\ = (\seA_Y3[30]~150_combout\) # ((\A_Y1[63]~14_combout\ & (\ShiftFN[0]~input_o\ & !\seA_Y3[32]~151_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \seA_Y3[30]~150_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[32]~151_combout\,
	combout => \seA_Y3[30]~152_combout\);

-- Location: IOIBUF_X60_Y0_N1
\C[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(30),
	o => \C[30]~input_o\);

-- Location: LCCOMB_X60_Y39_N28
\Y~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~270_combout\ = (\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\SRLcircuit|Y2[32]~59_combout\)) # (!\B[1]~input_o\ & ((\SRLcircuit|Y2[30]~210_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[32]~59_combout\,
	datab => \SRLcircuit|Y2[30]~210_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y~270_combout\);

-- Location: LCCOMB_X60_Y39_N14
\Y~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~271_combout\ = (\B[0]~input_o\ & ((\Y~270_combout\ & ((\SRLcircuit|Y2[31]~211_combout\))) # (!\Y~270_combout\ & (\SRLcircuit|Y2[33]~69_combout\)))) # (!\B[0]~input_o\ & (((\Y~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[33]~69_combout\,
	datab => \SRLcircuit|Y2[31]~211_combout\,
	datac => \B[0]~input_o\,
	datad => \Y~270_combout\,
	combout => \Y~271_combout\);

-- Location: LCCOMB_X60_Y38_N0
\Y~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~272_combout\ = (\Y~77_combout\ & (((!\Y~52_combout\)))) # (!\Y~77_combout\ & ((\Y~52_combout\ & ((\Y~271_combout\))) # (!\Y~52_combout\ & (\C[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[30]~input_o\,
	datab => \Y~77_combout\,
	datac => \Y~271_combout\,
	datad => \Y~52_combout\,
	combout => \Y~272_combout\);

-- Location: LCCOMB_X60_Y38_N20
\Y~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~273_combout\ = (\Y~77_combout\ & ((\Y~272_combout\ & ((\seA_Y3[30]~152_combout\))) # (!\Y~272_combout\ & (\Y~269_combout\)))) # (!\Y~77_combout\ & (((\Y~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~269_combout\,
	datab => \Y~77_combout\,
	datac => \seA_Y3[30]~152_combout\,
	datad => \Y~272_combout\,
	combout => \Y~273_combout\);

-- Location: LCCOMB_X63_Y38_N10
\SLLcircuit|Y[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~43_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~52_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[4]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[4]~60_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~52_combout\,
	combout => \SLLcircuit|Y[1]~43_combout\);

-- Location: LCCOMB_X59_Y38_N22
\SLLcircuit|Y2[6]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~63_combout\ = (\B[4]~input_o\ & (\A[14]~input_o\)) # (!\B[4]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[30]~input_o\,
	combout => \SLLcircuit|Y2[6]~63_combout\);

-- Location: LCCOMB_X59_Y38_N16
\SLLcircuit|Y2[6]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~64_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[6]~47_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[6]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~63_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[6]~47_combout\,
	combout => \SLLcircuit|Y2[6]~64_combout\);

-- Location: LCCOMB_X63_Y42_N24
\SLLcircuit|Y[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~44_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~56_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[6]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[6]~56_combout\,
	datad => \SLLcircuit|Y2[6]~64_combout\,
	combout => \SLLcircuit|Y[1]~44_combout\);

-- Location: LCCOMB_X65_Y42_N20
\SLLcircuit|Y[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~45_combout\ = (\SLLcircuit|Y[1]~43_combout\) # ((!\B[1]~input_o\ & \SLLcircuit|Y[1]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLLcircuit|Y[1]~43_combout\,
	datad => \SLLcircuit|Y[1]~44_combout\,
	combout => \SLLcircuit|Y[1]~45_combout\);

-- Location: LCCOMB_X65_Y42_N30
\Y~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~267_combout\ = (\B[0]~input_o\ & (((\SLLcircuit|Y[1]~42_combout\)))) # (!\B[0]~input_o\ & (\SLLcircuit|Y[1]~45_combout\ & (!\SLLcircuit|Y1[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLLcircuit|Y[1]~45_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y[1]~42_combout\,
	combout => \Y~267_combout\);

-- Location: LCCOMB_X60_Y38_N28
\Y~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~394_combout\ = (\ShiftFN[1]~input_o\ & (\Y~273_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Y~267_combout\))) # (!\ShiftFN[0]~input_o\ & (\Y~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y~273_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y~267_combout\,
	combout => \Y~394_combout\);

-- Location: LCCOMB_X56_Y40_N22
\SLLcircuit|Y2[7]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~65_combout\ = (\B[4]~input_o\ & (\A[15]~input_o\)) # (!\B[4]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[15]~input_o\,
	datac => \A[31]~input_o\,
	combout => \SLLcircuit|Y2[7]~65_combout\);

-- Location: LCCOMB_X65_Y43_N10
\SLLcircuit|Y2[7]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~66_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[7]~49_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[7]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[7]~65_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[7]~49_combout\,
	combout => \SLLcircuit|Y2[7]~66_combout\);

-- Location: LCCOMB_X65_Y42_N18
\SLLcircuit|Y[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~47_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLLcircuit|Y2[7]~58_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[7]~58_combout\,
	datad => \SLLcircuit|Y2[7]~66_combout\,
	combout => \SLLcircuit|Y[1]~47_combout\);

-- Location: LCCOMB_X65_Y42_N8
\SLLcircuit|Y[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~46_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLLcircuit|Y2[5]~54_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~54_combout\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[5]~62_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~46_combout\);

-- Location: LCCOMB_X65_Y42_N4
\seA_Y2[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y2[32]~0_combout\ = (\B[0]~input_o\ & (((\SLLcircuit|Y[1]~45_combout\)))) # (!\B[0]~input_o\ & ((\SLLcircuit|Y[1]~47_combout\) # ((\SLLcircuit|Y[1]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SLLcircuit|Y[1]~47_combout\,
	datac => \SLLcircuit|Y[1]~46_combout\,
	datad => \SLLcircuit|Y[1]~45_combout\,
	combout => \seA_Y2[32]~0_combout\);

-- Location: IOIBUF_X115_Y25_N15
\C[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(31),
	o => \C[31]~input_o\);

-- Location: LCCOMB_X60_Y38_N6
\seA_Y2[32]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y2[32]~1_combout\ = (\ShiftFN[0]~input_o\ & (\seA_Y2[32]~0_combout\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\ShiftFN[0]~input_o\ & (((\C[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y2[32]~0_combout\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \C[31]~input_o\,
	combout => \seA_Y2[32]~1_combout\);

-- Location: LCCOMB_X53_Y40_N4
\SRAcircuit|Y3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~38_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\SRAcircuit|Y1[46]~35_combout\))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y1[43]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y1[46]~35_combout\,
	datad => \SRAcircuit|Y1[43]~56_combout\,
	combout => \SRAcircuit|Y3~38_combout\);

-- Location: LCCOMB_X53_Y40_N22
\SRAcircuit|Y3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~39_combout\ = (\SRAcircuit|Y3~38_combout\) # ((\B[1]~input_o\ & (\SRAcircuit|Y1[45]~72_combout\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y1[45]~72_combout\,
	datac => \SRAcircuit|Y3~38_combout\,
	datad => \B[0]~input_o\,
	combout => \SRAcircuit|Y3~39_combout\);

-- Location: LCCOMB_X53_Y38_N12
\SRAcircuit|Y3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~32_combout\ = (\B[1]~input_o\ & (((\SRAcircuit|Y1[42]~30_combout\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\SRAcircuit|Y1[39]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y1[39]~62_combout\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y1[42]~30_combout\,
	datad => \B[0]~input_o\,
	combout => \SRAcircuit|Y3~32_combout\);

-- Location: LCCOMB_X53_Y38_N6
\SRAcircuit|Y3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~33_combout\ = (\SRAcircuit|Y3~32_combout\) # ((\B[1]~input_o\ & (\SRAcircuit|Y1[41]~64_combout\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y3~32_combout\,
	datab => \B[1]~input_o\,
	datac => \SRAcircuit|Y1[41]~64_combout\,
	datad => \B[0]~input_o\,
	combout => \SRAcircuit|Y3~33_combout\);

-- Location: LCCOMB_X53_Y40_N12
\SRAcircuit|Y3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~34_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\SRAcircuit|Y1[38]~38_combout\))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y1[35]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y1[38]~38_combout\,
	datad => \SRAcircuit|Y1[35]~59_combout\,
	combout => \SRAcircuit|Y3~34_combout\);

-- Location: LCCOMB_X53_Y40_N14
\SRAcircuit|Y3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~35_combout\ = (\SRAcircuit|Y3~34_combout\) # ((\B[1]~input_o\ & (\SRAcircuit|Y1[37]~70_combout\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SRAcircuit|Y1[37]~70_combout\,
	datac => \B[0]~input_o\,
	datad => \SRAcircuit|Y3~34_combout\,
	combout => \SRAcircuit|Y3~35_combout\);

-- Location: LCCOMB_X53_Y40_N16
\SRAcircuit|Y3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~36_combout\ = (\B[1]~input_o\ & (\B[0]~input_o\ & (\SRAcircuit|Y1[34]~33_combout\))) # (!\B[1]~input_o\ & (((\SRAcircuit|Y1[31]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y1[34]~33_combout\,
	datad => \SRAcircuit|Y1[31]~108_combout\,
	combout => \SRAcircuit|Y3~36_combout\);

-- Location: LCCOMB_X53_Y40_N10
\SRAcircuit|Y3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~37_combout\ = (\SRAcircuit|Y3~36_combout\) # ((\B[1]~input_o\ & (!\B[0]~input_o\ & \SRAcircuit|Y1[33]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \SRAcircuit|Y1[33]~67_combout\,
	datad => \SRAcircuit|Y3~36_combout\,
	combout => \SRAcircuit|Y3~37_combout\);

-- Location: LCCOMB_X53_Y40_N24
\SRAcircuit|Y3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~28_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\) # ((\SRAcircuit|Y3~35_combout\)))) # (!\B[2]~input_o\ & (!\B[3]~input_o\ & ((\SRAcircuit|Y3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y3~35_combout\,
	datad => \SRAcircuit|Y3~37_combout\,
	combout => \SRAcircuit|Y3~28_combout\);

-- Location: LCCOMB_X53_Y40_N26
\SRAcircuit|Y3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAcircuit|Y3~29_combout\ = (\B[3]~input_o\ & ((\SRAcircuit|Y3~28_combout\ & (\SRAcircuit|Y3~39_combout\)) # (!\SRAcircuit|Y3~28_combout\ & ((\SRAcircuit|Y3~33_combout\))))) # (!\B[3]~input_o\ & (((\SRAcircuit|Y3~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y3~39_combout\,
	datab => \B[3]~input_o\,
	datac => \SRAcircuit|Y3~33_combout\,
	datad => \SRAcircuit|Y3~28_combout\,
	combout => \SRAcircuit|Y3~29_combout\);

-- Location: LCCOMB_X54_Y39_N20
\SRLcircuit|Y3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~33_combout\ = (\B[2]~input_o\ & ((\B[4]~input_o\) # ((\A[43]~input_o\)))) # (!\B[2]~input_o\ & (!\B[4]~input_o\ & (\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[39]~input_o\,
	datad => \A[43]~input_o\,
	combout => \SRLcircuit|Y3~33_combout\);

-- Location: LCCOMB_X58_Y38_N30
\SRLcircuit|Y3~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~31_combout\ = (\B[0]~input_o\ & ((\A[42]~input_o\) # ((\B[2]~input_o\)))) # (!\B[0]~input_o\ & (((!\B[2]~input_o\ & \A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[41]~input_o\,
	combout => \SRLcircuit|Y3~31_combout\);

-- Location: LCCOMB_X58_Y38_N16
\SRLcircuit|Y3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~32_combout\ = (\B[2]~input_o\ & ((\SRLcircuit|Y3~31_combout\ & (\A[46]~input_o\)) # (!\SRLcircuit|Y3~31_combout\ & ((\A[45]~input_o\))))) # (!\B[2]~input_o\ & (((\SRLcircuit|Y3~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[46]~input_o\,
	datac => \SRLcircuit|Y3~31_combout\,
	datad => \A[45]~input_o\,
	combout => \SRLcircuit|Y3~32_combout\);

-- Location: LCCOMB_X54_Y39_N30
\SRLcircuit|Y3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~34_combout\ = (\B[4]~input_o\ & (\SRLcircuit|Y3~33_combout\)) # (!\B[4]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y3~32_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y3~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SRLcircuit|Y3~33_combout\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y3~32_combout\,
	combout => \SRLcircuit|Y3~34_combout\);

-- Location: LCCOMB_X53_Y38_N8
\SRLcircuit|Y3~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~37_combout\ = (\B[4]~input_o\ & ((\SRLcircuit|Y3~34_combout\ & ((\A[59]~input_o\))) # (!\SRLcircuit|Y3~34_combout\ & (\A[55]~input_o\)))) # (!\B[4]~input_o\ & (((\SRLcircuit|Y3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[55]~input_o\,
	datac => \A[59]~input_o\,
	datad => \SRLcircuit|Y3~34_combout\,
	combout => \SRLcircuit|Y3~37_combout\);

-- Location: LCCOMB_X53_Y38_N20
\SRLcircuit|Y3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~35_combout\ = (\SRLcircuit|Y3~34_combout\ & ((\B[0]~input_o\ & ((\A[62]~input_o\))) # (!\B[0]~input_o\ & (\A[61]~input_o\)))) # (!\SRLcircuit|Y3~34_combout\ & (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~34_combout\,
	datab => \B[0]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[62]~input_o\,
	combout => \SRLcircuit|Y3~35_combout\);

-- Location: LCCOMB_X53_Y38_N22
\SRLcircuit|Y3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~36_combout\ = (\SRLcircuit|Y3~35_combout\ & (((\A[58]~input_o\) # (\SRLcircuit|Y3~34_combout\)))) # (!\SRLcircuit|Y3~35_combout\ & (\A[57]~input_o\ & ((!\SRLcircuit|Y3~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \SRLcircuit|Y3~35_combout\,
	datac => \A[58]~input_o\,
	datad => \SRLcircuit|Y3~34_combout\,
	combout => \SRLcircuit|Y3~36_combout\);

-- Location: LCCOMB_X53_Y38_N2
\SRLcircuit|Y3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~38_combout\ = (\B[4]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y3~36_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y3~37_combout\)))) # (!\B[4]~input_o\ & (((\SRLcircuit|Y3~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[1]~input_o\,
	datac => \SRLcircuit|Y3~37_combout\,
	datad => \SRLcircuit|Y3~36_combout\,
	combout => \SRLcircuit|Y3~38_combout\);

-- Location: LCCOMB_X56_Y38_N30
\SRLcircuit|Y3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~29_combout\ = (!\B[2]~input_o\ & (!\B[1]~input_o\ & (!\B[3]~input_o\ & \SRLcircuit|Y1[16]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \SRLcircuit|Y1[16]~42_combout\,
	combout => \SRLcircuit|Y3~29_combout\);

-- Location: LCCOMB_X52_Y43_N30
\SRLcircuit|Y3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~21_combout\ = (\B[0]~input_o\ & ((\A[34]~input_o\) # ((\B[2]~input_o\)))) # (!\B[0]~input_o\ & (((\A[33]~input_o\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y3~21_combout\);

-- Location: LCCOMB_X54_Y43_N10
\SRLcircuit|Y3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~22_combout\ = (\SRLcircuit|Y3~21_combout\ & ((\A[38]~input_o\) # ((!\B[2]~input_o\)))) # (!\SRLcircuit|Y3~21_combout\ & (((\A[37]~input_o\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~21_combout\,
	datab => \A[38]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y3~22_combout\);

-- Location: LCCOMB_X54_Y43_N12
\SRLcircuit|Y3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~23_combout\ = (\B[4]~input_o\ & (((\B[2]~input_o\)))) # (!\B[4]~input_o\ & ((\B[2]~input_o\ & ((\A[35]~input_o\))) # (!\B[2]~input_o\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[35]~input_o\,
	datad => \B[2]~input_o\,
	combout => \SRLcircuit|Y3~23_combout\);

-- Location: LCCOMB_X54_Y43_N22
\SRLcircuit|Y3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~24_combout\ = (\B[1]~input_o\ & ((\B[4]~input_o\ & ((\SRLcircuit|Y3~23_combout\))) # (!\B[4]~input_o\ & (\SRLcircuit|Y3~22_combout\)))) # (!\B[1]~input_o\ & (((\SRLcircuit|Y3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~22_combout\,
	datab => \B[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y3~23_combout\,
	combout => \SRLcircuit|Y3~24_combout\);

-- Location: LCCOMB_X52_Y43_N12
\SRLcircuit|Y3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~27_combout\ = (\B[4]~input_o\ & ((\SRLcircuit|Y3~24_combout\ & (\A[51]~input_o\)) # (!\SRLcircuit|Y3~24_combout\ & ((\A[47]~input_o\))))) # (!\B[4]~input_o\ & (((\SRLcircuit|Y3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[47]~input_o\,
	datad => \SRLcircuit|Y3~24_combout\,
	combout => \SRLcircuit|Y3~27_combout\);

-- Location: LCCOMB_X52_Y43_N8
\SRLcircuit|Y3~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~25_combout\ = (\B[0]~input_o\ & (((\A[54]~input_o\)) # (!\SRLcircuit|Y3~24_combout\))) # (!\B[0]~input_o\ & (\SRLcircuit|Y3~24_combout\ & (\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \SRLcircuit|Y3~24_combout\,
	datac => \A[53]~input_o\,
	datad => \A[54]~input_o\,
	combout => \SRLcircuit|Y3~25_combout\);

-- Location: LCCOMB_X52_Y43_N10
\SRLcircuit|Y3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~26_combout\ = (\SRLcircuit|Y3~25_combout\ & (((\A[50]~input_o\) # (\SRLcircuit|Y3~24_combout\)))) # (!\SRLcircuit|Y3~25_combout\ & (\A[49]~input_o\ & ((!\SRLcircuit|Y3~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \A[50]~input_o\,
	datac => \SRLcircuit|Y3~25_combout\,
	datad => \SRLcircuit|Y3~24_combout\,
	combout => \SRLcircuit|Y3~26_combout\);

-- Location: LCCOMB_X52_Y43_N14
\SRLcircuit|Y3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~28_combout\ = (\B[4]~input_o\ & ((\B[1]~input_o\ & ((\SRLcircuit|Y3~26_combout\))) # (!\B[1]~input_o\ & (\SRLcircuit|Y3~27_combout\)))) # (!\B[4]~input_o\ & (\SRLcircuit|Y3~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~27_combout\,
	datab => \B[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SRLcircuit|Y3~26_combout\,
	combout => \SRLcircuit|Y3~28_combout\);

-- Location: LCCOMB_X56_Y38_N24
\SRLcircuit|Y3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~30_combout\ = (\SRLcircuit|Y3~17_combout\ & ((\SRLcircuit|Y3~28_combout\) # ((\A_Y1[63]~14_combout\ & \SRLcircuit|Y3~29_combout\)))) # (!\SRLcircuit|Y3~17_combout\ & (\A_Y1[63]~14_combout\ & (\SRLcircuit|Y3~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y3~17_combout\,
	datab => \A_Y1[63]~14_combout\,
	datac => \SRLcircuit|Y3~29_combout\,
	datad => \SRLcircuit|Y3~28_combout\,
	combout => \SRLcircuit|Y3~30_combout\);

-- Location: LCCOMB_X56_Y38_N2
\SRLcircuit|Y3~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~39_combout\ = (\SRLcircuit|Y3~30_combout\) # ((\SRLcircuit|Y3~19_combout\ & \SRLcircuit|Y3~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRLcircuit|Y3~19_combout\,
	datac => \SRLcircuit|Y3~38_combout\,
	datad => \SRLcircuit|Y3~30_combout\,
	combout => \SRLcircuit|Y3~39_combout\);

-- Location: LCCOMB_X60_Y38_N30
\A_Y3[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[31]~8_combout\ = (\SRAcircuit|Equal7~0_combout\ & (((\ShiftFN[0]~input_o\)))) # (!\SRAcircuit|Equal7~0_combout\ & ((\ShiftFN[0]~input_o\ & (\SRAcircuit|Y3~29_combout\)) # (!\ShiftFN[0]~input_o\ & ((\SRLcircuit|Y3~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal7~0_combout\,
	datab => \SRAcircuit|Y3~29_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \SRLcircuit|Y3~39_combout\,
	combout => \A_Y3[31]~8_combout\);

-- Location: LCCOMB_X60_Y38_N8
\A_Y3[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y3[31]~9_combout\ = (\SRAcircuit|Equal7~0_combout\ & ((\A_Y3[31]~8_combout\ & ((\SRAcircuit|Y2[32]~32_combout\))) # (!\A_Y3[31]~8_combout\ & (\SRLcircuit|Y2[32]~59_combout\)))) # (!\SRAcircuit|Equal7~0_combout\ & (((\A_Y3[31]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Equal7~0_combout\,
	datab => \SRLcircuit|Y2[32]~59_combout\,
	datac => \A_Y3[31]~8_combout\,
	datad => \SRAcircuit|Y2[32]~32_combout\,
	combout => \A_Y3[31]~9_combout\);

-- Location: LCCOMB_X60_Y38_N2
\seA_Y3[32]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \seA_Y3[32]~153_combout\ = (\ShiftFN[0]~input_o\ & (\A_Y1[63]~14_combout\)) # (!\ShiftFN[0]~input_o\ & (((\SRLcircuit|Y2[63]~227_combout\ & \seA_Y3[32]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y1[63]~14_combout\,
	datab => \SRLcircuit|Y2[63]~227_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \seA_Y3[32]~151_combout\,
	combout => \seA_Y3[32]~153_combout\);

-- Location: LCCOMB_X60_Y38_N4
\A_Y5[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~0_combout\ = (\Y~52_combout\ & ((\A_Y3[31]~9_combout\) # ((\A_s~0_combout\ & \seA_Y3[32]~153_combout\)))) # (!\Y~52_combout\ & (\A_s~0_combout\ & ((\seA_Y3[32]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~52_combout\,
	datab => \A_s~0_combout\,
	datac => \A_Y3[31]~9_combout\,
	datad => \seA_Y3[32]~153_combout\,
	combout => \A_Y5[0]~0_combout\);

-- Location: LCCOMB_X60_Y38_N24
\A_Y5[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~1_combout\ = (\A_Y5[0]~0_combout\) # ((\seA_Y2[32]~1_combout\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y2[32]~1_combout\,
	datab => \A_Y5[0]~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	combout => \A_Y5[0]~1_combout\);

-- Location: LCCOMB_X61_Y45_N20
\Y~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~275_combout\ = (\ShiftFN[1]~input_o\) # ((\B[0]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y~275_combout\);

-- Location: LCCOMB_X65_Y42_N14
\SLLcircuit|Y[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~50_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[7]~58_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[7]~58_combout\,
	datab => \SLLcircuit|Y2[7]~66_combout\,
	datac => \B[2]~input_o\,
	combout => \SLLcircuit|Y[1]~50_combout\);

-- Location: LCCOMB_X65_Y42_N0
\SLLcircuit|Y[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~51_combout\ = (!\SLLcircuit|Y1[16]~0_combout\ & ((\SLLcircuit|Y[1]~46_combout\) # ((!\B[1]~input_o\ & \SLLcircuit|Y[1]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~50_combout\,
	datac => \SLLcircuit|Y[1]~46_combout\,
	datad => \SLLcircuit|Y1[16]~0_combout\,
	combout => \SLLcircuit|Y[1]~51_combout\);

-- Location: LCCOMB_X63_Y42_N2
\SRLcircuit|Y3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y3~40_combout\ = (!\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \SRLcircuit|Y3~40_combout\);

-- Location: LCCOMB_X63_Y42_N4
\SLLcircuit|Y[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~48_combout\ = (\B[1]~input_o\ & (((\SLLcircuit|Y[1]~44_combout\)))) # (!\B[1]~input_o\ & (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[4]~60_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~44_combout\,
	combout => \SLLcircuit|Y[1]~48_combout\);

-- Location: LCCOMB_X56_Y44_N2
\SLLcircuit|Y1[32]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[32]~1_combout\ = (\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\A[0]~input_o\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[0]~input_o\)) # (!\A_s~0_combout\ & ((\A[32]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \A[0]~input_o\,
	datad => \A[32]~input_o\,
	combout => \SLLcircuit|Y1[32]~1_combout\);

-- Location: LCCOMB_X56_Y44_N20
\SLLcircuit|Y1[32]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[32]~2_combout\ = (\B[4]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\A[16]~input_o\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[32]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[16]~input_o\,
	datad => \SLLcircuit|Y1[32]~1_combout\,
	combout => \SLLcircuit|Y1[32]~2_combout\);

-- Location: LCCOMB_X63_Y38_N12
\SLLcircuit|Y2[4]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~67_combout\ = (\B[3]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\SLLcircuit|Y2[4]~51_combout\))) # (!\B[3]~input_o\ & (((\SLLcircuit|Y1[32]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SLLcircuit|Y2[4]~51_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y1[32]~2_combout\,
	combout => \SLLcircuit|Y2[4]~67_combout\);

-- Location: LCCOMB_X63_Y42_N14
\SLLcircuit|Y[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~49_combout\ = (\SLLcircuit|Y1[16]~0_combout\ & (\SRLcircuit|Y3~40_combout\ & ((\SLLcircuit|Y2[4]~67_combout\)))) # (!\SLLcircuit|Y1[16]~0_combout\ & ((\SLLcircuit|Y[1]~48_combout\) # ((\SRLcircuit|Y3~40_combout\ & 
-- \SLLcircuit|Y2[4]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SRLcircuit|Y3~40_combout\,
	datac => \SLLcircuit|Y[1]~48_combout\,
	datad => \SLLcircuit|Y2[4]~67_combout\,
	combout => \SLLcircuit|Y[1]~49_combout\);

-- Location: IOIBUF_X115_Y31_N8
\C[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(32),
	o => \C[32]~input_o\);

-- Location: LCCOMB_X63_Y42_N8
\Y~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~276_combout\ = (\Y~82_combout\ & ((\SLLcircuit|Y[1]~49_combout\) # ((\Y~275_combout\)))) # (!\Y~82_combout\ & (((!\Y~275_combout\ & \C[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~49_combout\,
	datac => \Y~275_combout\,
	datad => \C[32]~input_o\,
	combout => \Y~276_combout\);

-- Location: LCCOMB_X61_Y45_N14
\Y~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~277_combout\ = (\Y~275_combout\ & ((\Y~276_combout\ & ((\SLLcircuit|Y[1]~51_combout\))) # (!\Y~276_combout\ & (\seA_Y3[0]~5_combout\)))) # (!\Y~275_combout\ & (((\Y~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[0]~5_combout\,
	datac => \SLLcircuit|Y[1]~51_combout\,
	datad => \Y~276_combout\,
	combout => \Y~277_combout\);

-- Location: LCCOMB_X60_Y38_N18
\Y~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~274_combout\ = (\ExtWord~input_o\ & ((\ShiftFN[1]~input_o\ & (\seA_Y3[32]~153_combout\)) # (!\ShiftFN[1]~input_o\ & ((\seA_Y2[32]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \seA_Y3[32]~153_combout\,
	datac => \ExtWord~input_o\,
	datad => \seA_Y2[32]~1_combout\,
	combout => \Y~274_combout\);

-- Location: LCCOMB_X61_Y45_N0
\Y~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~278_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~277_combout\,
	datac => \Y~274_combout\,
	combout => \Y~278_combout\);

-- Location: IOIBUF_X87_Y73_N15
\C[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(33),
	o => \C[33]~input_o\);

-- Location: LCCOMB_X57_Y42_N12
\SLLcircuit|Y1[33]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[33]~3_combout\ = (\shiftCount[5]~0_combout\ & (\A[1]~input_o\ & ((!\A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[1]~input_o\)) # (!\A_s~0_combout\ & ((\A[33]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A[1]~input_o\,
	datac => \A[33]~input_o\,
	datad => \A_s~0_combout\,
	combout => \SLLcircuit|Y1[33]~3_combout\);

-- Location: LCCOMB_X57_Y42_N6
\SLLcircuit|Y1[33]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[33]~4_combout\ = (\B[4]~input_o\ & (\A[17]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[33]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[17]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y1[33]~3_combout\,
	combout => \SLLcircuit|Y1[33]~4_combout\);

-- Location: LCCOMB_X57_Y42_N0
\SLLcircuit|Y2[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~68_combout\ = (\B[3]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \SLLcircuit|Y2[5]~53_combout\)))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[33]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[33]~4_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y2[5]~53_combout\,
	combout => \SLLcircuit|Y2[5]~68_combout\);

-- Location: LCCOMB_X65_Y42_N10
\SLLcircuit|Y[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~52_combout\ = (\B[1]~input_o\ & (((\SLLcircuit|Y[1]~50_combout\)))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[5]~62_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[5]~62_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y[1]~50_combout\,
	combout => \SLLcircuit|Y[1]~52_combout\);

-- Location: LCCOMB_X63_Y42_N10
\SLLcircuit|Y[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~53_combout\ = (\SLLcircuit|Y1[16]~0_combout\ & (\SRLcircuit|Y3~40_combout\ & (\SLLcircuit|Y2[5]~68_combout\))) # (!\SLLcircuit|Y1[16]~0_combout\ & ((\SLLcircuit|Y[1]~52_combout\) # ((\SRLcircuit|Y3~40_combout\ & 
-- \SLLcircuit|Y2[5]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \SRLcircuit|Y3~40_combout\,
	datac => \SLLcircuit|Y2[5]~68_combout\,
	datad => \SLLcircuit|Y[1]~52_combout\,
	combout => \SLLcircuit|Y[1]~53_combout\);

-- Location: LCCOMB_X63_Y42_N28
\Y~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~279_combout\ = (\Y~82_combout\ & (((\Y~275_combout\) # (\SLLcircuit|Y[1]~53_combout\)))) # (!\Y~82_combout\ & (\C[33]~input_o\ & (!\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \C[33]~input_o\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~53_combout\,
	combout => \Y~279_combout\);

-- Location: LCCOMB_X63_Y42_N30
\Y~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~280_combout\ = (\Y~275_combout\ & ((\Y~279_combout\ & (\SLLcircuit|Y[1]~49_combout\)) # (!\Y~279_combout\ & ((\seA_Y3[1]~10_combout\))))) # (!\Y~275_combout\ & (\Y~279_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \Y~279_combout\,
	datac => \SLLcircuit|Y[1]~49_combout\,
	datad => \seA_Y3[1]~10_combout\,
	combout => \Y~280_combout\);

-- Location: LCCOMB_X60_Y38_N12
\Y~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~281_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~280_combout\,
	combout => \Y~281_combout\);

-- Location: IOIBUF_X115_Y51_N8
\C[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(34),
	o => \C[34]~input_o\);

-- Location: LCCOMB_X63_Y42_N18
\SLLcircuit|Y[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~55_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[4]~60_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[6]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[4]~60_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[6]~64_combout\,
	combout => \SLLcircuit|Y[1]~55_combout\);

-- Location: LCCOMB_X57_Y38_N24
\SLLcircuit|Y1[34]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[34]~5_combout\ = (\shiftCount[5]~0_combout\ & (\A[2]~input_o\ & ((!\A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[2]~input_o\)) # (!\A_s~0_combout\ & ((\A[34]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[34]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SLLcircuit|Y1[34]~5_combout\);

-- Location: LCCOMB_X57_Y38_N10
\SLLcircuit|Y1[34]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[34]~6_combout\ = (\B[4]~input_o\ & (\A[18]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[34]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[4]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y1[34]~5_combout\,
	combout => \SLLcircuit|Y1[34]~6_combout\);

-- Location: LCCOMB_X57_Y38_N4
\SLLcircuit|Y2[6]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~69_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[6]~55_combout\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[3]~input_o\ & (((\SLLcircuit|Y1[34]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLLcircuit|Y2[6]~55_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y1[34]~6_combout\,
	combout => \SLLcircuit|Y2[6]~69_combout\);

-- Location: LCCOMB_X63_Y42_N0
\SLLcircuit|Y[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~54_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\SLLcircuit|Y2[4]~67_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[6]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~69_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~67_combout\,
	combout => \SLLcircuit|Y[1]~54_combout\);

-- Location: LCCOMB_X63_Y42_N12
\SLLcircuit|Y[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~56_combout\ = (\SLLcircuit|Y[1]~54_combout\) # ((\B[2]~input_o\ & (\SLLcircuit|Y[1]~55_combout\ & !\SLLcircuit|Y1[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y[1]~55_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y[1]~54_combout\,
	combout => \SLLcircuit|Y[1]~56_combout\);

-- Location: LCCOMB_X63_Y42_N22
\Y~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~282_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & ((\SLLcircuit|Y[1]~56_combout\))) # (!\Y~82_combout\ & (\C[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \C[34]~input_o\,
	datac => \Y~82_combout\,
	datad => \SLLcircuit|Y[1]~56_combout\,
	combout => \Y~282_combout\);

-- Location: LCCOMB_X63_Y42_N16
\Y~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~283_combout\ = (\Y~282_combout\ & (((\SLLcircuit|Y[1]~53_combout\) # (!\Y~275_combout\)))) # (!\Y~282_combout\ & (\seA_Y3[2]~15_combout\ & (\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~282_combout\,
	datab => \seA_Y3[2]~15_combout\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~53_combout\,
	combout => \Y~283_combout\);

-- Location: LCCOMB_X70_Y41_N24
\Y~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~284_combout\ = (\Y~274_combout\) # ((\Y~283_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~274_combout\,
	datac => \Y~283_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~284_combout\);

-- Location: IOIBUF_X62_Y0_N22
\C[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(35),
	o => \C[35]~input_o\);

-- Location: LCCOMB_X54_Y43_N16
\SLLcircuit|Y1[35]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[35]~7_combout\ = (\A_s~0_combout\ & (!\shiftCount[5]~0_combout\ & ((\A[3]~input_o\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & ((\A[3]~input_o\))) # (!\shiftCount[5]~0_combout\ & (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \A[35]~input_o\,
	datad => \A[3]~input_o\,
	combout => \SLLcircuit|Y1[35]~7_combout\);

-- Location: LCCOMB_X54_Y43_N2
\SLLcircuit|Y1[35]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[35]~8_combout\ = (\B[4]~input_o\ & (\A[19]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[35]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \SLLcircuit|Y1[35]~7_combout\,
	combout => \SLLcircuit|Y1[35]~8_combout\);

-- Location: LCCOMB_X65_Y43_N4
\SLLcircuit|Y2[7]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~70_combout\ = (\B[3]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \SLLcircuit|Y2[7]~57_combout\)))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[35]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[35]~8_combout\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y2[7]~57_combout\,
	combout => \SLLcircuit|Y2[7]~70_combout\);

-- Location: LCCOMB_X65_Y43_N30
\SLLcircuit|Y[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~57_combout\ = (!\B[2]~input_o\ & ((\B[1]~input_o\ & (\SLLcircuit|Y2[5]~68_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[7]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[5]~68_combout\,
	datac => \SLLcircuit|Y2[7]~70_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~57_combout\);

-- Location: LCCOMB_X65_Y42_N12
\SLLcircuit|Y[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~58_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[5]~62_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[7]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLLcircuit|Y2[5]~62_combout\,
	datad => \SLLcircuit|Y2[7]~66_combout\,
	combout => \SLLcircuit|Y[1]~58_combout\);

-- Location: LCCOMB_X65_Y42_N6
\SLLcircuit|Y[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~59_combout\ = (\SLLcircuit|Y[1]~57_combout\) # ((!\SLLcircuit|Y1[16]~0_combout\ & (\B[2]~input_o\ & \SLLcircuit|Y[1]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y[1]~57_combout\,
	datad => \SLLcircuit|Y[1]~58_combout\,
	combout => \SLLcircuit|Y[1]~59_combout\);

-- Location: LCCOMB_X63_Y42_N26
\Y~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~285_combout\ = (\Y~82_combout\ & (((\Y~275_combout\) # (\SLLcircuit|Y[1]~59_combout\)))) # (!\Y~82_combout\ & (\C[35]~input_o\ & (!\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \C[35]~input_o\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~59_combout\,
	combout => \Y~285_combout\);

-- Location: LCCOMB_X63_Y42_N20
\Y~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~286_combout\ = (\Y~285_combout\ & (((\SLLcircuit|Y[1]~56_combout\) # (!\Y~275_combout\)))) # (!\Y~285_combout\ & (\seA_Y3[3]~20_combout\ & (\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~285_combout\,
	datab => \seA_Y3[3]~20_combout\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~56_combout\,
	combout => \Y~286_combout\);

-- Location: LCCOMB_X73_Y46_N16
\Y~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~287_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~286_combout\,
	datad => \Y~274_combout\,
	combout => \Y~287_combout\);

-- Location: IOIBUF_X72_Y73_N22
\C[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(36),
	o => \C[36]~input_o\);

-- Location: LCCOMB_X54_Y42_N8
\SLLcircuit|Y1[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[36]~9_combout\ = (\A_s~0_combout\ & (\A[4]~input_o\ & (!\shiftCount[5]~0_combout\))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & (\A[4]~input_o\)) # (!\shiftCount[5]~0_combout\ & ((\A[36]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \A[4]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A[36]~input_o\,
	combout => \SLLcircuit|Y1[36]~9_combout\);

-- Location: LCCOMB_X54_Y42_N2
\SLLcircuit|Y1[36]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[36]~10_combout\ = (\B[4]~input_o\ & (((\A[20]~input_o\ & !\SLLcircuit|Y1[16]~0_combout\)))) # (!\B[4]~input_o\ & (\SLLcircuit|Y1[36]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLLcircuit|Y1[36]~9_combout\,
	datac => \A[20]~input_o\,
	datad => \SLLcircuit|Y1[16]~0_combout\,
	combout => \SLLcircuit|Y1[36]~10_combout\);

-- Location: LCCOMB_X58_Y42_N4
\SLLcircuit|Y2[4]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~71_combout\ = (\B[3]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \SLLcircuit|Y2[4]~59_combout\)))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[36]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[36]~10_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y2[4]~59_combout\,
	combout => \SLLcircuit|Y2[4]~71_combout\);

-- Location: LCCOMB_X63_Y38_N22
\SLLcircuit|Y[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~61_combout\ = (\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~67_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[4]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[4]~71_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~67_combout\,
	combout => \SLLcircuit|Y[1]~61_combout\);

-- Location: LCCOMB_X63_Y42_N6
\SLLcircuit|Y[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~60_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~64_combout\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[2]~input_o\ & (((\SLLcircuit|Y2[6]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[6]~64_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y2[6]~69_combout\,
	combout => \SLLcircuit|Y[1]~60_combout\);

-- Location: LCCOMB_X67_Y42_N12
\SLLcircuit|Y[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~62_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~60_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~61_combout\,
	datad => \SLLcircuit|Y[1]~60_combout\,
	combout => \SLLcircuit|Y[1]~62_combout\);

-- Location: LCCOMB_X67_Y42_N6
\Y~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~288_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~62_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & (\C[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \C[36]~input_o\,
	datad => \SLLcircuit|Y[1]~62_combout\,
	combout => \Y~288_combout\);

-- Location: LCCOMB_X67_Y42_N24
\Y~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~289_combout\ = (\Y~275_combout\ & ((\Y~288_combout\ & (\SLLcircuit|Y[1]~59_combout\)) # (!\Y~288_combout\ & ((\seA_Y3[4]~25_combout\))))) # (!\Y~275_combout\ & (((\Y~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~59_combout\,
	datab => \seA_Y3[4]~25_combout\,
	datac => \Y~275_combout\,
	datad => \Y~288_combout\,
	combout => \Y~289_combout\);

-- Location: LCCOMB_X73_Y46_N2
\Y~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~290_combout\ = (\Y~274_combout\) # ((\Y~289_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \Y~289_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~290_combout\);

-- Location: IOIBUF_X72_Y0_N8
\C[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(37),
	o => \C[37]~input_o\);

-- Location: LCCOMB_X65_Y43_N16
\SLLcircuit|Y[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~63_combout\ = (\B[2]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \SLLcircuit|Y2[7]~66_combout\)))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[7]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[7]~70_combout\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y2[7]~66_combout\,
	combout => \SLLcircuit|Y[1]~63_combout\);

-- Location: LCCOMB_X55_Y43_N20
\SLLcircuit|Y1[37]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[37]~11_combout\ = (\A_s~0_combout\ & (((\A[5]~input_o\ & !\shiftCount[5]~0_combout\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & ((\A[5]~input_o\))) # (!\shiftCount[5]~0_combout\ & (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[5]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SLLcircuit|Y1[37]~11_combout\);

-- Location: LCCOMB_X55_Y43_N14
\SLLcircuit|Y1[37]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[37]~12_combout\ = (\B[4]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\A[21]~input_o\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[37]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[21]~input_o\,
	datad => \SLLcircuit|Y1[37]~11_combout\,
	combout => \SLLcircuit|Y1[37]~12_combout\);

-- Location: LCCOMB_X65_Y43_N18
\SLLcircuit|Y2[5]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~72_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[5]~61_combout\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[3]~input_o\ & (((\SLLcircuit|Y1[37]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~61_combout\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y1[37]~12_combout\,
	combout => \SLLcircuit|Y2[5]~72_combout\);

-- Location: LCCOMB_X65_Y43_N20
\SLLcircuit|Y[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~64_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[5]~68_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[5]~68_combout\,
	datad => \SLLcircuit|Y2[5]~72_combout\,
	combout => \SLLcircuit|Y[1]~64_combout\);

-- Location: LCCOMB_X67_Y42_N10
\SLLcircuit|Y[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~65_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~63_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~63_combout\,
	datac => \SLLcircuit|Y[1]~64_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~65_combout\);

-- Location: LCCOMB_X67_Y42_N20
\Y~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~291_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~65_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & (\C[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \C[37]~input_o\,
	datad => \SLLcircuit|Y[1]~65_combout\,
	combout => \Y~291_combout\);

-- Location: LCCOMB_X67_Y42_N30
\Y~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~292_combout\ = (\Y~291_combout\ & (((\SLLcircuit|Y[1]~62_combout\) # (!\Y~275_combout\)))) # (!\Y~291_combout\ & (\seA_Y3[5]~30_combout\ & (\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~291_combout\,
	datab => \seA_Y3[5]~30_combout\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~62_combout\,
	combout => \Y~292_combout\);

-- Location: LCCOMB_X70_Y41_N2
\Y~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~293_combout\ = (\Y~274_combout\) # ((\Y~292_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~292_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~293_combout\);

-- Location: LCCOMB_X55_Y41_N6
\SLLcircuit|Y1[38]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[38]~13_combout\ = (\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\A[6]~input_o\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[6]~input_o\)) # (!\A_s~0_combout\ & ((\A[38]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \A[6]~input_o\,
	datad => \A[38]~input_o\,
	combout => \SLLcircuit|Y1[38]~13_combout\);

-- Location: LCCOMB_X55_Y41_N8
\SLLcircuit|Y1[38]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[38]~14_combout\ = (\B[4]~input_o\ & (\A[22]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[38]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[4]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SLLcircuit|Y1[38]~13_combout\,
	combout => \SLLcircuit|Y1[38]~14_combout\);

-- Location: LCCOMB_X59_Y38_N18
\SLLcircuit|Y2[6]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~73_combout\ = (\B[3]~input_o\ & (((\SLLcircuit|Y2[6]~63_combout\ & !\SLLcircuit|Y1[16]~0_combout\)))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[38]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[38]~14_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[6]~63_combout\,
	datad => \SLLcircuit|Y1[16]~0_combout\,
	combout => \SLLcircuit|Y2[6]~73_combout\);

-- Location: LCCOMB_X59_Y38_N28
\SLLcircuit|Y[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~66_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~69_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[6]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~69_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[6]~73_combout\,
	combout => \SLLcircuit|Y[1]~66_combout\);

-- Location: LCCOMB_X63_Y38_N16
\SLLcircuit|Y[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~67_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~61_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~66_combout\,
	datac => \SLLcircuit|Y[1]~61_combout\,
	combout => \SLLcircuit|Y[1]~67_combout\);

-- Location: IOIBUF_X115_Y40_N1
\C[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(38),
	o => \C[38]~input_o\);

-- Location: LCCOMB_X67_Y42_N16
\Y~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~294_combout\ = (\Y~82_combout\ & ((\SLLcircuit|Y[1]~67_combout\) # ((\Y~275_combout\)))) # (!\Y~82_combout\ & (((!\Y~275_combout\ & \C[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~67_combout\,
	datac => \Y~275_combout\,
	datad => \C[38]~input_o\,
	combout => \Y~294_combout\);

-- Location: LCCOMB_X67_Y42_N2
\Y~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~295_combout\ = (\Y~294_combout\ & (((\SLLcircuit|Y[1]~65_combout\) # (!\Y~275_combout\)))) # (!\Y~294_combout\ & (\seA_Y3[6]~35_combout\ & (\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[6]~35_combout\,
	datab => \Y~294_combout\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~65_combout\,
	combout => \Y~295_combout\);

-- Location: LCCOMB_X73_Y46_N12
\Y~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~296_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~295_combout\,
	datad => \Y~274_combout\,
	combout => \Y~296_combout\);

-- Location: IOIBUF_X67_Y73_N1
\C[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(39),
	o => \C[39]~input_o\);

-- Location: LCCOMB_X56_Y36_N14
\SLLcircuit|Y1[39]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[39]~15_combout\ = (\A_s~0_combout\ & (\A[7]~input_o\ & (!\shiftCount[5]~0_combout\))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & (\A[7]~input_o\)) # (!\shiftCount[5]~0_combout\ & ((\A[39]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A_s~0_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A[39]~input_o\,
	combout => \SLLcircuit|Y1[39]~15_combout\);

-- Location: LCCOMB_X56_Y36_N0
\SLLcircuit|Y1[39]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[39]~16_combout\ = (\B[4]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & ((\A[23]~input_o\)))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[39]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \SLLcircuit|Y1[39]~15_combout\,
	datad => \A[23]~input_o\,
	combout => \SLLcircuit|Y1[39]~16_combout\);

-- Location: LCCOMB_X65_Y43_N22
\SLLcircuit|Y2[7]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~74_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[7]~65_combout\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[3]~input_o\ & (((\SLLcircuit|Y1[39]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[7]~65_combout\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y1[39]~16_combout\,
	combout => \SLLcircuit|Y2[7]~74_combout\);

-- Location: LCCOMB_X65_Y43_N8
\SLLcircuit|Y[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~68_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[7]~70_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[7]~70_combout\,
	datac => \SLLcircuit|Y2[7]~74_combout\,
	combout => \SLLcircuit|Y[1]~68_combout\);

-- Location: LCCOMB_X67_Y43_N18
\SLLcircuit|Y[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~69_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~64_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y[1]~64_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~68_combout\,
	combout => \SLLcircuit|Y[1]~69_combout\);

-- Location: LCCOMB_X67_Y42_N28
\Y~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~297_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & ((\SLLcircuit|Y[1]~69_combout\))) # (!\Y~82_combout\ & (\C[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[39]~input_o\,
	datab => \SLLcircuit|Y[1]~69_combout\,
	datac => \Y~275_combout\,
	datad => \Y~82_combout\,
	combout => \Y~297_combout\);

-- Location: LCCOMB_X67_Y42_N22
\Y~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~298_combout\ = (\Y~275_combout\ & ((\Y~297_combout\ & ((\SLLcircuit|Y[1]~67_combout\))) # (!\Y~297_combout\ & (\seA_Y3[7]~40_combout\)))) # (!\Y~275_combout\ & (((\Y~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[7]~40_combout\,
	datab => \SLLcircuit|Y[1]~67_combout\,
	datac => \Y~275_combout\,
	datad => \Y~297_combout\,
	combout => \Y~298_combout\);

-- Location: LCCOMB_X67_Y46_N16
\Y~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~299_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~298_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~298_combout\,
	combout => \Y~299_combout\);

-- Location: LCCOMB_X57_Y44_N24
\SRLcircuit|Y1[2]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~55_combout\ = (\shiftCount[5]~0_combout\ & (\A[8]~input_o\ & ((!\A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[8]~input_o\)) # (!\A_s~0_combout\ & ((\A[40]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[40]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~55_combout\);

-- Location: LCCOMB_X57_Y44_N26
\SLLcircuit|Y2[4]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~75_combout\ = (\B[4]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\A[24]~input_o\))) # (!\B[4]~input_o\ & (((\SRLcircuit|Y1[2]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[16]~0_combout\,
	datab => \B[4]~input_o\,
	datac => \A[24]~input_o\,
	datad => \SRLcircuit|Y1[2]~55_combout\,
	combout => \SLLcircuit|Y2[4]~75_combout\);

-- Location: LCCOMB_X63_Y38_N18
\SLLcircuit|Y2[4]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~76_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y1[32]~2_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[4]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[4]~75_combout\,
	datad => \SLLcircuit|Y1[32]~2_combout\,
	combout => \SLLcircuit|Y2[4]~76_combout\);

-- Location: LCCOMB_X63_Y38_N28
\SLLcircuit|Y[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~70_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~71_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[4]~71_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~76_combout\,
	combout => \SLLcircuit|Y[1]~70_combout\);

-- Location: LCCOMB_X63_Y38_N6
\SLLcircuit|Y[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~71_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~66_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~66_combout\,
	datad => \SLLcircuit|Y[1]~70_combout\,
	combout => \SLLcircuit|Y[1]~71_combout\);

-- Location: IOIBUF_X85_Y73_N8
\C[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(40),
	o => \C[40]~input_o\);

-- Location: LCCOMB_X67_Y43_N4
\Y~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~300_combout\ = (\Y~82_combout\ & ((\SLLcircuit|Y[1]~71_combout\) # ((\Y~275_combout\)))) # (!\Y~82_combout\ & (((!\Y~275_combout\ & \C[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~71_combout\,
	datac => \Y~275_combout\,
	datad => \C[40]~input_o\,
	combout => \Y~300_combout\);

-- Location: LCCOMB_X67_Y43_N6
\Y~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~301_combout\ = (\Y~300_combout\ & (((\SLLcircuit|Y[1]~69_combout\) # (!\Y~275_combout\)))) # (!\Y~300_combout\ & (\seA_Y3[8]~45_combout\ & (\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[8]~45_combout\,
	datab => \Y~300_combout\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~69_combout\,
	combout => \Y~301_combout\);

-- Location: LCCOMB_X67_Y43_N16
\Y~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~302_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~301_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~301_combout\,
	combout => \Y~302_combout\);

-- Location: IOIBUF_X79_Y73_N1
\C[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(41),
	o => \C[41]~input_o\);

-- Location: LCCOMB_X57_Y42_N10
\SRLcircuit|Y1[2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~56_combout\ = (\A_s~0_combout\ & (\A[9]~input_o\ & ((!\shiftCount[5]~0_combout\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & (\A[9]~input_o\)) # (!\shiftCount[5]~0_combout\ & ((\A[41]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[41]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~56_combout\);

-- Location: LCCOMB_X57_Y42_N4
\SLLcircuit|Y2[5]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~77_combout\ = (\B[4]~input_o\ & (\A[25]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[4]~input_o\ & (((\SRLcircuit|Y1[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[25]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SRLcircuit|Y1[2]~56_combout\,
	combout => \SLLcircuit|Y2[5]~77_combout\);

-- Location: LCCOMB_X57_Y42_N30
\SLLcircuit|Y2[5]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~78_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y1[33]~4_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y2[5]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[5]~77_combout\,
	datad => \SLLcircuit|Y1[33]~4_combout\,
	combout => \SLLcircuit|Y2[5]~78_combout\);

-- Location: LCCOMB_X65_Y43_N2
\SLLcircuit|Y[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~72_combout\ = (\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~72_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[5]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[5]~78_combout\,
	datad => \SLLcircuit|Y2[5]~72_combout\,
	combout => \SLLcircuit|Y[1]~72_combout\);

-- Location: LCCOMB_X67_Y43_N10
\SLLcircuit|Y[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~73_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~68_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~72_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~68_combout\,
	combout => \SLLcircuit|Y[1]~73_combout\);

-- Location: LCCOMB_X67_Y43_N20
\Y~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~303_combout\ = (\Y~82_combout\ & (((\Y~275_combout\) # (\SLLcircuit|Y[1]~73_combout\)))) # (!\Y~82_combout\ & (\C[41]~input_o\ & (!\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \C[41]~input_o\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~73_combout\,
	combout => \Y~303_combout\);

-- Location: LCCOMB_X67_Y43_N14
\Y~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~304_combout\ = (\Y~275_combout\ & ((\Y~303_combout\ & ((\SLLcircuit|Y[1]~71_combout\))) # (!\Y~303_combout\ & (\seA_Y3[9]~50_combout\)))) # (!\Y~275_combout\ & (((\Y~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[9]~50_combout\,
	datac => \SLLcircuit|Y[1]~71_combout\,
	datad => \Y~303_combout\,
	combout => \Y~304_combout\);

-- Location: LCCOMB_X67_Y43_N8
\Y~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~305_combout\ = (\Y~274_combout\) # ((\Y~304_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datab => \Y~304_combout\,
	datac => \ExtWord~input_o\,
	combout => \Y~305_combout\);

-- Location: LCCOMB_X57_Y38_N16
\SRLcircuit|Y1[2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~57_combout\ = (\shiftCount[5]~0_combout\ & (((\A[10]~input_o\ & !\A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\A[10]~input_o\))) # (!\A_s~0_combout\ & (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \A[10]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~57_combout\);

-- Location: LCCOMB_X57_Y38_N6
\SLLcircuit|Y2[6]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~79_combout\ = (\B[4]~input_o\ & (\A[26]~input_o\ & (!\shiftCount[5]~0_combout\ & !\A_s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[26]~input_o\,
	datac => \shiftCount[5]~0_combout\,
	datad => \A_s~0_combout\,
	combout => \SLLcircuit|Y2[6]~79_combout\);

-- Location: LCCOMB_X57_Y38_N2
\SLLcircuit|Y2[6]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~80_combout\ = (!\B[3]~input_o\ & ((\SLLcircuit|Y2[6]~79_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \SRLcircuit|Y1[2]~57_combout\,
	datad => \SLLcircuit|Y2[6]~79_combout\,
	combout => \SLLcircuit|Y2[6]~80_combout\);

-- Location: LCCOMB_X57_Y38_N12
\SLLcircuit|Y2[6]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~81_combout\ = (\SLLcircuit|Y2[6]~80_combout\) # ((\B[3]~input_o\ & \SLLcircuit|Y1[34]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLLcircuit|Y2[6]~80_combout\,
	datad => \SLLcircuit|Y1[34]~6_combout\,
	combout => \SLLcircuit|Y2[6]~81_combout\);

-- Location: LCCOMB_X59_Y38_N30
\SLLcircuit|Y[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~74_combout\ = (\B[2]~input_o\ & ((\SLLcircuit|Y2[6]~73_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[6]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[6]~81_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[6]~73_combout\,
	combout => \SLLcircuit|Y[1]~74_combout\);

-- Location: LCCOMB_X67_Y43_N26
\SLLcircuit|Y[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~75_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~70_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y[1]~74_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~70_combout\,
	combout => \SLLcircuit|Y[1]~75_combout\);

-- Location: IOIBUF_X72_Y73_N8
\C[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(42),
	o => \C[42]~input_o\);

-- Location: LCCOMB_X67_Y43_N12
\Y~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~306_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~75_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & ((\C[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~75_combout\,
	datad => \C[42]~input_o\,
	combout => \Y~306_combout\);

-- Location: LCCOMB_X67_Y43_N22
\Y~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~307_combout\ = (\Y~306_combout\ & (((\SLLcircuit|Y[1]~73_combout\) # (!\Y~275_combout\)))) # (!\Y~306_combout\ & (\seA_Y3[10]~55_combout\ & (\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~306_combout\,
	datab => \seA_Y3[10]~55_combout\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~73_combout\,
	combout => \Y~307_combout\);

-- Location: LCCOMB_X73_Y46_N6
\Y~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~308_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datac => \Y~307_combout\,
	datad => \Y~274_combout\,
	combout => \Y~308_combout\);

-- Location: LCCOMB_X54_Y39_N0
\SLLcircuit|Y2[7]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~82_combout\ = (\A[27]~input_o\ & (\B[4]~input_o\ & (!\A_s~0_combout\ & !\shiftCount[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SLLcircuit|Y2[7]~82_combout\);

-- Location: LCCOMB_X54_Y39_N10
\SRLcircuit|Y1[2]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~58_combout\ = (\A_s~0_combout\ & (\A[11]~input_o\ & ((!\shiftCount[5]~0_combout\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & (\A[11]~input_o\)) # (!\shiftCount[5]~0_combout\ & ((\A[43]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[43]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~58_combout\);

-- Location: LCCOMB_X54_Y39_N28
\SLLcircuit|Y2[7]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~83_combout\ = (!\B[3]~input_o\ & ((\SLLcircuit|Y2[7]~82_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLLcircuit|Y2[7]~82_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~58_combout\,
	combout => \SLLcircuit|Y2[7]~83_combout\);

-- Location: LCCOMB_X65_Y43_N28
\SLLcircuit|Y2[7]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~84_combout\ = (\SLLcircuit|Y2[7]~83_combout\) # ((\SLLcircuit|Y1[35]~8_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[35]~8_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[7]~83_combout\,
	combout => \SLLcircuit|Y2[7]~84_combout\);

-- Location: LCCOMB_X65_Y43_N14
\SLLcircuit|Y[1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~76_combout\ = (\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~74_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[7]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[7]~84_combout\,
	datac => \SLLcircuit|Y2[7]~74_combout\,
	combout => \SLLcircuit|Y[1]~76_combout\);

-- Location: LCCOMB_X67_Y46_N2
\SLLcircuit|Y[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~77_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~72_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~76_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~72_combout\,
	combout => \SLLcircuit|Y[1]~77_combout\);

-- Location: IOIBUF_X115_Y47_N22
\C[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(43),
	o => \C[43]~input_o\);

-- Location: LCCOMB_X67_Y43_N24
\Y~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~309_combout\ = (\Y~82_combout\ & ((\SLLcircuit|Y[1]~77_combout\) # ((\Y~275_combout\)))) # (!\Y~82_combout\ & (((!\Y~275_combout\ & \C[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \SLLcircuit|Y[1]~77_combout\,
	datac => \Y~275_combout\,
	datad => \C[43]~input_o\,
	combout => \Y~309_combout\);

-- Location: LCCOMB_X67_Y43_N2
\Y~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~310_combout\ = (\Y~275_combout\ & ((\Y~309_combout\ & (\SLLcircuit|Y[1]~75_combout\)) # (!\Y~309_combout\ & ((\seA_Y3[11]~60_combout\))))) # (!\Y~275_combout\ & (\Y~309_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \Y~309_combout\,
	datac => \SLLcircuit|Y[1]~75_combout\,
	datad => \seA_Y3[11]~60_combout\,
	combout => \Y~310_combout\);

-- Location: LCCOMB_X67_Y43_N28
\Y~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~311_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~310_combout\,
	combout => \Y~311_combout\);

-- Location: LCCOMB_X58_Y42_N6
\SRLcircuit|Y1[2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~59_combout\ = (\A_s~0_combout\ & (((\A[12]~input_o\ & !\shiftCount[5]~0_combout\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & ((\A[12]~input_o\))) # (!\shiftCount[5]~0_combout\ & (\A[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \A[12]~input_o\,
	datac => \A_s~0_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SRLcircuit|Y1[2]~59_combout\);

-- Location: LCCOMB_X58_Y42_N24
\SLLcircuit|Y2[4]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~85_combout\ = (\B[4]~input_o\ & (\A[28]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\))) # (!\B[4]~input_o\ & (((\SRLcircuit|Y1[2]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[28]~input_o\,
	datac => \SLLcircuit|Y1[16]~0_combout\,
	datad => \SRLcircuit|Y1[2]~59_combout\,
	combout => \SLLcircuit|Y2[4]~85_combout\);

-- Location: LCCOMB_X58_Y42_N18
\SLLcircuit|Y2[4]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~86_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y1[36]~10_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y2[4]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[36]~10_combout\,
	datab => \B[3]~input_o\,
	datad => \SLLcircuit|Y2[4]~85_combout\,
	combout => \SLLcircuit|Y2[4]~86_combout\);

-- Location: LCCOMB_X62_Y38_N0
\SLLcircuit|Y[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~78_combout\ = (\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~76_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[4]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[4]~86_combout\,
	datad => \SLLcircuit|Y2[4]~76_combout\,
	combout => \SLLcircuit|Y[1]~78_combout\);

-- Location: LCCOMB_X67_Y43_N30
\SLLcircuit|Y[1]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~79_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~74_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y[1]~74_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~78_combout\,
	combout => \SLLcircuit|Y[1]~79_combout\);

-- Location: IOIBUF_X115_Y53_N15
\C[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(44),
	o => \C[44]~input_o\);

-- Location: LCCOMB_X67_Y46_N4
\Y~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~312_combout\ = (\Y~275_combout\ & (\Y~82_combout\)) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~79_combout\)) # (!\Y~82_combout\ & ((\C[44]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~79_combout\,
	datad => \C[44]~input_o\,
	combout => \Y~312_combout\);

-- Location: LCCOMB_X67_Y46_N6
\Y~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~313_combout\ = (\Y~275_combout\ & ((\Y~312_combout\ & ((\SLLcircuit|Y[1]~77_combout\))) # (!\Y~312_combout\ & (\seA_Y3[12]~65_combout\)))) # (!\Y~275_combout\ & (((\Y~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[12]~65_combout\,
	datac => \Y~312_combout\,
	datad => \SLLcircuit|Y[1]~77_combout\,
	combout => \Y~313_combout\);

-- Location: LCCOMB_X67_Y46_N24
\Y~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~314_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~313_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~313_combout\,
	combout => \Y~314_combout\);

-- Location: LCCOMB_X58_Y39_N26
\SRLcircuit|Y1[2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRLcircuit|Y1[2]~60_combout\ = (\shiftCount[5]~0_combout\ & (((\A[13]~input_o\ & !\A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\A[13]~input_o\))) # (!\A_s~0_combout\ & (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \shiftCount[5]~0_combout\,
	datac => \A[13]~input_o\,
	datad => \A_s~0_combout\,
	combout => \SRLcircuit|Y1[2]~60_combout\);

-- Location: LCCOMB_X58_Y39_N20
\SLLcircuit|Y2[5]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~87_combout\ = (\B[4]~input_o\ & (((!\SLLcircuit|Y1[16]~0_combout\ & \A[29]~input_o\)))) # (!\B[4]~input_o\ & (\SRLcircuit|Y1[2]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~60_combout\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \A[29]~input_o\,
	combout => \SLLcircuit|Y2[5]~87_combout\);

-- Location: LCCOMB_X65_Y43_N24
\SLLcircuit|Y2[5]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~88_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y1[37]~12_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y2[5]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y1[37]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y2[5]~87_combout\,
	combout => \SLLcircuit|Y2[5]~88_combout\);

-- Location: LCCOMB_X65_Y43_N26
\SLLcircuit|Y[1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~80_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[5]~78_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[5]~78_combout\,
	datad => \SLLcircuit|Y2[5]~88_combout\,
	combout => \SLLcircuit|Y[1]~80_combout\);

-- Location: LCCOMB_X67_Y46_N26
\SLLcircuit|Y[1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~81_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~76_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~80_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~76_combout\,
	combout => \SLLcircuit|Y[1]~81_combout\);

-- Location: IOIBUF_X94_Y73_N8
\C[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(45),
	o => \C[45]~input_o\);

-- Location: LCCOMB_X67_Y46_N28
\Y~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~315_combout\ = (\Y~275_combout\ & (\Y~82_combout\)) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~81_combout\)) # (!\Y~82_combout\ & ((\C[45]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \Y~82_combout\,
	datac => \SLLcircuit|Y[1]~81_combout\,
	datad => \C[45]~input_o\,
	combout => \Y~315_combout\);

-- Location: LCCOMB_X67_Y46_N22
\Y~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~316_combout\ = (\Y~275_combout\ & ((\Y~315_combout\ & ((\SLLcircuit|Y[1]~79_combout\))) # (!\Y~315_combout\ & (\seA_Y3[13]~70_combout\)))) # (!\Y~275_combout\ & (((\Y~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[13]~70_combout\,
	datac => \SLLcircuit|Y[1]~79_combout\,
	datad => \Y~315_combout\,
	combout => \Y~316_combout\);

-- Location: LCCOMB_X67_Y46_N0
\Y~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~317_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y~316_combout\,
	combout => \Y~317_combout\);

-- Location: LCCOMB_X55_Y38_N26
\SLLcircuit|Y1[46]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[46]~17_combout\ = (\A_s~0_combout\ & (((\A[14]~input_o\ & !\shiftCount[5]~0_combout\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & ((\A[14]~input_o\))) # (!\shiftCount[5]~0_combout\ & (\A[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \A_s~0_combout\,
	datac => \A[14]~input_o\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SLLcircuit|Y1[46]~17_combout\);

-- Location: LCCOMB_X59_Y38_N0
\SLLcircuit|Y1[46]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[46]~18_combout\ = (\B[4]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & ((\A[30]~input_o\)))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[46]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \SLLcircuit|Y1[46]~17_combout\,
	datad => \A[30]~input_o\,
	combout => \SLLcircuit|Y1[46]~18_combout\);

-- Location: LCCOMB_X59_Y38_N26
\SLLcircuit|Y2[50]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[50]~89_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y1[38]~14_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y1[46]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[38]~14_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y1[46]~18_combout\,
	combout => \SLLcircuit|Y2[50]~89_combout\);

-- Location: LCCOMB_X62_Y38_N10
\SLLcircuit|Y2[46]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[46]~90_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[6]~81_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[50]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~81_combout\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[50]~89_combout\,
	combout => \SLLcircuit|Y2[46]~90_combout\);

-- Location: LCCOMB_X62_Y38_N20
\SLLcircuit|Y[1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~82_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~78_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[46]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[46]~90_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~78_combout\,
	combout => \SLLcircuit|Y[1]~82_combout\);

-- Location: IOIBUF_X87_Y73_N8
\C[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(46),
	o => \C[46]~input_o\);

-- Location: LCCOMB_X67_Y46_N18
\Y~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~318_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~82_combout\)) # (!\Y~82_combout\ & ((\C[46]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \SLLcircuit|Y[1]~82_combout\,
	datac => \Y~82_combout\,
	datad => \C[46]~input_o\,
	combout => \Y~318_combout\);

-- Location: LCCOMB_X67_Y46_N20
\Y~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~319_combout\ = (\Y~275_combout\ & ((\Y~318_combout\ & ((\SLLcircuit|Y[1]~81_combout\))) # (!\Y~318_combout\ & (\seA_Y3[14]~75_combout\)))) # (!\Y~275_combout\ & (((\Y~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[14]~75_combout\,
	datac => \SLLcircuit|Y[1]~81_combout\,
	datad => \Y~318_combout\,
	combout => \Y~319_combout\);

-- Location: LCCOMB_X67_Y46_N30
\Y~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~320_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~319_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~319_combout\,
	combout => \Y~320_combout\);

-- Location: LCCOMB_X56_Y40_N24
\SLLcircuit|Y1[47]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[47]~19_combout\ = (\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\A[15]~input_o\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\A[15]~input_o\)) # (!\A_s~0_combout\ & ((\A[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \A[15]~input_o\,
	datad => \A[47]~input_o\,
	combout => \SLLcircuit|Y1[47]~19_combout\);

-- Location: LCCOMB_X56_Y40_N2
\SLLcircuit|Y1[47]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[47]~20_combout\ = (\B[4]~input_o\ & (!\SLLcircuit|Y1[16]~0_combout\ & (\A[31]~input_o\))) # (!\B[4]~input_o\ & (((\SLLcircuit|Y1[47]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \SLLcircuit|Y1[16]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \SLLcircuit|Y1[47]~19_combout\,
	combout => \SLLcircuit|Y1[47]~20_combout\);

-- Location: LCCOMB_X65_Y43_N12
\SLLcircuit|Y2[51]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[51]~91_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y1[39]~16_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[47]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[47]~20_combout\,
	datab => \SLLcircuit|Y1[39]~16_combout\,
	datac => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[51]~91_combout\);

-- Location: LCCOMB_X65_Y43_N6
\SLLcircuit|Y2[47]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[47]~92_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[7]~84_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[51]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \SLLcircuit|Y2[7]~84_combout\,
	datad => \SLLcircuit|Y2[51]~91_combout\,
	combout => \SLLcircuit|Y2[47]~92_combout\);

-- Location: LCCOMB_X67_Y46_N8
\SLLcircuit|Y[1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~83_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~80_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[47]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~80_combout\,
	datab => \SLLcircuit|Y2[47]~92_combout\,
	datac => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~83_combout\);

-- Location: IOIBUF_X87_Y73_N1
\C[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(47),
	o => \C[47]~input_o\);

-- Location: LCCOMB_X67_Y46_N10
\Y~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~321_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~83_combout\)) # (!\Y~82_combout\ & ((\C[47]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \SLLcircuit|Y[1]~83_combout\,
	datac => \Y~82_combout\,
	datad => \C[47]~input_o\,
	combout => \Y~321_combout\);

-- Location: LCCOMB_X67_Y46_N12
\Y~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~322_combout\ = (\Y~275_combout\ & ((\Y~321_combout\ & (\SLLcircuit|Y[1]~82_combout\)) # (!\Y~321_combout\ & ((\seA_Y3[15]~80_combout\))))) # (!\Y~275_combout\ & (((\Y~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \SLLcircuit|Y[1]~82_combout\,
	datac => \seA_Y3[15]~80_combout\,
	datad => \Y~321_combout\,
	combout => \Y~322_combout\);

-- Location: LCCOMB_X67_Y46_N14
\Y~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~323_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y~322_combout\,
	combout => \Y~323_combout\);

-- Location: IOIBUF_X67_Y0_N1
\C[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(48),
	o => \C[48]~input_o\);

-- Location: LCCOMB_X56_Y44_N14
\SLLcircuit|Y1[48]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[48]~21_combout\ = (\B[4]~input_o\ & ((\A[32]~input_o\))) # (!\B[4]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[4]~input_o\,
	datad => \A[32]~input_o\,
	combout => \SLLcircuit|Y1[48]~21_combout\);

-- Location: LCCOMB_X57_Y44_N4
\SLLcircuit|Y1[48]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[48]~22_combout\ = (\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[4]~30_combout\ & (!\A_s~0_combout\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\SLLcircuit|Y2[4]~30_combout\)) # (!\A_s~0_combout\ & 
-- ((\SLLcircuit|Y1[48]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~30_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \A_s~0_combout\,
	datad => \SLLcircuit|Y1[48]~21_combout\,
	combout => \SLLcircuit|Y1[48]~22_combout\);

-- Location: LCCOMB_X57_Y44_N22
\SLLcircuit|Y2[4]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~93_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[4]~75_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y1[48]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~75_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y1[48]~22_combout\,
	combout => \SLLcircuit|Y2[4]~93_combout\);

-- Location: LCCOMB_X62_Y38_N6
\SLLcircuit|Y[1]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~84_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~86_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~86_combout\,
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[4]~93_combout\,
	combout => \SLLcircuit|Y[1]~84_combout\);

-- Location: LCCOMB_X62_Y38_N16
\SLLcircuit|Y[1]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~85_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[46]~90_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~84_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[46]~90_combout\,
	combout => \SLLcircuit|Y[1]~85_combout\);

-- Location: LCCOMB_X65_Y40_N24
\Y~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~324_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & ((\SLLcircuit|Y[1]~85_combout\))) # (!\Y~82_combout\ & (\C[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \C[48]~input_o\,
	datac => \Y~82_combout\,
	datad => \SLLcircuit|Y[1]~85_combout\,
	combout => \Y~324_combout\);

-- Location: LCCOMB_X65_Y40_N10
\Y~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~325_combout\ = (\Y~275_combout\ & ((\Y~324_combout\ & ((\SLLcircuit|Y[1]~83_combout\))) # (!\Y~324_combout\ & (\seA_Y3[16]~85_combout\)))) # (!\Y~275_combout\ & (((\Y~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[16]~85_combout\,
	datac => \SLLcircuit|Y[1]~83_combout\,
	datad => \Y~324_combout\,
	combout => \Y~325_combout\);

-- Location: LCCOMB_X70_Y41_N12
\Y~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~326_combout\ = (\Y~274_combout\) # ((\Y~325_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~325_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~326_combout\);

-- Location: IOIBUF_X72_Y73_N15
\C[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(49),
	o => \C[49]~input_o\);

-- Location: LCCOMB_X57_Y42_N8
\SLLcircuit|Y1[49]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[49]~23_combout\ = (\B[4]~input_o\ & (\A[33]~input_o\)) # (!\B[4]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLLcircuit|Y1[49]~23_combout\);

-- Location: LCCOMB_X57_Y42_N26
\SLLcircuit|Y1[49]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[49]~24_combout\ = (\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & ((\SLLcircuit|Y2[5]~34_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & ((\SLLcircuit|Y2[5]~34_combout\))) # (!\A_s~0_combout\ & 
-- (\SLLcircuit|Y1[49]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \SLLcircuit|Y1[49]~23_combout\,
	datad => \SLLcircuit|Y2[5]~34_combout\,
	combout => \SLLcircuit|Y1[49]~24_combout\);

-- Location: LCCOMB_X57_Y42_N20
\SLLcircuit|Y2[5]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~94_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[5]~77_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[49]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[49]~24_combout\,
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[5]~77_combout\,
	combout => \SLLcircuit|Y2[5]~94_combout\);

-- Location: LCCOMB_X61_Y39_N0
\SLLcircuit|Y[1]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~86_combout\ = (\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~88_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[5]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~94_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[5]~88_combout\,
	combout => \SLLcircuit|Y[1]~86_combout\);

-- Location: LCCOMB_X66_Y41_N12
\SLLcircuit|Y[1]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~87_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[47]~92_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLLcircuit|Y[1]~86_combout\,
	datad => \SLLcircuit|Y2[47]~92_combout\,
	combout => \SLLcircuit|Y[1]~87_combout\);

-- Location: LCCOMB_X66_Y41_N30
\Y~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~327_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & ((\SLLcircuit|Y[1]~87_combout\))) # (!\Y~82_combout\ & (\C[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[49]~input_o\,
	datab => \Y~275_combout\,
	datac => \Y~82_combout\,
	datad => \SLLcircuit|Y[1]~87_combout\,
	combout => \Y~327_combout\);

-- Location: LCCOMB_X65_Y40_N4
\Y~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~328_combout\ = (\Y~275_combout\ & ((\Y~327_combout\ & ((\SLLcircuit|Y[1]~85_combout\))) # (!\Y~327_combout\ & (\seA_Y3[17]~90_combout\)))) # (!\Y~275_combout\ & (((\Y~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[17]~90_combout\,
	datac => \Y~327_combout\,
	datad => \SLLcircuit|Y[1]~85_combout\,
	combout => \Y~328_combout\);

-- Location: LCCOMB_X70_Y41_N6
\Y~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~329_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~328_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~328_combout\,
	datad => \Y~274_combout\,
	combout => \Y~329_combout\);

-- Location: IOIBUF_X83_Y73_N8
\C[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(50),
	o => \C[50]~input_o\);

-- Location: LCCOMB_X57_Y38_N30
\SLLcircuit|Y2[6]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~95_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[6]~79_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \SRLcircuit|Y1[2]~57_combout\,
	datad => \SLLcircuit|Y2[6]~79_combout\,
	combout => \SLLcircuit|Y2[6]~95_combout\);

-- Location: LCCOMB_X57_Y38_N0
\SLLcircuit|Y1[50]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[50]~25_combout\ = (\B[4]~input_o\ & (\A[34]~input_o\)) # (!\B[4]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[4]~input_o\,
	combout => \SLLcircuit|Y1[50]~25_combout\);

-- Location: LCCOMB_X57_Y38_N18
\SLLcircuit|Y1[50]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[50]~26_combout\ = (\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[6]~37_combout\ & ((!\A_s~0_combout\)))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\SLLcircuit|Y2[6]~37_combout\)) # (!\A_s~0_combout\ & 
-- ((\SLLcircuit|Y1[50]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~37_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \SLLcircuit|Y1[50]~25_combout\,
	datad => \A_s~0_combout\,
	combout => \SLLcircuit|Y1[50]~26_combout\);

-- Location: LCCOMB_X57_Y38_N20
\SLLcircuit|Y2[6]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~96_combout\ = (\SLLcircuit|Y2[6]~95_combout\) # ((!\B[3]~input_o\ & \SLLcircuit|Y1[50]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[6]~95_combout\,
	datad => \SLLcircuit|Y1[50]~26_combout\,
	combout => \SLLcircuit|Y2[6]~96_combout\);

-- Location: LCCOMB_X62_Y38_N2
\SLLcircuit|Y2[50]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[50]~97_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[50]~89_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[6]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[50]~89_combout\,
	datad => \SLLcircuit|Y2[6]~96_combout\,
	combout => \SLLcircuit|Y2[50]~97_combout\);

-- Location: LCCOMB_X62_Y38_N12
\SLLcircuit|Y[1]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~88_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~84_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[50]~97_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[50]~97_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y[1]~84_combout\,
	combout => \SLLcircuit|Y[1]~88_combout\);

-- Location: LCCOMB_X66_Y41_N24
\Y~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~330_combout\ = (\Y~82_combout\ & (((\SLLcircuit|Y[1]~88_combout\) # (\Y~275_combout\)))) # (!\Y~82_combout\ & (\C[50]~input_o\ & ((!\Y~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \C[50]~input_o\,
	datac => \SLLcircuit|Y[1]~88_combout\,
	datad => \Y~275_combout\,
	combout => \Y~330_combout\);

-- Location: LCCOMB_X66_Y41_N10
\Y~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~331_combout\ = (\Y~330_combout\ & ((\SLLcircuit|Y[1]~87_combout\) # ((!\Y~275_combout\)))) # (!\Y~330_combout\ & (((\Y~275_combout\ & \seA_Y3[18]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~87_combout\,
	datab => \Y~330_combout\,
	datac => \Y~275_combout\,
	datad => \seA_Y3[18]~95_combout\,
	combout => \Y~331_combout\);

-- Location: LCCOMB_X70_Y41_N0
\Y~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~332_combout\ = (\Y~274_combout\) # ((\Y~331_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~331_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~332_combout\);

-- Location: LCCOMB_X54_Y39_N22
\SLLcircuit|Y2[7]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~98_combout\ = (\B[3]~input_o\ & ((\SLLcircuit|Y2[7]~82_combout\) # ((!\B[4]~input_o\ & \SRLcircuit|Y1[2]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLLcircuit|Y2[7]~82_combout\,
	datac => \B[4]~input_o\,
	datad => \SRLcircuit|Y1[2]~58_combout\,
	combout => \SLLcircuit|Y2[7]~98_combout\);

-- Location: LCCOMB_X54_Y43_N28
\SLLcircuit|Y1[51]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[51]~27_combout\ = (\B[4]~input_o\ & ((\A[35]~input_o\))) # (!\B[4]~input_o\ & (\A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[35]~input_o\,
	combout => \SLLcircuit|Y1[51]~27_combout\);

-- Location: LCCOMB_X54_Y43_N14
\SLLcircuit|Y1[51]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[51]~28_combout\ = (\A_s~0_combout\ & (\SLLcircuit|Y2[7]~40_combout\ & (!\shiftCount[5]~0_combout\))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[7]~40_combout\)) # (!\shiftCount[5]~0_combout\ & 
-- ((\SLLcircuit|Y1[51]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \SLLcircuit|Y2[7]~40_combout\,
	datac => \shiftCount[5]~0_combout\,
	datad => \SLLcircuit|Y1[51]~27_combout\,
	combout => \SLLcircuit|Y1[51]~28_combout\);

-- Location: LCCOMB_X61_Y39_N2
\SLLcircuit|Y2[7]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~99_combout\ = (\SLLcircuit|Y2[7]~98_combout\) # ((\SLLcircuit|Y1[51]~28_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[7]~98_combout\,
	datab => \SLLcircuit|Y1[51]~28_combout\,
	datac => \B[3]~input_o\,
	combout => \SLLcircuit|Y2[7]~99_combout\);

-- Location: LCCOMB_X61_Y39_N28
\SLLcircuit|Y2[51]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[51]~100_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[51]~91_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[7]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[51]~91_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[7]~99_combout\,
	combout => \SLLcircuit|Y2[51]~100_combout\);

-- Location: LCCOMB_X66_Y41_N4
\SLLcircuit|Y[1]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~89_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y[1]~86_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y2[51]~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[51]~100_combout\,
	datac => \SLLcircuit|Y[1]~86_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~89_combout\);

-- Location: IOIBUF_X98_Y73_N15
\C[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(51),
	o => \C[51]~input_o\);

-- Location: LCCOMB_X66_Y41_N22
\Y~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~333_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~89_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & ((\C[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~89_combout\,
	datad => \C[51]~input_o\,
	combout => \Y~333_combout\);

-- Location: LCCOMB_X66_Y41_N8
\Y~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~334_combout\ = (\Y~333_combout\ & ((\SLLcircuit|Y[1]~88_combout\) # ((!\Y~275_combout\)))) # (!\Y~333_combout\ & (((\Y~275_combout\ & \seA_Y3[19]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~333_combout\,
	datab => \SLLcircuit|Y[1]~88_combout\,
	datac => \Y~275_combout\,
	datad => \seA_Y3[19]~100_combout\,
	combout => \Y~334_combout\);

-- Location: LCCOMB_X70_Y41_N18
\Y~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~335_combout\ = (\Y~274_combout\) # ((\Y~334_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~334_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~335_combout\);

-- Location: IOIBUF_X115_Y34_N22
\C[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(52),
	o => \C[52]~input_o\);

-- Location: LCCOMB_X54_Y42_N20
\SLLcircuit|Y1[52]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[52]~29_combout\ = (\B[4]~input_o\ & (\A[36]~input_o\)) # (!\B[4]~input_o\ & ((\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \A[36]~input_o\,
	datad => \A[52]~input_o\,
	combout => \SLLcircuit|Y1[52]~29_combout\);

-- Location: LCCOMB_X58_Y42_N20
\SLLcircuit|Y1[52]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[52]~30_combout\ = (\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[4]~43_combout\ & (!\A_s~0_combout\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\SLLcircuit|Y2[4]~43_combout\)) # (!\A_s~0_combout\ & 
-- ((\SLLcircuit|Y1[52]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SLLcircuit|Y2[4]~43_combout\,
	datac => \A_s~0_combout\,
	datad => \SLLcircuit|Y1[52]~29_combout\,
	combout => \SLLcircuit|Y1[52]~30_combout\);

-- Location: LCCOMB_X58_Y42_N22
\SLLcircuit|Y2[4]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~101_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[4]~85_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y1[52]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \SLLcircuit|Y2[4]~85_combout\,
	datad => \SLLcircuit|Y1[52]~30_combout\,
	combout => \SLLcircuit|Y2[4]~101_combout\);

-- Location: LCCOMB_X62_Y38_N30
\SLLcircuit|Y[1]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~90_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~93_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~101_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~93_combout\,
	datab => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[4]~101_combout\,
	combout => \SLLcircuit|Y[1]~90_combout\);

-- Location: LCCOMB_X62_Y38_N8
\SLLcircuit|Y[1]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~91_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[50]~97_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~90_combout\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[50]~97_combout\,
	combout => \SLLcircuit|Y[1]~91_combout\);

-- Location: LCCOMB_X66_Y41_N26
\Y~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~336_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & ((\SLLcircuit|Y[1]~91_combout\))) # (!\Y~82_combout\ & (\C[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[52]~input_o\,
	datab => \Y~275_combout\,
	datac => \Y~82_combout\,
	datad => \SLLcircuit|Y[1]~91_combout\,
	combout => \Y~336_combout\);

-- Location: LCCOMB_X66_Y41_N28
\Y~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~337_combout\ = (\Y~336_combout\ & (((\SLLcircuit|Y[1]~89_combout\)) # (!\Y~275_combout\))) # (!\Y~336_combout\ & (\Y~275_combout\ & ((\seA_Y3[20]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~336_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~89_combout\,
	datad => \seA_Y3[20]~105_combout\,
	combout => \Y~337_combout\);

-- Location: LCCOMB_X70_Y41_N20
\Y~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~338_combout\ = (\Y~274_combout\) # ((\Y~337_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~274_combout\,
	datac => \Y~337_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~338_combout\);

-- Location: LCCOMB_X55_Y43_N24
\SLLcircuit|Y1[53]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[53]~31_combout\ = (\B[4]~input_o\ & (\A[37]~input_o\)) # (!\B[4]~input_o\ & ((\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[53]~input_o\,
	combout => \SLLcircuit|Y1[53]~31_combout\);

-- Location: LCCOMB_X58_Y39_N6
\SLLcircuit|Y1[53]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[53]~32_combout\ = (\A_s~0_combout\ & (!\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[5]~45_combout\))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[5]~45_combout\)) # (!\shiftCount[5]~0_combout\ & 
-- ((\SLLcircuit|Y1[53]~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_s~0_combout\,
	datab => \shiftCount[5]~0_combout\,
	datac => \SLLcircuit|Y2[5]~45_combout\,
	datad => \SLLcircuit|Y1[53]~31_combout\,
	combout => \SLLcircuit|Y1[53]~32_combout\);

-- Location: LCCOMB_X58_Y39_N16
\SLLcircuit|Y2[5]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~102_combout\ = (\B[3]~input_o\ & (\SLLcircuit|Y2[5]~87_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y1[53]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[5]~87_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y1[53]~32_combout\,
	combout => \SLLcircuit|Y2[5]~102_combout\);

-- Location: LCCOMB_X61_Y39_N6
\SLLcircuit|Y[1]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~92_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[5]~94_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~94_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[5]~102_combout\,
	combout => \SLLcircuit|Y[1]~92_combout\);

-- Location: LCCOMB_X66_Y39_N12
\SLLcircuit|Y[1]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~93_combout\ = (\B[1]~input_o\ & ((\SLLcircuit|Y2[51]~100_combout\))) # (!\B[1]~input_o\ & (\SLLcircuit|Y[1]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~92_combout\,
	datab => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[51]~100_combout\,
	combout => \SLLcircuit|Y[1]~93_combout\);

-- Location: IOIBUF_X67_Y0_N15
\C[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(53),
	o => \C[53]~input_o\);

-- Location: LCCOMB_X66_Y39_N30
\Y~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~339_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~93_combout\)) # (!\Y~82_combout\ & ((\C[53]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~93_combout\,
	datab => \Y~275_combout\,
	datac => \Y~82_combout\,
	datad => \C[53]~input_o\,
	combout => \Y~339_combout\);

-- Location: LCCOMB_X66_Y39_N24
\Y~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~340_combout\ = (\Y~339_combout\ & (((\SLLcircuit|Y[1]~91_combout\)) # (!\Y~275_combout\))) # (!\Y~339_combout\ & (\Y~275_combout\ & ((\seA_Y3[21]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~339_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~91_combout\,
	datad => \seA_Y3[21]~110_combout\,
	combout => \Y~340_combout\);

-- Location: LCCOMB_X70_Y41_N30
\Y~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~341_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~340_combout\,
	datad => \Y~274_combout\,
	combout => \Y~341_combout\);

-- Location: LCCOMB_X55_Y41_N10
\SLLcircuit|Y1[54]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[54]~33_combout\ = (\B[4]~input_o\ & ((\A[38]~input_o\))) # (!\B[4]~input_o\ & (\A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[54]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[38]~input_o\,
	combout => \SLLcircuit|Y1[54]~33_combout\);

-- Location: LCCOMB_X59_Y38_N12
\SLLcircuit|Y1[54]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[54]~34_combout\ = (\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[6]~47_combout\ & (!\A_s~0_combout\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\SLLcircuit|Y2[6]~47_combout\)) # (!\A_s~0_combout\ & 
-- ((\SLLcircuit|Y1[54]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SLLcircuit|Y2[6]~47_combout\,
	datac => \A_s~0_combout\,
	datad => \SLLcircuit|Y1[54]~33_combout\,
	combout => \SLLcircuit|Y1[54]~34_combout\);

-- Location: LCCOMB_X59_Y38_N14
\SLLcircuit|Y2[54]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[54]~103_combout\ = (\SLLcircuit|Y1[54]~34_combout\ & ((\SRAcircuit|Y2[34]~24_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SLLcircuit|Y1[46]~18_combout\)))) # (!\SLLcircuit|Y1[54]~34_combout\ & (((\SRAcircuit|Y2[34]~25_combout\ & 
-- \SLLcircuit|Y1[46]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[54]~34_combout\,
	datab => \SRAcircuit|Y2[34]~24_combout\,
	datac => \SRAcircuit|Y2[34]~25_combout\,
	datad => \SLLcircuit|Y1[46]~18_combout\,
	combout => \SLLcircuit|Y2[54]~103_combout\);

-- Location: LCCOMB_X62_Y38_N26
\SLLcircuit|Y2[54]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[54]~104_combout\ = (\SLLcircuit|Y2[54]~103_combout\) # ((\B[2]~input_o\ & \SLLcircuit|Y2[6]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[54]~103_combout\,
	datab => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[6]~96_combout\,
	combout => \SLLcircuit|Y2[54]~104_combout\);

-- Location: LCCOMB_X62_Y38_N28
\SLLcircuit|Y[1]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~94_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~90_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[54]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~90_combout\,
	datab => \B[1]~input_o\,
	datac => \SLLcircuit|Y2[54]~104_combout\,
	combout => \SLLcircuit|Y[1]~94_combout\);

-- Location: IOIBUF_X67_Y0_N8
\C[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(54),
	o => \C[54]~input_o\);

-- Location: LCCOMB_X66_Y39_N18
\Y~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~342_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~94_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & ((\C[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~94_combout\,
	datad => \C[54]~input_o\,
	combout => \Y~342_combout\);

-- Location: LCCOMB_X66_Y39_N20
\Y~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~343_combout\ = (\Y~342_combout\ & ((\SLLcircuit|Y[1]~93_combout\) # ((!\Y~275_combout\)))) # (!\Y~342_combout\ & (((\seA_Y3[22]~115_combout\ & \Y~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~93_combout\,
	datab => \Y~342_combout\,
	datac => \seA_Y3[22]~115_combout\,
	datad => \Y~275_combout\,
	combout => \Y~343_combout\);

-- Location: LCCOMB_X70_Y41_N8
\Y~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~344_combout\ = (\Y~274_combout\) # ((\Y~343_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~274_combout\,
	datac => \Y~343_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~344_combout\);

-- Location: LCCOMB_X56_Y36_N10
\SLLcircuit|Y1[55]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[55]~35_combout\ = (\B[4]~input_o\ & ((\A[39]~input_o\))) # (!\B[4]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[39]~input_o\,
	combout => \SLLcircuit|Y1[55]~35_combout\);

-- Location: LCCOMB_X56_Y36_N20
\SLLcircuit|Y1[55]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y1[55]~36_combout\ = (\shiftCount[5]~0_combout\ & (\SLLcircuit|Y2[7]~49_combout\ & (!\A_s~0_combout\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\SLLcircuit|Y2[7]~49_combout\)) # (!\A_s~0_combout\ & 
-- ((\SLLcircuit|Y1[55]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \SLLcircuit|Y2[7]~49_combout\,
	datac => \A_s~0_combout\,
	datad => \SLLcircuit|Y1[55]~35_combout\,
	combout => \SLLcircuit|Y1[55]~36_combout\);

-- Location: LCCOMB_X61_Y39_N8
\SLLcircuit|Y2[55]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[55]~105_combout\ = (\SRAcircuit|Y2[34]~24_combout\ & ((\SLLcircuit|Y1[55]~36_combout\) # ((\SRAcircuit|Y2[34]~25_combout\ & \SLLcircuit|Y1[47]~20_combout\)))) # (!\SRAcircuit|Y2[34]~24_combout\ & (\SRAcircuit|Y2[34]~25_combout\ & 
-- (\SLLcircuit|Y1[47]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAcircuit|Y2[34]~24_combout\,
	datab => \SRAcircuit|Y2[34]~25_combout\,
	datac => \SLLcircuit|Y1[47]~20_combout\,
	datad => \SLLcircuit|Y1[55]~36_combout\,
	combout => \SLLcircuit|Y2[55]~105_combout\);

-- Location: LCCOMB_X61_Y39_N18
\SLLcircuit|Y2[55]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[55]~106_combout\ = (\SLLcircuit|Y2[55]~105_combout\) # ((\B[2]~input_o\ & \SLLcircuit|Y2[7]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[55]~105_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[7]~99_combout\,
	combout => \SLLcircuit|Y2[55]~106_combout\);

-- Location: LCCOMB_X66_Y39_N22
\SLLcircuit|Y[1]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~95_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y[1]~92_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y2[55]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~92_combout\,
	datab => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[55]~106_combout\,
	combout => \SLLcircuit|Y[1]~95_combout\);

-- Location: IOIBUF_X79_Y0_N1
\C[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(55),
	o => \C[55]~input_o\);

-- Location: LCCOMB_X66_Y39_N0
\Y~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~345_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~95_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & ((\C[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~95_combout\,
	datad => \C[55]~input_o\,
	combout => \Y~345_combout\);

-- Location: LCCOMB_X66_Y39_N2
\Y~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~346_combout\ = (\Y~275_combout\ & ((\Y~345_combout\ & ((\SLLcircuit|Y[1]~94_combout\))) # (!\Y~345_combout\ & (\seA_Y3[23]~120_combout\)))) # (!\Y~275_combout\ & (((\Y~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[23]~120_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~94_combout\,
	datad => \Y~345_combout\,
	combout => \Y~346_combout\);

-- Location: LCCOMB_X70_Y41_N10
\Y~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~347_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~346_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \Y~274_combout\,
	datad => \Y~346_combout\,
	combout => \Y~347_combout\);

-- Location: LCCOMB_X57_Y44_N18
\SLLcircuit|Y2[4]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~107_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[2]~33_combout\ & (\A_Y1[56]~21_combout\)) # (!\SRLcircuit|Y2[2]~33_combout\ & 
-- ((\SRLcircuit|Y1[2]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[56]~21_combout\,
	datac => \SRLcircuit|Y2[2]~33_combout\,
	datad => \SRLcircuit|Y1[2]~55_combout\,
	combout => \SLLcircuit|Y2[4]~107_combout\);

-- Location: LCCOMB_X57_Y44_N16
\A_Y1[24]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[24]~31_combout\ = (\A[24]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \A[24]~input_o\,
	combout => \A_Y1[24]~31_combout\);

-- Location: LCCOMB_X57_Y44_N28
\SLLcircuit|Y2[4]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[4]~108_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\SLLcircuit|Y2[4]~107_combout\ & (\SLLcircuit|Y1[48]~22_combout\)) # (!\SLLcircuit|Y2[4]~107_combout\ & ((\A_Y1[24]~31_combout\))))) # (!\SRLcircuit|Y2[2]~32_combout\ & 
-- (\SLLcircuit|Y2[4]~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \SLLcircuit|Y2[4]~107_combout\,
	datac => \SLLcircuit|Y1[48]~22_combout\,
	datad => \A_Y1[24]~31_combout\,
	combout => \SLLcircuit|Y2[4]~108_combout\);

-- Location: LCCOMB_X62_Y38_N14
\SLLcircuit|Y[1]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~96_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~101_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[4]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~108_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[4]~101_combout\,
	combout => \SLLcircuit|Y[1]~96_combout\);

-- Location: LCCOMB_X62_Y38_N24
\SLLcircuit|Y[1]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~97_combout\ = (\SLLcircuit|Y[1]~96_combout\) # ((\SLLcircuit|Y2[54]~104_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[54]~104_combout\,
	datab => \SLLcircuit|Y[1]~96_combout\,
	datac => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~97_combout\);

-- Location: IOIBUF_X74_Y0_N15
\C[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(56),
	o => \C[56]~input_o\);

-- Location: LCCOMB_X66_Y39_N28
\Y~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~348_combout\ = (\Y~82_combout\ & ((\Y~275_combout\) # ((\SLLcircuit|Y[1]~97_combout\)))) # (!\Y~82_combout\ & (!\Y~275_combout\ & ((\C[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \SLLcircuit|Y[1]~97_combout\,
	datad => \C[56]~input_o\,
	combout => \Y~348_combout\);

-- Location: LCCOMB_X66_Y39_N6
\Y~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~349_combout\ = (\Y~275_combout\ & ((\Y~348_combout\ & (\SLLcircuit|Y[1]~95_combout\)) # (!\Y~348_combout\ & ((\seA_Y3[24]~125_combout\))))) # (!\Y~275_combout\ & (((\Y~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~95_combout\,
	datab => \Y~275_combout\,
	datac => \seA_Y3[24]~125_combout\,
	datad => \Y~348_combout\,
	combout => \Y~349_combout\);

-- Location: LCCOMB_X70_Y41_N28
\Y~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~350_combout\ = (\Y~274_combout\) # ((\Y~349_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~274_combout\,
	datac => \Y~349_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~350_combout\);

-- Location: LCCOMB_X56_Y38_N4
\A_Y1[25]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[25]~32_combout\ = (\A[25]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datad => \A[25]~input_o\,
	combout => \A_Y1[25]~32_combout\);

-- Location: LCCOMB_X56_Y39_N20
\SLLcircuit|Y2[5]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~109_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((\A_Y1[25]~32_combout\) # (!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & (\A_Y1[57]~29_combout\ & (\SRLcircuit|Y2[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[57]~29_combout\,
	datac => \SRLcircuit|Y2[2]~33_combout\,
	datad => \A_Y1[25]~32_combout\,
	combout => \SLLcircuit|Y2[5]~109_combout\);

-- Location: LCCOMB_X57_Y42_N14
\SLLcircuit|Y2[5]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[5]~110_combout\ = (\SLLcircuit|Y2[5]~109_combout\ & ((\SRLcircuit|Y2[2]~33_combout\) # ((\SLLcircuit|Y1[49]~24_combout\)))) # (!\SLLcircuit|Y2[5]~109_combout\ & (!\SRLcircuit|Y2[2]~33_combout\ & ((\SRLcircuit|Y1[2]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~109_combout\,
	datab => \SRLcircuit|Y2[2]~33_combout\,
	datac => \SLLcircuit|Y1[49]~24_combout\,
	datad => \SRLcircuit|Y1[2]~56_combout\,
	combout => \SLLcircuit|Y2[5]~110_combout\);

-- Location: LCCOMB_X61_Y39_N12
\SLLcircuit|Y[1]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~98_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~102_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[5]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~110_combout\,
	datab => \SLLcircuit|Y2[5]~102_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~98_combout\);

-- Location: LCCOMB_X66_Y39_N16
\SLLcircuit|Y[1]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~99_combout\ = (\SLLcircuit|Y[1]~98_combout\) # ((\B[1]~input_o\ & \SLLcircuit|Y2[55]~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~98_combout\,
	datab => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[55]~106_combout\,
	combout => \SLLcircuit|Y[1]~99_combout\);

-- Location: IOIBUF_X74_Y0_N22
\C[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(57),
	o => \C[57]~input_o\);

-- Location: LCCOMB_X66_Y39_N10
\Y~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~351_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~99_combout\)) # (!\Y~82_combout\ & ((\C[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \SLLcircuit|Y[1]~99_combout\,
	datac => \Y~82_combout\,
	datad => \C[57]~input_o\,
	combout => \Y~351_combout\);

-- Location: LCCOMB_X66_Y39_N4
\Y~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~352_combout\ = (\Y~275_combout\ & ((\Y~351_combout\ & (\SLLcircuit|Y[1]~97_combout\)) # (!\Y~351_combout\ & ((\seA_Y3[25]~130_combout\))))) # (!\Y~275_combout\ & (((\Y~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~97_combout\,
	datab => \Y~275_combout\,
	datac => \seA_Y3[25]~130_combout\,
	datad => \Y~351_combout\,
	combout => \Y~352_combout\);

-- Location: LCCOMB_X73_Y46_N8
\Y~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~353_combout\ = (\Y~274_combout\) # ((\Y~352_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~274_combout\,
	datac => \Y~352_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~353_combout\);

-- Location: IOIBUF_X60_Y0_N22
\C[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(58),
	o => \C[58]~input_o\);

-- Location: LCCOMB_X58_Y38_N4
\SLLcircuit|Y2[6]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~112_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & (((!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & ((\SRLcircuit|Y2[2]~33_combout\ & (\A_Y1[58]~25_combout\)) # (!\SRLcircuit|Y2[2]~33_combout\ & 
-- ((\SRLcircuit|Y1[2]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[58]~25_combout\,
	datac => \SRLcircuit|Y1[2]~57_combout\,
	datad => \SRLcircuit|Y2[2]~33_combout\,
	combout => \SLLcircuit|Y2[6]~112_combout\);

-- Location: LCCOMB_X58_Y38_N10
\A_Y1[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[26]~33_combout\ = (\A[26]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \A[26]~input_o\,
	combout => \A_Y1[26]~33_combout\);

-- Location: LCCOMB_X58_Y38_N14
\SLLcircuit|Y2[6]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[6]~113_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\SLLcircuit|Y2[6]~112_combout\ & (\SLLcircuit|Y1[50]~26_combout\)) # (!\SLLcircuit|Y2[6]~112_combout\ & ((\A_Y1[26]~33_combout\))))) # (!\SRLcircuit|Y2[2]~32_combout\ & 
-- (((\SLLcircuit|Y2[6]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \SLLcircuit|Y1[50]~26_combout\,
	datac => \SLLcircuit|Y2[6]~112_combout\,
	datad => \A_Y1[26]~33_combout\,
	combout => \SLLcircuit|Y2[6]~113_combout\);

-- Location: LCCOMB_X59_Y38_N8
\SLLcircuit|Y2[58]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[58]~111_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLLcircuit|Y1[46]~18_combout\))) # (!\B[3]~input_o\ & (\SLLcircuit|Y1[54]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[54]~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y1[46]~18_combout\,
	combout => \SLLcircuit|Y2[58]~111_combout\);

-- Location: LCCOMB_X59_Y38_N2
\SLLcircuit|Y2[58]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[58]~114_combout\ = (\SLLcircuit|Y2[58]~111_combout\) # ((\SLLcircuit|Y2[6]~113_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[6]~113_combout\,
	datab => \SLLcircuit|Y2[58]~111_combout\,
	datac => \B[2]~input_o\,
	combout => \SLLcircuit|Y2[58]~114_combout\);

-- Location: LCCOMB_X62_Y38_N18
\SLLcircuit|Y[1]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~100_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLLcircuit|Y2[4]~101_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[4]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[4]~108_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \SLLcircuit|Y2[4]~101_combout\,
	combout => \SLLcircuit|Y[1]~100_combout\);

-- Location: LCCOMB_X61_Y38_N10
\SLLcircuit|Y[1]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~101_combout\ = (\SLLcircuit|Y[1]~100_combout\) # ((!\B[1]~input_o\ & \SLLcircuit|Y2[58]~114_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLLcircuit|Y2[58]~114_combout\,
	datad => \SLLcircuit|Y[1]~100_combout\,
	combout => \SLLcircuit|Y[1]~101_combout\);

-- Location: LCCOMB_X61_Y38_N28
\Y~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~354_combout\ = (\Y~82_combout\ & (((\Y~275_combout\) # (\SLLcircuit|Y[1]~101_combout\)))) # (!\Y~82_combout\ & (\C[58]~input_o\ & (!\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \C[58]~input_o\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~101_combout\,
	combout => \Y~354_combout\);

-- Location: LCCOMB_X66_Y39_N14
\Y~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~355_combout\ = (\Y~275_combout\ & ((\Y~354_combout\ & ((\SLLcircuit|Y[1]~99_combout\))) # (!\Y~354_combout\ & (\seA_Y3[26]~135_combout\)))) # (!\Y~275_combout\ & (((\Y~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seA_Y3[26]~135_combout\,
	datab => \Y~275_combout\,
	datac => \Y~354_combout\,
	datad => \SLLcircuit|Y[1]~99_combout\,
	combout => \Y~355_combout\);

-- Location: LCCOMB_X70_Y41_N14
\Y~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~356_combout\ = (\Y~274_combout\) # ((\Y~355_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y~274_combout\,
	datac => \Y~355_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~356_combout\);

-- Location: LCCOMB_X61_Y39_N30
\SLLcircuit|Y[1]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~102_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & ((\SLLcircuit|Y2[5]~102_combout\))) # (!\B[2]~input_o\ & (\SLLcircuit|Y2[5]~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~110_combout\,
	datab => \SLLcircuit|Y2[5]~102_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~102_combout\);

-- Location: LCCOMB_X55_Y44_N24
\A_Y1[27]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[27]~34_combout\ = (\A[27]~input_o\ & ((!\ShiftFN[1]~input_o\) # (!\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \A_Y1[27]~34_combout\);

-- Location: LCCOMB_X55_Y44_N26
\SLLcircuit|Y2[7]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~116_combout\ = (\SRLcircuit|Y2[2]~33_combout\ & ((\SRLcircuit|Y2[2]~32_combout\ & ((\A_Y1[27]~34_combout\))) # (!\SRLcircuit|Y2[2]~32_combout\ & (\A_Y1[59]~17_combout\)))) # (!\SRLcircuit|Y2[2]~33_combout\ & 
-- (\SRLcircuit|Y2[2]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~33_combout\,
	datab => \SRLcircuit|Y2[2]~32_combout\,
	datac => \A_Y1[59]~17_combout\,
	datad => \A_Y1[27]~34_combout\,
	combout => \SLLcircuit|Y2[7]~116_combout\);

-- Location: LCCOMB_X55_Y44_N28
\SLLcircuit|Y2[7]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[7]~117_combout\ = (\SLLcircuit|Y2[7]~116_combout\ & ((\SLLcircuit|Y1[51]~28_combout\) # ((\SRLcircuit|Y2[2]~33_combout\)))) # (!\SLLcircuit|Y2[7]~116_combout\ & (((\SRLcircuit|Y1[2]~58_combout\ & !\SRLcircuit|Y2[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[51]~28_combout\,
	datab => \SRLcircuit|Y1[2]~58_combout\,
	datac => \SLLcircuit|Y2[7]~116_combout\,
	datad => \SRLcircuit|Y2[2]~33_combout\,
	combout => \SLLcircuit|Y2[7]~117_combout\);

-- Location: LCCOMB_X61_Y39_N24
\SLLcircuit|Y2[59]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[59]~115_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLLcircuit|Y1[47]~20_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y1[55]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \SLLcircuit|Y1[47]~20_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y1[55]~36_combout\,
	combout => \SLLcircuit|Y2[59]~115_combout\);

-- Location: LCCOMB_X61_Y39_N10
\SLLcircuit|Y2[59]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[59]~118_combout\ = (\SLLcircuit|Y2[59]~115_combout\) # ((\SLLcircuit|Y2[7]~117_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[7]~117_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[59]~115_combout\,
	combout => \SLLcircuit|Y2[59]~118_combout\);

-- Location: LCCOMB_X61_Y38_N30
\SLLcircuit|Y[1]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~103_combout\ = (\SLLcircuit|Y[1]~102_combout\) # ((!\B[1]~input_o\ & \SLLcircuit|Y2[59]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \SLLcircuit|Y[1]~102_combout\,
	datad => \SLLcircuit|Y2[59]~118_combout\,
	combout => \SLLcircuit|Y[1]~103_combout\);

-- Location: IOIBUF_X60_Y0_N8
\C[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(59),
	o => \C[59]~input_o\);

-- Location: LCCOMB_X61_Y38_N24
\Y~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~357_combout\ = (\Y~275_combout\ & (((\Y~82_combout\)))) # (!\Y~275_combout\ & ((\Y~82_combout\ & (\SLLcircuit|Y[1]~103_combout\)) # (!\Y~82_combout\ & ((\C[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~103_combout\,
	datab => \C[59]~input_o\,
	datac => \Y~275_combout\,
	datad => \Y~82_combout\,
	combout => \Y~357_combout\);

-- Location: LCCOMB_X61_Y38_N18
\Y~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~358_combout\ = (\Y~357_combout\ & ((\SLLcircuit|Y[1]~101_combout\) # ((!\Y~275_combout\)))) # (!\Y~357_combout\ & (((\Y~275_combout\ & \seA_Y3[27]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~101_combout\,
	datab => \Y~357_combout\,
	datac => \Y~275_combout\,
	datad => \seA_Y3[27]~140_combout\,
	combout => \Y~358_combout\);

-- Location: LCCOMB_X70_Y41_N16
\Y~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~359_combout\ = (\Y~274_combout\) # ((\Y~358_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~358_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~359_combout\);

-- Location: IOIBUF_X115_Y30_N8
\C[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(60),
	o => \C[60]~input_o\);

-- Location: LCCOMB_X61_Y38_N14
\Y~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~360_combout\ = (\Y~275_combout\ & (((\Y~82_combout\) # (\seA_Y3[28]~145_combout\)))) # (!\Y~275_combout\ & (\C[60]~input_o\ & (!\Y~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \C[60]~input_o\,
	datac => \Y~82_combout\,
	datad => \seA_Y3[28]~145_combout\,
	combout => \Y~360_combout\);

-- Location: LCCOMB_X58_Y38_N24
\A_Y1[28]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[28]~35_combout\ = (\A[28]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \A_Y1[28]~35_combout\);

-- Location: LCCOMB_X58_Y38_N26
\SLLcircuit|Y2[60]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[60]~119_combout\ = (\SRLcircuit|Y2[2]~33_combout\ & (((\A_Y1[60]~19_combout\ & !\SRLcircuit|Y2[2]~32_combout\)))) # (!\SRLcircuit|Y2[2]~33_combout\ & ((\SRLcircuit|Y1[2]~59_combout\) # ((\SRLcircuit|Y2[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y1[2]~59_combout\,
	datab => \SRLcircuit|Y2[2]~33_combout\,
	datac => \A_Y1[60]~19_combout\,
	datad => \SRLcircuit|Y2[2]~32_combout\,
	combout => \SLLcircuit|Y2[60]~119_combout\);

-- Location: LCCOMB_X58_Y38_N28
\SLLcircuit|Y2[60]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[60]~120_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\SLLcircuit|Y2[60]~119_combout\ & ((\SLLcircuit|Y1[52]~30_combout\))) # (!\SLLcircuit|Y2[60]~119_combout\ & (\A_Y1[28]~35_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & 
-- (((\SLLcircuit|Y2[60]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[28]~35_combout\,
	datac => \SLLcircuit|Y2[60]~119_combout\,
	datad => \SLLcircuit|Y1[52]~30_combout\,
	combout => \SLLcircuit|Y2[60]~120_combout\);

-- Location: LCCOMB_X58_Y38_N22
\SLLcircuit|Y[1]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~104_combout\ = (\B[2]~input_o\ & (\SLLcircuit|Y2[4]~108_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[60]~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[4]~108_combout\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y2[60]~120_combout\,
	combout => \SLLcircuit|Y[1]~104_combout\);

-- Location: LCCOMB_X61_Y38_N12
\SLLcircuit|Y[1]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~105_combout\ = (\B[1]~input_o\ & (\SLLcircuit|Y2[58]~114_combout\)) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~104_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SLLcircuit|Y2[58]~114_combout\,
	datac => \SLLcircuit|Y[1]~104_combout\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~105_combout\);

-- Location: LCCOMB_X61_Y38_N16
\Y~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~361_combout\ = (\Y~360_combout\ & ((\SLLcircuit|Y[1]~103_combout\) # ((!\Y~82_combout\)))) # (!\Y~360_combout\ & (((\Y~82_combout\ & \SLLcircuit|Y[1]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~103_combout\,
	datab => \Y~360_combout\,
	datac => \Y~82_combout\,
	datad => \SLLcircuit|Y[1]~105_combout\,
	combout => \Y~361_combout\);

-- Location: LCCOMB_X70_Y41_N26
\Y~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~362_combout\ = (\Y~274_combout\) # ((\Y~361_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~361_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~362_combout\);

-- Location: IOIBUF_X60_Y0_N15
\C[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(61),
	o => \C[61]~input_o\);

-- Location: LCCOMB_X58_Y39_N18
\A_Y1[29]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y1[29]~36_combout\ = (\A[29]~input_o\ & ((!\ExtWord~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A[29]~input_o\,
	combout => \A_Y1[29]~36_combout\);

-- Location: LCCOMB_X58_Y39_N28
\SLLcircuit|Y2[61]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[61]~121_combout\ = (\SRLcircuit|Y2[2]~32_combout\ & ((\A_Y1[29]~36_combout\) # ((!\SRLcircuit|Y2[2]~33_combout\)))) # (!\SRLcircuit|Y2[2]~32_combout\ & (((\A_Y1[61]~27_combout\ & \SRLcircuit|Y2[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~32_combout\,
	datab => \A_Y1[29]~36_combout\,
	datac => \A_Y1[61]~27_combout\,
	datad => \SRLcircuit|Y2[2]~33_combout\,
	combout => \SLLcircuit|Y2[61]~121_combout\);

-- Location: LCCOMB_X58_Y39_N30
\SLLcircuit|Y2[61]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y2[61]~122_combout\ = (\SRLcircuit|Y2[2]~33_combout\ & (\SLLcircuit|Y2[61]~121_combout\)) # (!\SRLcircuit|Y2[2]~33_combout\ & ((\SLLcircuit|Y2[61]~121_combout\ & ((\SLLcircuit|Y1[53]~32_combout\))) # (!\SLLcircuit|Y2[61]~121_combout\ & 
-- (\SRLcircuit|Y1[2]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRLcircuit|Y2[2]~33_combout\,
	datab => \SLLcircuit|Y2[61]~121_combout\,
	datac => \SRLcircuit|Y1[2]~60_combout\,
	datad => \SLLcircuit|Y1[53]~32_combout\,
	combout => \SLLcircuit|Y2[61]~122_combout\);

-- Location: LCCOMB_X61_Y39_N20
\SLLcircuit|Y[1]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~106_combout\ = (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLLcircuit|Y2[5]~110_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[61]~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~110_combout\,
	datab => \SLLcircuit|Y2[61]~122_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \SLLcircuit|Y[1]~106_combout\);

-- Location: LCCOMB_X61_Y38_N2
\SLLcircuit|Y[1]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~107_combout\ = (\SLLcircuit|Y[1]~106_combout\) # ((\B[1]~input_o\ & \SLLcircuit|Y2[59]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[59]~118_combout\,
	datad => \SLLcircuit|Y[1]~106_combout\,
	combout => \SLLcircuit|Y[1]~107_combout\);

-- Location: LCCOMB_X61_Y38_N4
\Y~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~363_combout\ = (\Y~82_combout\ & (((\Y~275_combout\) # (\SLLcircuit|Y[1]~107_combout\)))) # (!\Y~82_combout\ & (\C[61]~input_o\ & (!\Y~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \C[61]~input_o\,
	datac => \Y~275_combout\,
	datad => \SLLcircuit|Y[1]~107_combout\,
	combout => \Y~363_combout\);

-- Location: LCCOMB_X61_Y38_N6
\Y~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~364_combout\ = (\Y~275_combout\ & ((\Y~363_combout\ & ((\SLLcircuit|Y[1]~105_combout\))) # (!\Y~363_combout\ & (\seA_Y3[29]~147_combout\)))) # (!\Y~275_combout\ & (((\Y~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~275_combout\,
	datab => \seA_Y3[29]~147_combout\,
	datac => \Y~363_combout\,
	datad => \SLLcircuit|Y[1]~105_combout\,
	combout => \Y~364_combout\);

-- Location: LCCOMB_X70_Y41_N4
\Y~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~365_combout\ = (\Y~274_combout\) # ((\Y~364_combout\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~364_combout\,
	datab => \Y~274_combout\,
	datad => \ExtWord~input_o\,
	combout => \Y~365_combout\);

-- Location: IOIBUF_X83_Y73_N15
\C[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(62),
	o => \C[62]~input_o\);

-- Location: LCCOMB_X60_Y38_N14
\Y~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~366_combout\ = (\Y~82_combout\ & (\Y~275_combout\)) # (!\Y~82_combout\ & ((\Y~275_combout\ & (\seA_Y3[30]~152_combout\)) # (!\Y~275_combout\ & ((\C[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~82_combout\,
	datab => \Y~275_combout\,
	datac => \seA_Y3[30]~152_combout\,
	datad => \C[62]~input_o\,
	combout => \Y~366_combout\);

-- Location: LCCOMB_X55_Y38_N20
\SLLcircuit|Y[1]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~109_combout\ = (\B[4]~input_o\ & (\A[46]~input_o\)) # (!\B[4]~input_o\ & ((\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[4]~input_o\,
	datad => \A[62]~input_o\,
	combout => \SLLcircuit|Y[1]~109_combout\);

-- Location: LCCOMB_X59_Y38_N20
\SLLcircuit|Y[1]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~110_combout\ = (\A_s~0_combout\ & (((\SLLcircuit|Y2[6]~63_combout\ & !\shiftCount[5]~0_combout\)))) # (!\A_s~0_combout\ & ((\shiftCount[5]~0_combout\ & ((\SLLcircuit|Y2[6]~63_combout\))) # (!\shiftCount[5]~0_combout\ & 
-- (\SLLcircuit|Y[1]~109_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y[1]~109_combout\,
	datab => \A_s~0_combout\,
	datac => \SLLcircuit|Y2[6]~63_combout\,
	datad => \shiftCount[5]~0_combout\,
	combout => \SLLcircuit|Y[1]~110_combout\);

-- Location: LCCOMB_X59_Y38_N6
\SLLcircuit|Y[1]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~111_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\SLLcircuit|Y1[54]~34_combout\)) # (!\B[3]~input_o\ & ((\SLLcircuit|Y[1]~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y1[54]~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \SLLcircuit|Y[1]~110_combout\,
	combout => \SLLcircuit|Y[1]~111_combout\);

-- Location: LCCOMB_X62_Y38_N4
\SLLcircuit|Y[1]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~108_combout\ = (\B[2]~input_o\ & \SLLcircuit|Y2[6]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \SLLcircuit|Y2[6]~113_combout\,
	combout => \SLLcircuit|Y[1]~108_combout\);

-- Location: LCCOMB_X61_Y38_N8
\SLLcircuit|Y[1]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \SLLcircuit|Y[1]~112_combout\ = (\B[1]~input_o\ & (((\SLLcircuit|Y[1]~104_combout\)))) # (!\B[1]~input_o\ & ((\SLLcircuit|Y[1]~111_combout\) # ((\SLLcircuit|Y[1]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y[1]~111_combout\,
	datac => \SLLcircuit|Y[1]~104_combout\,
	datad => \SLLcircuit|Y[1]~108_combout\,
	combout => \SLLcircuit|Y[1]~112_combout\);

-- Location: LCCOMB_X61_Y38_N26
\Y~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~367_combout\ = (\Y~366_combout\ & ((\SLLcircuit|Y[1]~107_combout\) # ((!\Y~82_combout\)))) # (!\Y~366_combout\ & (((\SLLcircuit|Y[1]~112_combout\ & \Y~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~366_combout\,
	datab => \SLLcircuit|Y[1]~107_combout\,
	datac => \SLLcircuit|Y[1]~112_combout\,
	datad => \Y~82_combout\,
	combout => \Y~367_combout\);

-- Location: LCCOMB_X61_Y38_N20
\Y~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y~368_combout\ = (\Y~274_combout\) # ((!\ExtWord~input_o\ & \Y~367_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Y~274_combout\,
	datac => \Y~367_combout\,
	combout => \Y~368_combout\);

-- Location: LCCOMB_X60_Y38_N16
\A_Y5[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~2_combout\ = (\ExtWord~input_o\ & \seA_Y2[32]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \seA_Y2[32]~1_combout\,
	combout => \A_Y5[0]~2_combout\);

-- Location: IOIBUF_X62_Y73_N22
\C[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C(63),
	o => \C[63]~input_o\);

-- Location: LCCOMB_X56_Y40_N28
\A_Y5[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~4_combout\ = (\B[4]~input_o\ & ((\A[47]~input_o\))) # (!\B[4]~input_o\ & (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[47]~input_o\,
	combout => \A_Y5[0]~4_combout\);

-- Location: LCCOMB_X56_Y40_N30
\A_Y5[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~5_combout\ = (\shiftCount[5]~0_combout\ & (!\A_s~0_combout\ & (\SLLcircuit|Y2[7]~65_combout\))) # (!\shiftCount[5]~0_combout\ & ((\A_s~0_combout\ & (\SLLcircuit|Y2[7]~65_combout\)) # (!\A_s~0_combout\ & ((\A_Y5[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shiftCount[5]~0_combout\,
	datab => \A_s~0_combout\,
	datac => \SLLcircuit|Y2[7]~65_combout\,
	datad => \A_Y5[0]~4_combout\,
	combout => \A_Y5[0]~5_combout\);

-- Location: LCCOMB_X61_Y39_N16
\A_Y5[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~6_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\SLLcircuit|Y1[55]~36_combout\))) # (!\B[3]~input_o\ & (\A_Y5[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A_Y5[0]~5_combout\,
	datac => \B[3]~input_o\,
	datad => \SLLcircuit|Y1[55]~36_combout\,
	combout => \A_Y5[0]~6_combout\);

-- Location: LCCOMB_X61_Y39_N26
\A_Y5[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~7_combout\ = (!\B[1]~input_o\ & ((\A_Y5[0]~6_combout\) # ((\SLLcircuit|Y2[7]~117_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \SLLcircuit|Y2[7]~117_combout\,
	datac => \B[2]~input_o\,
	datad => \A_Y5[0]~6_combout\,
	combout => \A_Y5[0]~7_combout\);

-- Location: LCCOMB_X61_Y39_N22
\A_Y5[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~3_combout\ = (\B[1]~input_o\ & ((\B[2]~input_o\ & (\SLLcircuit|Y2[5]~110_combout\)) # (!\B[2]~input_o\ & ((\SLLcircuit|Y2[61]~122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SLLcircuit|Y2[5]~110_combout\,
	datab => \SLLcircuit|Y2[61]~122_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \A_Y5[0]~3_combout\);

-- Location: LCCOMB_X61_Y39_N4
\A_Y5[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~8_combout\ = (\B[0]~input_o\ & (((\SLLcircuit|Y[1]~112_combout\)))) # (!\B[0]~input_o\ & ((\A_Y5[0]~7_combout\) # ((\A_Y5[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A_Y5[0]~7_combout\,
	datab => \SLLcircuit|Y[1]~112_combout\,
	datac => \A_Y5[0]~3_combout\,
	datad => \B[0]~input_o\,
	combout => \A_Y5[0]~8_combout\);

-- Location: LCCOMB_X62_Y45_N22
\A_Y5[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~9_combout\ = (!\ExtWord~input_o\ & ((\ShiftFN[0]~input_o\ & ((\A_Y5[0]~8_combout\))) # (!\ShiftFN[0]~input_o\ & (\C[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \C[63]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \A_Y5[0]~8_combout\,
	combout => \A_Y5[0]~9_combout\);

-- Location: LCCOMB_X60_Y38_N10
\A_Y5[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A_Y5[0]~10_combout\ = (\ShiftFN[1]~input_o\ & (((\seA_Y3[32]~153_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\A_Y5[0]~2_combout\) # ((\A_Y5[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A_Y5[0]~2_combout\,
	datac => \A_Y5[0]~9_combout\,
	datad => \seA_Y3[32]~153_combout\,
	combout => \A_Y5[0]~10_combout\);

-- Location: IOIBUF_X85_Y0_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X100_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X11_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X115_Y61_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X115_Y66_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X0_Y53_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X3_Y0_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X0_Y20_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X18_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X9_Y0_N8
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X11_Y73_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X115_Y21_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X111_Y73_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X0_Y59_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X115_Y11_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: IOIBUF_X79_Y0_N15
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X107_Y73_N22
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: IOIBUF_X0_Y63_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X0_Y63_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

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
END structure;


