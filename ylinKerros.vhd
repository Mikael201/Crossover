	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	entity ylinKerros is
	    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
	           B : in  STD_LOGIC_VECTOR (31 downto 0);
	           SEL : in  STD_LOGIC_VECTOR (31 downto 0);
	           X : out  STD_LOGIC_VECTOR (31 downto 0));    
	end ylinKerros;
	architecture rtl of ylinKerros is
        
COMPONENT kaksiYhteenMux is
    Port ( A_mux   : in  STD_LOGIC;
           B_mux   : in  STD_LOGIC;
           SEL_mux : in  STD_LOGIC;
           X_mux   : out STD_LOGIC);
END COMPONENT;

	signal At: std_logic_vector (31 downto 0);
    signal Bt: std_logic_vector (31 downto 0);
    signal SELt: std_logic_vector (31 downto 0);
    signal Xt: std_logic_vector (31 downto 0);
  
   	begin
    
    
	g1 : for i in 31 downto 0 generate   
         mux_is : kaksiYhteenMux port map( 
         At(i), Bt(i), SELt(i), Xt(i));
 	end generate;
   
	 
   	  At<=A;
      Bt<=B;
      SELt<=SEL;
      X<=Xt;
      
    
	end rtl;
    
   





















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









































	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	entity ylinKerros is
	    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
	           B : in  STD_LOGIC_VECTOR (31 downto 0);
	           SEL : in  STD_LOGIC_VECTOR (31 downto 0);
	           X : out  STD_LOGIC_VECTOR (31 downto 0));    
	end ylinKerros;
	architecture rtl of ylinKerros is
        
COMPONENT kaksiYhteenMux is
    Port ( A_mux   : in  STD_LOGIC;
           B_mux   : in  STD_LOGIC;
           SEL_mux : in  STD_LOGIC;
           X_mux   : out STD_LOGIC);
END COMPONENT;

	signal At: std_logic_vector (31 downto 0);
    signal Bt: std_logic_vector (31 downto 0);
    signal SELt: std_logic_vector (31 downto 0);
    signal Xt: std_logic_vector (31 downto 0);
  
   	begin
    
    
	g1 : for i in 31 downto 0 generate   
         mux_is : kaksiYhteenMux port map( 
         At(i), Bt(i), SELt(i), Xt(i));
 	end generate;
   
	 
   	  At<=A;
      Bt<=B;
      SELt<=SEL;
      X<=Xt;
      
    
	end rtl;
    
   
