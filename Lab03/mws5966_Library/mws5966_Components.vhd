----------------------------------------------------------------------------
-- Entity:        mws5966_Components
-- Written By:    Michael Stumpf
-- Date Created:  9 Sep 15
-- Description:   Package definition for common components
--
-- Revision History (date, initials, description):
-- 	(none)
-- Dependencies:
--  All components declared in this definition
----------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

----------------------------------------------------------------------------
package mws5966_Components is

	
    component AdderSubtractor_nbit is
		generic(N: integer :=4);
		Port   (A 			  : in  STD_LOGIC_VECTOR(n-1 downto 0);
				  B			  : in  STD_LOGIC_VECTOR(n-1 downto 0);
				  SUBTRACT    : in  STD_LOGIC;
              SUM  		  : out STD_LOGIC_VECTOR(n-1 downto 0);
              OVERFLOW    : out  STD_LOGIC);
   end component;
	
	component Average_nbit is
	generic(n : integer :=4);
	   port(A_avg   : in  STD_LOGIC_VECTOR (n-1 downto 0);
		     B_avg   : in  STD_LOGIC_VECTOR (n-1 downto 0);
		     C_avg   : in  STD_LOGIC_VECTOR (n-1 downto 0);
		     D_avg   : in  STD_LOGIC_VECTOR (n-1 downto 0);
		     avg_out : out STD_LOGIC_VECTOR (n-1 downto 0));
   end component;

	component CompareGRT is
		generic ( N   : integer); 
		Port    ( A   : in  STD_LOGIC_VECTOR (n-1 downto 0);
					 B   : in  STD_LOGIC_VECTOR (n-1 downto 0);
					 GRT : out STD_LOGIC);
	end component;
	
	component CompareLES is
		generic( N 	 : integer); 
      Port   ( A 	 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				   B 	 : in  STD_LOGIC_VECTOR (n-1 downto 0);
			      LES : out  STD_LOGIC);
	end component;
	
	component Decoder3to8 is
		port(X  : in STD_LOGIC_VECTOR (3 downto 0);
			  EN :in STD_LOGIC;
		     Y  : out STD_LOGIC_VECTOR (7 downto 0));
	end component;

	component FullAdder is
		port (A     : in  STD_LOGIC;
				B     : in  STD_LOGIC;
				C_in  : in  STD_LOGIC;
				C_out : out STD_LOGIC;
				SUM   : out STD_LOGIC);
	end component;

	component HexToSevenSeg is
		Port (HEX 			: in  STD_LOGIC_VECTOR (3 downto 0);
				SEGMENT     : out  STD_LOGIC_VECTOR(0 to 6));
	end component;
	
	component MAX_nbit is
	 generic( N       : integer);
    Port   ( A_top 	: in  STD_LOGIC_VECTOR(n-1 downto 0);
				 B_top	: in  STD_LOGIC_VECTOR(n-1 downto 0);
				 C_top	: in  STD_LOGIC_VECTOR(n-1 downto 0);
				 D_top	: in  STD_LOGIC_VECTOR(n-1 downto 0);
			    MAX_OUT	: out STD_LOGIC_VECTOR(n-1 downto 0));
	end component;
	
	component MIN_nbit is
	 generic( N       : integer);
    Port   ( A_top 	: in  STD_LOGIC_VECTOR(n-1 downto 0);
				 B_top	: in  STD_LOGIC_VECTOR(n-1 downto 0);
				 C_top	: in  STD_LOGIC_VECTOR(n-1 downto 0);
				 D_top	: in  STD_LOGIC_VECTOR(n-1 downto 0);
		       MIN_OUT	: out STD_LOGIC_VECTOR(n-1 downto 0));
   end component;

	component Mux4to1_4bit is
		Port (X0 	: in  STD_LOGIC_VECTOR (3 downto 0);
				X1		: in  STD_LOGIC_VECTOR (3 downto 0);
				X2   	: in  STD_LOGIC_VECTOR (3 downto 0);
				X3   	: in  STD_LOGIC_VECTOR (3 downto 0);
				SEL  	: in  STD_LOGIC_VECTOR (1 downto 0);
				Y		: out STD_LOGIC_VECTOR (3 downto 0));  
	end component;
	
	component Mux4to1_nbit is
		generic (n    : integer:= 4);
		Port	  ( X0  : in  STD_LOGIC_VECTOR (n-1 downto 0);
					X1	  : in  STD_LOGIC_VECTOR (n-1 downto 0);
					X2   : in  STD_LOGIC_VECTOR (n-1 downto 0);
					X3   : in  STD_LOGIC_VECTOR (n-1 downto 0);
					SEL  : in  STD_LOGIC_VECTOR (1 downto 0);
					Y	  : out STD_LOGIC_VECTOR (n-1 downto 0));  

	end component;

	
	component RCA_nbit 
		generic ( N     : integer);
		port 	  ( A		 : in STD_LOGIC_VECTOR(n-1 downto 0);
					 B		 : in STD_LOGIC_VECTOR(n-1 downto 0);
					 c_in	 : in STD_LOGIC;
					 c_out : out STD_LOGIC;
					 SUM	 : out STD_LOGIC_VECTOR(n-1 downto 0));
	end component; 
		
	component RCA is
		port (C_in 		: in  STD_LOGIC;
            A3 		: in  STD_LOGIC;
            A2 		: in  STD_LOGIC;
            A1 		: in  STD_LOGIC;
            A0 		: in  STD_LOGIC;
            B3 		: in  STD_LOGIC;
            B2 		: in  STD_LOGIC;
            B1 		: in  STD_LOGIC;
            B0 		: in  STD_LOGIC;
            SUM3 		: out  STD_LOGIC;
            SUM2 		: out  STD_LOGIC;
            SUM1 		: out  STD_LOGIC;
            SUM0 		: out  STD_LOGIC;
            C_out 	: out  STD_LOGIC);
	end component;
	
end mws5966_Components;
----------------------------------------------------------------------------



----------------------------------------------------------------------------
package body mws5966_Components is

end mws5966_Components;
----------------------------------------------------------------------------
