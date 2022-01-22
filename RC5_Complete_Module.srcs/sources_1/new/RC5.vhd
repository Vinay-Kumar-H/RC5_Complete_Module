----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/09/2021 03:57:54 PM
-- Design Name: 
-- Module Name: RC5 - Behavioral
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
use WORK.RC5_PACKAGE.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RC5 is
    Port (
        clk : in std_logic;
        rst: in std_logic;
        start_generating_skey: in std_logic;
        start_encryption : in std_logic;
        start_decryption : in std_logic;
        user_key :in std_logic_vector(127 downto 0);
        d_in : in std_logic_vector (63 downto 0);
        key_done: out std_logic;
        done: out std_logic;
        d_out :out std_logic_vector (63 downto 0)
    );
end RC5;

architecture Behavioral of RC5 is
    component RC5_KEY_GENERATION is
        port(
            clk: in std_logic;
            rst: in std_logic;
            start_generating_skey: in std_logic;
            user_key: in std_logic_vector(127 downto 0);
            key_done: out std_logic;
            skey: out keyarray
        );
    end component RC5_KEY_GENERATION;

    component RC5_ENC IS
        PORT(
            clk: in std_logic;
            rst: in std_logic;
            start_encryption: in std_logic;
            skey: in keyarray;
            d_in: in	std_logic_vector(63 DOWNTO 0);
            d_out: out	std_logic_vector(63 DOWNTO 0);
            done: out	std_logic
        );
    END component;

    component RC5_DEC IS
        PORT(
            clk: in std_logic;
            rst: in std_logic;
            start_decryption: in std_logic;
            skey: in keyarray;
            d_in: in	std_logic_vector(63 DOWNTO 0);
            d_out: out	std_logic_vector(63 DOWNTO 0);
            done: out	std_logic
        );
    END component;

    signal skey: work.RC5_PACKAGE.KEYARRAY;
    signal encoded_value, decoded_value : std_logic_vector(63 downto 0);
    signal encoding_done : std_logic;
    signal decoding_done : std_logic;
    signal key_generation_done : std_logic;
    TYPE  StateType IS (STATE_ENC,STATE_DEC,STATE_IDLE,STATE_KEY);
    SIGNAL  state   :   StateType;

begin
    encryption: 	RC5_ENC port map (d_in => d_in,d_out => encoded_value,skey=>skey,clk => clk,rst => rst,start_encryption => start_encryption,done => encoding_done);
    key_generation: 	RC5_KEY_GENERATION port map (skey => skey, clk => clk, rst => rst, start_generating_skey => start_generating_skey, key_done => key_generation_done,user_key=>user_key);
    decryption: 	RC5_DEC port map (d_in => d_in,d_out => decoded_value,clk => clk,skey=>skey,rst => rst,start_decryption => start_decryption,done => decoding_done);
    key_done<=key_generation_done;
    process(rst,clk)
    begin
        if(key_generation_done='1')then
            if( start_encryption='1' and start_decryption='0')then
                state<=STATE_ENC;
            else if(start_encryption='0' and start_decryption='1') then
                    state<=STATE_DEC;
                else
                    state<=STATE_IDLE;
                end if;
            end if;
        else
            state<=STATE_Key;
        end if;
    end process;

    with state select
 done <= encoding_done when STATE_ENC,
        decoding_done when STATE_DEC,
        '0' when others;
    with state select
 d_out <= encoded_value when STATE_ENC,
        decoded_value when STATE_DEC,
        X"0000000000000000" when others;

end Behavioral;
