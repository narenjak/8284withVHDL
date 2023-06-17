library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_flipflop is
    Port ( d : in  STD_LOGIC ;
			  reset : in std_logic := '0';
           q : out  STD_LOGIC;
--           q_not : out  STD_LOGIC;
           clk : in  STD_LOGIC);
end d_flipflop;

architecture Behavioral of d_flipflop is
	signal q_reg : std_logic;
--	signal q_not_reg : std_logic;
begin
	process(clk)
	begin 
		if (reset = '1') then
			q_reg <= '0';
--			q_not_reg <= '1';
		elsif(rising_edge(clk)) then
			q_reg <= d; 
--			q_not_reg <= not q_reg;
		end if;       
	end process;
	
	q <= q_reg;
--	q_not <= q_not_reg;
	
end Behavioral;

