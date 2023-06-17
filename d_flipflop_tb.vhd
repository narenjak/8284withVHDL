LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_flipflop_tb IS
END d_flipflop_tb;
 
ARCHITECTURE behavior OF d_flipflop_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT d_flipflop
    PORT(
         d : IN  std_logic;
         q : OUT  std_logic;
			reset : in std_logic := '0';
--         q_not : OUT  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
   signal clk : std_logic := '0';
	signal reset : std_logic := '0';


 	--Outputs
   signal q : std_logic;
--   signal q_not : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: d_flipflop PORT MAP (
          d => d,
          q => q,
			 reset => reset,
--          q_not => q_not,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 95 ns;	
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait for 100 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		reset <= '1';
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;
		d <= '1';
		wait for 10 ns;
		d <= '0';
		wait for 10 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
