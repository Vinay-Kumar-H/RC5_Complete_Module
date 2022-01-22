----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2021 06:53:26 PM
-- Design Name: 
-- Module Name: RC5_TestBench - Behavioral
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
use std.textio.all;
use work.RC5_PACKAGE.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RC5_TestBench is

end RC5_TestBench;

architecture Behavioral of RC5_TestBench is
    COMPONENT RC5
        PORT(
            clk : in std_logic;
            rst: in std_logic;
            start_encryption : in std_logic;
            start_decryption : in std_logic;
            d_in : in std_logic_vector (63 downto 0);
            user_key :in std_logic_vector(127 downto 0);
            start_generating_skey: in STD_LOGIC;
            key_done: out STD_LOGIC;
            d_out :out std_logic_vector (63 downto 0);
            done: out STD_LOGIC
        );
    END COMPONENT;
    signal clk : std_logic;
    signal rst: std_logic;
    signal start_encryption : std_logic;
    signal start_decryption : std_logic;
    signal d_in : std_logic_vector (63 downto 0);
    signal user_key :std_logic_vector(127 downto 0):=X"beef1234beef1234beef1234beef1234";
    signal start_generating_skey: STD_LOGIC;
    signal key_done: STD_LOGIC;
    signal d_out :std_logic_vector (63 downto 0);
    signal done:STD_LOGIC;
begin
    uut: RC5 PORT MAP (clk=>clk,rst=>rst, start_encryption=>start_encryption,start_decryption=>start_decryption,d_in=>d_in,user_key=>user_key,start_generating_skey=>start_generating_skey,key_done=>key_done,d_out=>d_out,done=>done);
    clock :process
    begin
        clk <= '0';
        wait for 25ns;
        clk <= '1';
        wait for 25ns;
    end process;

    Test_Cases: process

        file cmdfile: TEXT;
        variable L: Line;
        variable STATUS: boolean;
        variable count : integer := 1;
        variable din : std_logic_vector(63 downto 0);
        variable dout: std_logic_vector(63 downto 0);

    begin
        rst<='0';
        wait for 50ns;
        rst<='1';
        start_generating_skey<='1';
        start_encryption<='0';
        start_decryption<='0';
        wait for 85*50ns;
        start_generating_skey<='0';
        start_encryption<='1';
        FILE_OPEN(cmdfile,"TEST_DATA.mem",READ_MODE);
        loop

            if endfile(cmdfile) then
                assert false
                report "No more Data to Read"
                severity NOTE;
                exit;
            end if;

            readline(cmdfile,L);
            next when L'length = 0;
            HEX_READ(L,din,STATUS);
            assert STATUS
            report "Text Input/Output error"
            severity ERROR;

            HEX_READ(L,dout,STATUS);
            assert STATUS
            report "Text Input/Output error"
            severity ERROR;
            d_in<=din ;
            wait for 16*50ns;

            assert (d_out = dout)
            report "Encryption Match for data " &  integer'image(count)
            severity NOTE;
            assert (d_out /= dout)
            report "Encryption does not Match for data " &  integer'image(count)
            severity NOTE;

            count := count +1;
        end loop;
        wait for 50ns;
        start_encryption<='0';
        count:=1;
        FILE_OPEN(cmdfile,"TEST_DATA.mem",READ_MODE);
        loop
            if endfile(cmdfile) then
                assert false
                report "No more Data to Read"
                severity NOTE;
                exit;
            end if;

            readline(cmdfile,L);
            next when L'length = 0;
            HEX_READ(L,dout,STATUS);
            assert STATUS
            report "Text Input/Output error"
            severity ERROR;

            HEX_READ(L,din,STATUS);
            assert STATUS
            report "Text Input/Output error"
            severity ERROR;

            d_in<=din ;
            start_decryption<='1';
            wait for 16*50ns;

            assert (d_out = dout)
            report "Decryption Match for data " &  integer'image(count)
            severity NOTE;
            assert (d_out /= dout)
            report "Decryption does not Match for data " &  integer'image(count)
            severity NOTE;

            count := count +1;
        end loop;
        wait;
    end process;

end Behavioral;
