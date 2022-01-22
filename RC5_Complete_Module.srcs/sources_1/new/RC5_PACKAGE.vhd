LIBRARY	IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE STD.TEXTIO.all;


PACKAGE RC5_PACKAGE IS
    TYPE KEYARRAY IS ARRAY(0 TO 25) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	procedure HEX_READ(L:inout LINE; VALUE:out STD_LOGIC_VECTOR; STATUS: out BOOLEAN);
END RC5_PACKAGE;

package BODY RC5_PACKAGE IS 
procedure Char2QuadBits(C: Character; 
				RESULT: out Bit_Vector(3 downto 0);
				STATUS: out Boolean;
				ISSUE_ERROR: in Boolean) is
	begin
		case c is
			when '0' => result :=  x"0"; STATUS := TRUE;
			when '1' => result :=  x"1"; STATUS := TRUE;
			when '2' => result :=  x"2"; STATUS := TRUE;
			when '3' => result :=  x"3"; STATUS := TRUE;
			when '4' => result :=  x"4"; STATUS := TRUE;
			when '5' => result :=  x"5"; STATUS := TRUE;
			when '6' => result :=  x"6"; STATUS := TRUE;
			when '7' => result :=  x"7"; STATUS := TRUE;
			when '8' => result :=  x"8"; STATUS := TRUE;
			when '9' => result :=  x"9"; STATUS := TRUE;
			when 'A' => result :=  x"A"; STATUS := TRUE;
			when 'B' => result :=  x"B"; STATUS := TRUE;
			when 'C' => result :=  x"C"; STATUS := TRUE;
			when 'D' => result :=  x"D"; STATUS := TRUE;
			when 'E' => result :=  x"E"; STATUS := TRUE;
			when 'F' => result :=  x"F"; STATUS := TRUE;
 
			when 'a' => result :=  x"A"; STATUS := TRUE;
			when 'b' => result :=  x"B"; STATUS := TRUE;
			when 'c' => result :=  x"C"; STATUS := TRUE;
			when 'd' => result :=  x"D"; STATUS := TRUE;
			when 'e' => result :=  x"E"; STATUS := TRUE;
			when 'f' => result :=  x"F"; STATUS := TRUE;
			when others =>
			   if ISSUE_ERROR then 
				   assert FALSE report
					"HREAD Error: Read a '" & c &
					   "', expected a Hex character (0-F).";
			   end if;
			   STATUS := FALSE;
		end case;
	end;
	
	procedure HEX_READ(L:inout LINE; VALUE:out BIT_VECTOR;STATUS: out BOOLEAN) is
		variable ok: boolean;
		variable c:  character;
		constant ne: integer := value'length/4;
		variable bv: bit_vector(0 to value'length-1);
		variable s:  string(1 to ne-1);
	begin
		if value'length mod 4 /= 0 then
			STATUS := FALSE;
			return;
		end if;

		loop					
			read(l,c);
			exit when ((c /= ' ') and (c /= CR) and (c /= HT));
		end loop;

		Char2QuadBits(c, bv(0 to 3), ok, FALSE);
		if not ok then 
			STATUS := FALSE;
			return;
		end if;

		read(L, s, ok);
		if not ok then
			STATUS := FALSE;
			return;
		end if;

		for i in 1 to ne-1 loop
			Char2QuadBits(s(i), bv(4*i to 4*i+3), ok, FALSE);
			if not ok then
				STATUS := FALSE;
				return;
			end if;
		end loop;
		STATUS := TRUE;
		value := bv;
	end HEX_READ;  
	
	procedure HEX_READ(L:inout LINE; VALUE:out STD_LOGIC_VECTOR;STATUS:out BOOLEAN) is
		variable tmp: bit_vector(VALUE'length-1 downto 0);
	begin
		HEX_READ(L, tmp, STATUS);
		VALUE := To_X01(tmp);
	end HEX_READ;

END RC5_PACKAGE;