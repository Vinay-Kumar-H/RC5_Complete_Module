----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2021 04:26:57 PM
-- Design Name: 
-- Module Name: RC5_Dec - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
USE WORK.RC5_PACKAGE.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RC5_Dec is
PORT(
d_in: IN STD_LOGIC_VECTOR(63 DOWNTO 0);
d_out: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
skey:in KEYARRAY;

clk: IN STD_LOGIC;
rst: IN STD_LOGIC;
start_decryption: IN STD_LOGIC;
done: OUT STD_LOGIC );
end RC5_Dec;

architecture Behavioral of RC5_Dec is

TYPE StateType is (ST_IDLE,ST_POST_RND,ST_RND_OP,ST_RDY);

SIGNAL  state:  StateType;
SIGNAL a: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL a_post: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b_post: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL a_reg: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL b_reg: STD_LOGIC_VECTOR(31 DOWNTO 0); 
SIGNAL asub: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL bsub: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL arot: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL brot: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL count: STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
-- BELOW I HAVE PERFORMED ALL NECCESSARY OPERATIONS LIKE XOR ,SHIFT AND OR.							
asub <= a_reg - skey(CONV_INTEGER(count & '0'));
WITH b(4 DOWNTO 0) SELECT						-- SHIFT OPERATION
arot<=  asub(0) & asub(31 DOWNTO 1) WHEN "00001",
	asub(1 DOWNTO 0) & asub(31 DOWNTO 2) WHEN"00010",
	asub(2 DOWNTO 0) & asub(31 DOWNTO 3) WHEN"00011",
	asub(3 DOWNTO 0) & asub(31 DOWNTO 4) WHEN"00100",
	asub(4 DOWNTO 0) & asub(31 DOWNTO 5) WHEN"00101",
	asub(5 DOWNTO 0) & asub(31 DOWNTO 6) WHEN"00110",
	asub(6 DOWNTO 0) & asub(31 DOWNTO 7) WHEN"00111",
	asub(7 DOWNTO 0) & asub(31 DOWNTO 8) WHEN"01000",
	asub(8 DOWNTO 0) & asub(31 DOWNTO 9) WHEN"01001",
	asub(9 DOWNTO 0) & asub(31 DOWNTO 10) WHEN"01010",
	asub(10 DOWNTO 0) & asub(31 DOWNTO 11) WHEN"01011", 
	asub(11 DOWNTO 0) & asub(31 DOWNTO 12) WHEN"01100",
	asub(12 DOWNTO 0) & asub(31 DOWNTO 13) WHEN"01101",
	asub(13 DOWNTO 0) & asub(31 DOWNTO 14) WHEN"01110",
	asub(14 DOWNTO 0) & asub(31 DOWNTO 15) WHEN"01111",
	asub(15 DOWNTO 0) & asub(31 DOWNTO 16) WHEN"10000",
	asub(16 DOWNTO 0) & asub(31 DOWNTO 17) WHEN"10001",
	asub(17 DOWNTO 0) & asub(31 DOWNTO 18) WHEN"10010",
	asub(18 DOWNTO 0) & asub(31 DOWNTO 19) WHEN"10011",
	asub(19 DOWNTO 0) & asub(31 DOWNTO 20) WHEN"10100",
	asub(20 DOWNTO 0) & asub(31 DOWNTO 21) WHEN"10101",
	asub(21 DOWNTO 0) & asub(31 DOWNTO 22) WHEN"10110",
	asub(22 DOWNTO 0) & asub(31 DOWNTO 23) WHEN"10111",
	asub(23 DOWNTO 0) & asub(31 DOWNTO 24) WHEN"11000",
	asub(24 DOWNTO 0) & asub(31 DOWNTO 25) WHEN"11001",
	asub(25 DOWNTO 0) & asub(31 DOWNTO 26) WHEN"11010",
	asub(26 DOWNTO 0) & asub(31 DOWNTO 27) WHEN"11011",
	asub(27 DOWNTO 0) & asub(31 DOWNTO 28) WHEN"11100",
	asub(28 DOWNTO 0) & asub(31 DOWNTO 29) WHEN"11101",
	asub(29 DOWNTO 0) & asub(31 DOWNTO 30) WHEN"11110",
	asub(30 DOWNTO 0) & asub(31) WHEN"11111",
	asub WHEN OTHERS;
	a <= arot XOR b;
