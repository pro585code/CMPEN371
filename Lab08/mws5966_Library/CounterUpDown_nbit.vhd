----------------------------------------------------------------------------
-- Entity:        CounterUpDown
-- Written By:    Michael Stumpf
-- Date Created:  11 Sep 15
-- Description:   ccounts up and down based on button presses 
--
-- Revision History (date, initials, description):
-- 	(none)
-- Dependencies:
--		CompareGTR
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-------------------------------------------------------------------------------
entity CounterUpDown_nbit is

	generic (n : integer := 8);
	port (EN 	: in STD_LOGIC;
			UP 	: in STD_LOGIC;
			DOWN	: in STD_LOGIC;
			CLK 	: in STD_LOGIC;
			CLR 	: in STD_LOGIC;
			Q 		: out STD_LOGIC_VECTOR (n-1 downto 0));
			
end CounterUpDown_nbit;
-----------------------------------------------

architecture Behavioral of CounterUpDown_nbit is

signal   count : STD_LOGIC_VECTOR (n-1 downto 0):= (others => '0') ;

begin
	
	process (CLK, count) is 
		begin 
			if (CLK'event and CLK='1') then 
				if ( EN ='1') then	
					if(up = '1') then
						count <= STD_LOGIC_VECTOR(unsigned(count)+1);
					elsif (down = '1') then 
						count <= STD_LOGIC_VECTOR(unsigned(count)-1);
					elsif(CLR = '1') then 
						count <= (others => '0');
					end if;
				end if;
			end if;
			Q <= count; 
	end process;
end Behavioral;
