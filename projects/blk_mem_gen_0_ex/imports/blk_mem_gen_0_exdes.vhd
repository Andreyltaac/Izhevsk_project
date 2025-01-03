 
 
 
 

 





--------------------------------------------------------------------------------
--
-- BLK MEM GEN v8_4 Core - Synthesizable Testbench
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
--
-- Filename: blk_mem_gen_0_exdes.vhd
--
-- Description:
--  Synthesizable Testbench
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_MISC.ALL;

LIBRARY STD;
USE STD.TEXTIO.ALL;

LIBRARY unisim;
USE unisim.vcomponents.ALL;

LIBRARY work;
USE work.ALL;
USE work.BMG_TB_PKG.ALL;

ENTITY blk_mem_gen_0_exdes IS
--GENERIC (
--   C_ROM_SYNTH : INTEGER := 1
--);
PORT(
	CLK_IN     : IN  STD_LOGIC;
    RESET_IN   : IN  STD_LOGIC;
    STATUS     : OUT STD_LOGIC_VECTOR(6 DOWNTO 0) := (OTHERS => '0')   --ERROR STATUS OUT OF FPGA
    );
END ENTITY;

ARCHITECTURE blk_mem_gen_0_exdes_ARCH OF blk_mem_gen_0_exdes IS

attribute DowngradeIPIdentifiedWarnings: string;
attribute DowngradeIPIdentifiedWarnings of blk_mem_gen_0_exdes_ARCH : architecture is "yes";

COMPONENT AXI_CHECKER
      PORT (
            CLK : IN STD_LOGIC;
            RST : IN STD_LOGIC;
            EN  : IN STD_LOGIC; 
            DATA_IN : IN STD_LOGIC_VECTOR (31 DOWNTO 0);   --OUTPUT VECTOR          
            STATUS : OUT STD_LOGIC:= '0'
	   );
END COMPONENT;

COMPONENT CHECKER IS
  GENERIC ( WRITE_WIDTH : INTEGER :=32;
            READ_WIDTH  : INTEGER :=32
  );
        
  PORT (
        CLK      : IN STD_LOGIC;
        RST      : IN STD_LOGIC;
        EN       : IN STD_LOGIC; 
        DATA_IN  : IN STD_LOGIC_VECTOR (READ_WIDTH-1 DOWNTO 0);   --OUTPUT VECTOR          
        STATUS   : OUT STD_LOGIC:= '0'
  );
END COMPONENT;


CONSTANT STIM_CNT : INTEGER := 8;--if_then_else((C_ROM_SYNTH=0),8,22);





-- SRAM Configuration

COMPONENT BMG_STIM_GEN
  PORT (
        CLK       : IN   STD_LOGIC;
        RST       : IN   STD_LOGIC;
        ADDRA     : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0'); 
        DINA      : OUT  STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  
        ENA       : OUT  STD_LOGIC :='0';
        WEA       : OUT  STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
        CHECK_DATA: OUT  STD_LOGIC:='0'
  );
END COMPONENT;



COMPONENT blk_mem_gen_0_wrapper 
  PORT (
      --Inputs - Port A
    RSTA           : IN STD_LOGIC;  --opt port
    ENA            : IN STD_LOGIC;  --opt port
    WEA            : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    ADDRA          : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    DINA           : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    DOUTA          : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    CLKA       : IN STD_LOGIC


  );

END COMPONENT;


  SIGNAL CLKA: STD_LOGIC := '0';
  SIGNAL RSTA: STD_LOGIC := '0';
  SIGNAL ENA: STD_LOGIC := '0';
  SIGNAL ENA_R: STD_LOGIC := '0';
  SIGNAL WEA: STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL WEA_R: STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL ADDRA: STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL ADDRA_R: STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL ADDRA_SHIFT: STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL ADDRA_SHIFT_R: STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL DINA: STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL DINA_R: STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
  SIGNAL DOUTA: STD_LOGIC_VECTOR(31 DOWNTO 0);
  SIGNAL CHECKER_EN : STD_LOGIC:='0';
  SIGNAL CHECKER_EN_R : STD_LOGIC:='0';
  SIGNAL STIMULUS_FLOW : STD_LOGIC_VECTOR(22 DOWNTO 0) := (OTHERS =>'0');
  SIGNAL clk_in_i: STD_LOGIC;
 
  SIGNAL RESET_SYNC_R1 : STD_LOGIC:='1';
  SIGNAL RESET_SYNC_R2 : STD_LOGIC:='1';
  SIGNAL RESET_SYNC_R3 : STD_LOGIC:='1';

  SIGNAL ITER_R0 : STD_LOGIC := '0';
  SIGNAL ITER_R1 : STD_LOGIC := '0';
  SIGNAL ITER_R2 : STD_LOGIC := '0';

  SIGNAL ISSUE_FLAG : STD_LOGIC_VECTOR(5 DOWNTO 0) := (OTHERS => '0');
  SIGNAL ISSUE_FLAG_STATUS : STD_LOGIC_VECTOR(5 DOWNTO 0) := (OTHERS => '0');

  BEGIN

  clk_buf: bufg
    PORT map(
      i => CLK_IN,
      o => CLKA
    );
   clk_in_i <= CLKA;



   RSTA <= RESET_SYNC_R3 AFTER 10 ps;


   PROCESS(clk_in_i)
   BEGIN
      IF(RISING_EDGE(clk_in_i)) THEN
		 RESET_SYNC_R1 <= RESET_IN;
		 RESET_SYNC_R2 <= RESET_SYNC_R1;
		 RESET_SYNC_R3 <= RESET_SYNC_R2;
	  END IF;
   END PROCESS;