bsub <= b_reg - skey(CONV_INTEGER(count & '1'));
WITH a_reg(4 DOWNTO 0) SELECT
brot <= bsub(0) & bsub(31 DOWNTO 1)    WHEN "00001",
	bsub(1 DOWNTO 0) & bsub(31 DOWNTO 2) WHEN"00010",
	bsub(2 DOWNTO 0) & bsub(31 DOWNTO 3) WHEN"00011",
	bsub(3 DOWNTO 0) & bsub(31 DOWNTO 4) WHEN"00100",
	bsub(4 DOWNTO 0) & bsub(31 DOWNTO 5) WHEN"00101",
	bsub(5 DOWNTO 0) & bsub(31 DOWNTO 6) WHEN"00110",
	bsub(6 DOWNTO 0) & bsub(31 DOWNTO 7) WHEN"00111",
	bsub(7 DOWNTO 0) & bsub(31 DOWNTO 8) WHEN"01000",
	bsub(8 DOWNTO 0) & bsub(31 DOWNTO 9) WHEN"01001",
	bsub(9 DOWNTO 0) & bsub(31 DOWNTO 10) WHEN"01010",
	bsub(10 DOWNTO 0) & bsub(31 DOWNTO 11) WHEN"01011", 
	bsub(11 DOWNTO 0) & bsub(31 DOWNTO 12) WHEN"01100",
	bsub(12 DOWNTO 0) & bsub(31 DOWNTO 13) WHEN"01101",
	bsub(13 DOWNTO 0) & bsub(31 DOWNTO 14) WHEN"01110",
	bsub(14 DOWNTO 0) & bsub(31 DOWNTO 15) WHEN"01111",
	bsub(15 DOWNTO 0) & bsub(31 DOWNTO 16) WHEN"10000",
	bsub(16 DOWNTO 0) & bsub(31 DOWNTO 17) WHEN"10001",
	bsub(17 DOWNTO 0) & bsub(31 DOWNTO 18) WHEN"10010",
	bsub(18 DOWNTO 0) & bsub(31 DOWNTO 19) WHEN"10011",
	bsub(19 DOWNTO 0) & bsub(31 DOWNTO 20) WHEN"10100",
	bsub(20 DOWNTO 0) & bsub(31 DOWNTO 21) WHEN"10101",
	bsub(21 DOWNTO 0) & bsub(31 DOWNTO 22) WHEN"10110",
	bsub(22 DOWNTO 0) & bsub(31 DOWNTO 23) WHEN"10111",
	bsub(23 DOWNTO 0) & bsub(31 DOWNTO 24) WHEN"11000",
	bsub(24 DOWNTO 0) & bsub(31 DOWNTO 25) WHEN"11001",
	bsub(25 DOWNTO 0) & bsub(31 DOWNTO 26) WHEN"11010",
	bsub(26 DOWNTO 0) & bsub(31 DOWNTO 27) WHEN"11011",
	bsub(27 DOWNTO 0) & bsub(31 DOWNTO 28) WHEN"11100",
	bsub(28 DOWNTO 0) & bsub(31 DOWNTO 29) WHEN"11101",
	bsub(29 DOWNTO 0) & bsub(31 DOWNTO 30) WHEN"11110",
	bsub(30 DOWNTO 0) & bsub(31) WHEN"11111",
	bsub WHEN OTHERS;
	b<= brot XOR a_reg;

PROCESS(clk,rst)							-- SELECTING DIFFERENT STATES ACCORDING TO INPUTS
BEGIN
IF(rst= '0') THEN
state <= ST_IDLE;
ELSIF(clk'EVENT AND clk ='1') THEN
CASE state is
WHEN ST_IDLE => IF start_decryption = '1' THEN state <= ST_RND_OP; END IF;
WHEN ST_RND_OP => IF(COUNT = "0001") THEN state <= ST_POST_RND; END IF;
WHEN ST_POST_RND => state <=  ST_RDY;
WHEN ST_RDY => state<= ST_IDLE;
END CASE;
END IF;
END PROCESS;

PROCESS(clk,rst)							-- PERFORMING LOOP INCREMENT FUNCTION DEPENDINH UPON clk AND STATES
BEGIN
IF(rst='0') THEN 
count<="1100"; 
ELSIF(clk'EVENT AND clk ='1')THEN
IF(state = ST_RND_OP) THEN
IF(count = "0001") THEN
count <= "1100";
ELSE count <= count -'1';
END IF;
END IF;
END IF;
END PROCESS;

PROCESS(clk,rst)							--DEFINTION FOR VALUE OF A ACCORDING TO DIFFERENT STATES
BEGIN
IF(rst = '0') THEN
a_post <=(OTHERS=>'0');
ELSIF(clk'EVENT AND clk ='1') THEN
IF(state = ST_IDLE) THEN
a_reg <= d_in(63 DOWNTO 32); END IF;
IF(state = ST_RND_OP) THEN
a_reg <= a;END IF;
IF(state = ST_POST_RND) THEN
a_reg <= a_reg - skey(0);
END IF;
END IF;

END PROCESS;

PROCESS(clk,rst)							--DEFINTION FOR VALUE OF B ACCORDING TO DIFFERENT STATES
BEGIN
IF(rst = '0') THEN
b_post <=(OTHERS=>'0');
ELSIF(clk'EVENT AND clk ='1') THEN
IF(state = ST_IDLE) THEN
b_reg <= d_in(31 DOWNTO 0);END IF;
IF(state = ST_RND_OP) THEN
b_reg <= b; END IF;
IF(state = ST_POST_RND) THEN
b_reg <= b_reg - skey(1);
END IF;

END IF;
END PROCESS;


WITH state SELECT							--WHEN ALL THE STATES ARE COMPLETED THEN OUTPUT SIGNAL dec_rdy BECOMES ACTIVE
done <= '1' WHEN ST_RDY,
            '0' WHEN OTHERS;

d_out <= a_reg & b_reg;	

END Behavioral;
