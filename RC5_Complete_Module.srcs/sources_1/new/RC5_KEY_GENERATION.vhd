----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2021 01:33:33 AM
-- Design Name: 
-- Module Name: RC5_KEY_GENERATION - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use WORK.RC5_PACKAGE.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RC5_KEY_GENERATION is
    Port (skey: OUT KEYARRAY;
         clk: IN STD_LOGIC;
         rst: IN STD_LOGIC;
         user_key: in std_logic_vector(127 downto 0);
         start_generating_skey: IN STD_LOGIC;
         key_done: OUT STD_LOGIC );
end RC5_KEY_GENERATION;

architecture Behavioral of RC5_KEY_GENERATION is
    TYPE StateType is (ST_IDLE,ST_KEY_IN,ST_KEY_EXP,ST_RDY);
    SIGNAL  state:  StateType;
    SIGNAL s : KEYARRAY;
    SIGNAL l : KEYARRAY;

    SIGNAL a_temp: STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL b_temp: STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL i_cnt: STD_LOGIC_VECTOR(4 DOWNTO 0):="00000";
    SIGNAL j_cnt: STD_LOGIC_VECTOR(1 DOWNTO 0):="00";
    SIGNAL r_cnt: STD_LOGIC_VECTOR(6 DOWNTO 0):="0000000";
    SIGNAL temp: STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL a_reg: STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL b_reg: STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL a: STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL b: STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal key: STD_LOGIC_VECTOR(127 DOWNTO 0);
