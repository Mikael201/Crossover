	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;    
    
entity kaksiYhteenMux is
    Port ( A_mux   : in  STD_LOGIC;
           B_mux   : in  STD_LOGIC;
           SEL_mux : in  STD_LOGIC;
           X_mux   : out STD_LOGIC);
end kaksiYhteenMux;

architecture rtl of kaksiYhteenMux is
begin
    X_mux <= A_mux when (SEL_mux = '1') else B_mux;
end rtl;