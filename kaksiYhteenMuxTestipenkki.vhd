library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity kaksiYhteenMuxTestipenkki is
end;

architecture bench of kaksiYhteenMuxTestipenkki is

  component ylinKerros is
      Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
             B   : in  STD_LOGIC_VECTOR (31 downto 0);
             SEL   : in  STD_LOGIC_VECTOR (31 downto 0);
             X   : out STD_LOGIC_VECTOR (31 downto 0));
  end component;
  
  ---------------------------------------
  signal Atb: std_logic_vector (31 downto 0);
  signal Btb: std_logic_vector (31 downto 0);
  signal SELtb: std_logic_vector (31 downto 0);
  signal Xtb: std_logic_vector (31 downto 0);
  
  ----------------------------------------------
  
  for all : ylinKerros use entity WORK.ylinKerros(RTL);
  
  
  begin

  uut: ylinKerros port map ( A => Atb,
                             B   => Btb,
                             SEL   => SELtb,
                             X   => Xtb );
  --------------------------------------------------------- 
  
  process
  begin
  	report "Testaus käyntiin";
  
	Atb <= "11110000111100001111000011110000";
    Btb <= "00001111000011110000111100001111";
    SELtb <= "10101010101010101010101010101010";
	wait for 100ns;
   
	assert Xtb = "10100101101001011010010110100101";
    	report "Jälkeläisen pitäisi olla 10100101101001011010010110100101";
        
    SELtb <= "11111111111111111111111111111111";
    wait for 100ns;
    assert Xtb = "11110000111100001111000011110000";
    	report "Jälkeläisen pitäisi olla 11110000111100001111000011110000"; 
    wait for 100ns;
    SELtb <= "00000000000000000000000000000000";
    
    wait for 100ns;
    
    assert Xtb = "00001111000011110000111100001111";
    	report "Jälkeläisen pitäisi olla 00001111000011110000111100001111";
	
    report "Testaus päättyy";
	wait;
    end process;
    
    end bench;
    
    -----------------------------------------



