library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity divBy3 is
    Port ( clk_in : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end divBy3;



architecture Behavioral of divBy3 is

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
	signal wire3 : std_logic;
	signal wire4 : std_logic;
	signal nor_clkIn :std_logic;

begin
	
	nor_clkIn <= clk_in nor clk_in; --not
	wire1 <= wire3 nor wire2;
	wire4 <= (not wire3) nor nor_clkIn;
	
	clk_out <= wire2 nor wire4;
	
	
	Inst_d_flipflop1: d_flipflop PORT MAP(
		d => wire1,
		reset => reset,
		q => wire2,
		clk => clk_in
	);
	Inst_d_flipflop2: d_flipflop PORT MAP(
		d => wire2,
		reset => reset,
		q => wire3,
		clk => clk_in
	);
end Behavioral;

