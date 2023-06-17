library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divBy2 is
    Port ( clk_in : in  STD_LOGIC;
			  reset : in std_logic := '0';
           clk_out : out  STD_LOGIC);
end divBy2;

architecture Behavioral of divBy2 is

	COMPONENT d_flipflop
	PORT(
		d : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;          
		q : OUT std_logic
--		q_not : OUT std_logic
		);
	END COMPONENT;
	
signal wire1 : std_logic;	
signal wire2 : std_logic;

begin
	
	Inst_d_flipflop: d_flipflop PORT MAP(
		d => wire1,
		reset => reset,
		q => wire2,
--		q_not => wire,
		clk => clk_in
	);
	wire1 <= not wire2;
	clk_out <= wire2;

end Behavioral;


