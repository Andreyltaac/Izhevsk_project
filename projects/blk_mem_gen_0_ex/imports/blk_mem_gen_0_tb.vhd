--------------------------------------------------------------------------------
--
-- BLK MEM GEN v8_4 Core - Top File for the Example Testbench
--
--------------------------------------------------------------------------------
--
-- (c) Copyright 2006_2013 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.

--------------------------------------------------------------------------------
-- Filename: blk_mem_gen_0_tb.vhd
-- Description:
--  Testbench Top
--------------------------------------------------------------------------------
-- Author: IP Solutions Division
--
-- History: Sep 12, 2011 - First Release
--------------------------------------------------------------------------------
--
--------------------------------------------------------------------------------
-- Library Declarations
--------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

LIBRARY work;
USE work.ALL;

ENTITY blk_mem_gen_0_tb IS
END ENTITY;


ARCHITECTURE blk_mem_gen_0_tb_ARCH OF blk_mem_gen_0_tb IS

attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of blk_mem_gen_0_tb_ARCH : architecture is "yes";

 SIGNAL  STATUS : STD_LOGIC_VECTOR(6 DOWNTO 0);
 SIGNAL  CLK :  STD_LOGIC := '1';
 SIGNAL  RESET : STD_LOGIC;

component blk_mem_gen_0_exdes
--GENERIC (
--   C_ROM_SYNTH : INTEGER := 1
--);
PORT(
	CLK_IN     : IN  STD_LOGIC;
    RESET_IN   : IN  STD_LOGIC;
    STATUS     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) := (OTHERS => '0')   --ERROR STATUS OUT OF FPGA
    );
end component;


 BEGIN

  
 CLK_GEN: PROCESS BEGIN
     CLK <= NOT CLK;
     WAIT FOR 100 NS;
     CLK <= NOT CLK; 
     WAIT FOR 100 NS;
  END PROCESS;
  
  RST_GEN: PROCESS BEGIN
    RESET <= '1';
    WAIT FOR 1000 NS;
    RESET <= '0';
    WAIT;
  END PROCESS;

 PROCESS BEGIN
  WAIT UNTIL STATUS(6)='1';
  IF( STATUS(5 downto 0)/="0") THEN
    ASSERT false
     REPORT "Simulation Failed"
	 SEVERITY FAILURE;
  ELSE
   ASSERT false
     REPORT "Test Completed Successfully"
	 SEVERITY FAILURE;
  END IF;
END PROCESS;	 
  
  blk_mem_gen_0_exdes_inst: blk_mem_gen_0_exdes  
  --GENERIC MAP (
  --  C_ROM_SYNTH => 0
  --)
  PORT MAP(
           CLK_IN   => CLK,
     	   RESET_IN => RESET,
           STATUS   => STATUS
	  );

END ARCHITECTURE;
