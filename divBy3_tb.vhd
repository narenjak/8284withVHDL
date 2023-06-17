LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY divBy3_tb IS
END divBy3_tb;
 
ARCHITECTURE behavior OF divBy3_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divBy3
    PORT(
         clk_in : IN  std_logic;
         reset : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal clk_out : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 10 ns;
   constant clk_out_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divBy3 PORT MAP (
          clk_in => clk_in,
          reset => reset,
          clk_out => clk_out
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 
--   clk_out_process :process
--   begin
--		clk_out <= '0';
--		wait for clk_out_period/2;
--		clk_out <= '1';
--		wait for clk_out_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      reset <= '1';
		wait for 15 ns;
      reset <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