-- Native Interface
PROCESS(CLKA)
BEGIN
    IF RISING_EDGE (CLKA) THEN
      IF(RESET_SYNC_R3='1') THEN
        ISSUE_FLAG_STATUS <= (OTHERS => '0'); 
	  ELSE
        ISSUE_FLAG_STATUS <= ISSUE_FLAG_STATUS OR  ISSUE_FLAG ;
      END IF;
    END IF;      
END PROCESS;




STATUS(5 DOWNTO 0) <= ISSUE_FLAG_STATUS;



   BMG_DATA_CHECKER_INST:CHECKER
      GENERIC MAP ( 
         WRITE_WIDTH => 32,
		 READ_WIDTH  => 32
      )
      PORT MAP (
         CLK     => CLKA,
         RST     => RSTA, 
         EN      => CHECKER_EN_R,
         DATA_IN => DOUTA,
         STATUS  => ISSUE_FLAG(0)
	   );

   PROCESS(CLKA)
   BEGIN
      IF(RISING_EDGE(CLKA)) THEN
         IF(RSTA='1') THEN
		    CHECKER_EN_R <= '0';
	     ELSE
		    CHECKER_EN_R <= CHECKER_EN AFTER 10 ps;
         END IF;
      END IF;
   END PROCESS;


    BMG_STIM_GEN_INST: BMG_STIM_GEN
     PORT MAP(
                CLK => clk_in_i,
             	RST => RSTA,
                ADDRA  => ADDRA,
                DINA => DINA,
 
                ENA => ENA,
                WEA => WEA,
	            CHECK_DATA => CHECKER_EN
             );

      PROCESS(CLKA)
      BEGIN
        IF(RISING_EDGE(CLKA)) THEN
		  IF(RESET_SYNC_R3='1') THEN
			STATUS(6) <= '0';
			iter_r2 <= '0';
			iter_r1 <= '0';
			iter_r0 <= '0';
		  ELSE
			STATUS(6) <= iter_r2;
			iter_r2 <= iter_r1;
			iter_r1 <= iter_r0;
			iter_r0 <= STIMULUS_FLOW(STIM_CNT);
	      END IF;
	    END IF;
      END PROCESS;


      PROCESS(CLKA)
      BEGIN
        IF(RISING_EDGE(CLKA)) THEN
		  IF(RESET_SYNC_R3='1') THEN
		      STIMULUS_FLOW <= (OTHERS => '0'); 
           ELSIF(WEA(0)='1') THEN
		      STIMULUS_FLOW <= STIMULUS_FLOW+1;
         END IF;
	    END IF;
      END PROCESS;



   ADDRA_SHIFT(31 DOWNTO 2) <= ADDRA(29 DOWNTO 0) ;
   ADDRA_SHIFT(1 DOWNTO 0)  <= (OTHERS=> '0' );

      PROCESS(CLKA)
      BEGIN
        IF(RISING_EDGE(CLKA)) THEN
		  IF(RESET_SYNC_R3='1') THEN
            ENA_R <= '0' AFTER 10 ps;
            WEA_R  <= (OTHERS=>'0') AFTER 10 ps;
            DINA_R <= (OTHERS=>'0') AFTER 10 ps;
           ELSE
          ENA_R <= ENA AFTER 10 ps;
            WEA_R  <= WEA AFTER 10 ps;
            DINA_R <= DINA AFTER 10 ps;
         END IF;
	    END IF;
      END PROCESS;


      PROCESS(CLKA)
      BEGIN
        IF(RISING_EDGE(CLKA)) THEN
		  IF(RESET_SYNC_R3='1') THEN
             ADDRA_SHIFT_R <= (OTHERS=>'0') AFTER 10 ps;
          ELSE
             ADDRA_SHIFT_R <= ADDRA_SHIFT AFTER 10 ps;
          END IF;
	    END IF;
      END PROCESS;



    BMG_PORT: blk_mem_gen_0_wrapper PORT MAP ( 
      --Port A
      RSTA       => RSTA,
      ENA        => ENA_R,
      WEA        => WEA_R,
      ADDRA      => ADDRA_SHIFT_R,
      DINA       => DINA_R,
      DOUTA      => DOUTA,
      CLKA       => CLKA

    );
END ARCHITECTURE;