BEGIN

    PROCESS(clk,rst)
    BEGIN
        IF(rst = '0') THEN
            state <= ST_IDLE;
        ELSIF(clk'EVENT AND clk ='1') THEN
            CASE state is
                WHEN ST_IDLE => IF start_generating_skey = '1' THEN state <= ST_KEY_IN; END IF;
                WHEN ST_KEY_IN => state <=  ST_KEY_EXP;
                WHEN ST_KEY_EXP => IF(r_cnt = "1001101") THEN state <= ST_RDY; END IF;
                WHEN ST_RDY =>  IF rst = '0' THEN state<= ST_IDLE; END IF;
            END CASE;
        END IF;
    END PROCESS;

    PROCESS(clk,rst)
    BEGIN
        IF(rst = '0') THEN
            i_cnt <= "00000";
        ELSIF(clk'EVENT AND clk ='1')THEN
            IF(state = ST_IDLE)THEN
                i_cnt <= "00000";END IF;
            IF(state = ST_KEY_EXP) THEN
                IF(i_cnt = "11001") THEN
                    i_cnt <= "00000";
                ELSE i_cnt <= i_cnt + '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    PROCESS(clk,rst)
    BEGIN
        IF(rst = '0') THEN
            r_cnt <= "0000000";
        ELSIF(clk'EVENT AND clk ='1')THEN
            IF(state = ST_KEY_EXP) THEN
                IF(r_cnt = "1001101") THEN
                    r_cnt <= "0000000";
                ELSE r_cnt <= r_cnt + '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    PROCESS(clk,rst)
    BEGIN
        IF(rst = '0') THEN j_cnt <= "00";
        ELSIF(clk'EVENT AND clk ='1')THEN
            IF(state = ST_KEY_EXP) THEN
                IF(j_cnt = "11") THEN
                    j_cnt <= "00";
                ELSE j_cnt <= j_cnt + '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;


    PROCESS(clk,rst)
    BEGIN
        IF(rst = '0') THEN
            a_reg <=(OTHERS=>'0');
        ELSIF(clk'EVENT AND clk ='1') THEN
            IF(state = ST_KEY_EXP) THEN
                a_reg <= a_temp;
            END IF;
        END IF;
    END PROCESS;


    PROCESS(clk,rst)
    BEGIN
        IF(rst = '0') THEN
            b_reg <= (OTHERS=>'0');
        ELSIF(clk'EVENT AND clk ='1') THEN
            IF(state = ST_KEY_EXP) THEN
                b_reg <= b_temp;
            END IF;
        END IF;
    END PROCESS;

    process(rst, clk)
    begin
        if(rst = '0') then
            l(0) <= (OTHERS=>'0');
            l(1) <= (OTHERS=>'0');
            l(2) <= (OTHERS=>'0');
            l(3) <= (OTHERS=>'0');
        elsif (clk'event and clk = '1') then
            if(state =  ST_KEY_IN) then
                l(0) <= user_key(31 downto 0);
                l(1) <= user_key(63 downto 32);
                l(2) <= user_key(95 downto 64);
                l(3) <= user_key(127 downto 96);
            elsif(state = ST_KEY_EXP) then
                l(conv_integer(j_cnt)) <= b_temp;
            end if;
        end if;
    end process;

    process(rst, clk)
    begin
        if (rst = '0') then
            s(0) <= X"b7e15163"; s(1) <= X"5618cb1c";s(2) <= X"f45044d5";
            s(3) <= X"9287be8e";s(4) <= X"30bf3847";s(5) <= X"cef6b200";
            s(6) <= X"6d2e2bb9";s(7) <= X"0b65a572";s(8) <= X"a99d1f2b";
            s(9) <= X"47d498e4";s(10) <= X"e60c129d";s(11) <= X"84438c56";
            s(12) <= X"227b060f";s(13) <= X"c0b27fc8";s(14) <= X"5ee9f981";
            s(15) <= X"fd21733a";s(16) <= X"9b58ecf3";s(17) <= X"399066ac";
            s(18) <= X"d7c7e065";s(19) <= X"75ff5a1e";s(20) <= X"1436d3d7";
            s(21) <= X"b26e4d90";s(22) <= X"50a5c749";s(23) <= X"eedd4102";
            s(24) <= X"8d14babb";s(25) <= X"2b4c3474";
        elsif (clk'event and clk = '1') then
            if(state =  ST_KEY_IN) then
                s(0) <= X"b7e15163"; s(1) <= X"5618cb1c";s(2) <= X"f45044d5";
                s(3) <= X"9287be8e";s(4) <= X"30bf3847";s(5) <= X"cef6b200";
                s(6) <= X"6d2e2bb9";s(7) <= X"0b65a572";s(8) <= X"a99d1f2b";
                s(9) <= X"47d498e4";s(10) <= X"e60c129d";s(11) <= X"84438c56";
                s(12) <= X"227b060f";s(13) <= X"c0b27fc8";s(14) <= X"5ee9f981";
                s(15) <= X"fd21733a";s(16) <= X"9b58ecf3";s(17) <= X"399066ac";
                s(18) <= X"d7c7e065";s(19) <= X"75ff5a1e";s(20) <= X"1436d3d7";
                s(21) <= X"b26e4d90";s(22) <= X"50a5c749";s(23) <= X"eedd4102";
                s(24) <= X"8d14babb";s(25) <= X"2b4c3474";
            elsif (state = ST_KEY_EXP) then
                s(conv_integer(i_cnt)) <= a_temp;
            end if;
        end if;
    end process;

    a<= s(conv_integer(i_cnt)) + a_reg + b_reg;
    a_temp <= a(28 downto 0) & a(31 downto 29);

    b <= l(conv_integer(j_cnt)) + a_temp + b_reg;
    temp <= a_temp + b_reg;
    WITH temp(4 DOWNTO 0) SELECT b_temp <=  b(30 DOWNTO 0) & b(31) WHEN"00001",
        b(29 DOWNTO 0) & b(31 DOWNTO 30) WHEN"00010",
        b(28 DOWNTO 0) & b(31 DOWNTO 29) WHEN"00011",
        b(27 DOWNTO 0) & b(31 DOWNTO 28) WHEN"00100",
        b(26 DOWNTO 0) & b(31 DOWNTO 27) WHEN"00101",
        b(25 DOWNTO 0) & b(31 DOWNTO 26) WHEN"00110",
        b(24 DOWNTO 0) & b(31 DOWNTO 25) WHEN"00111",
        b(23 DOWNTO 0) & b(31 DOWNTO 24) WHEN"01000",
        b(22 DOWNTO 0) & b(31 DOWNTO 23) WHEN"01001",
        b(21 DOWNTO 0) & b(31 DOWNTO 22) WHEN"01010",
        b(20 DOWNTO 0) & b(31 DOWNTO 21) WHEN"01011",
        b(19 DOWNTO 0) & b(31 DOWNTO 20) WHEN"01100",
        b(18 DOWNTO 0) & b(31 DOWNTO 19) WHEN"01101",
        b(17 DOWNTO 0) & b(31 DOWNTO 18) WHEN"01110",
        b(16 DOWNTO 0) & b(31 DOWNTO 17) WHEN"01111",
        b(15 DOWNTO 0) & b(31 DOWNTO 16) WHEN"10000",
        b(14 DOWNTO 0) & b(31 DOWNTO 15) WHEN"10001",
        b(13 DOWNTO 0) & b(31 DOWNTO 14) WHEN"10010",
        b(12 DOWNTO 0) & b(31 DOWNTO 13) WHEN"10011",
        b(11 DOWNTO 0) & b(31 DOWNTO 12) WHEN"10100",
        b(10 DOWNTO 0) & b(31 DOWNTO 11) WHEN"10101",
        b(09 DOWNTO 0) & b(31 DOWNTO 10) WHEN"10110",
        b(08 DOWNTO 0) & b(31 DOWNTO 09) WHEN"10111",
        b(07 DOWNTO 0) & b(31 DOWNTO 08) WHEN"11000",
        b(06 DOWNTO 0) & b(31 DOWNTO 07) WHEN"11001",
        b(05 DOWNTO 0) & b(31 DOWNTO 06) WHEN"11010",
        b(04 DOWNTO 0) & b(31 DOWNTO 05) WHEN"11011",
        b(03 DOWNTO 0) & b(31 DOWNTO 04) WHEN"11100",
        b(02 DOWNTO 0) & b(31 DOWNTO 03) WHEN"11101",
        b(01 DOWNTO 0) & b(31 DOWNTO 02) WHEN"11110",
        b(0) & b(31 DOWNTO 01) WHEN "11111",
        b WHEN OTHERS;

    WITH state SELECT key_done <= '1' WHEN ST_RDY,
        '0' WHEN OTHERS;

    process(clk)
    begin
        if(state = ST_RDY) then
            skey<=s;
        end if;
    end process;

end Behavioral;