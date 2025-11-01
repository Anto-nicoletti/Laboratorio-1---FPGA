-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity Maquina_de_estado_2 is

	port(
		clk		 : in	std_logic;
		x	 : in	std_logic;
		reset	 : in	std_logic;
		output	 : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of Maquina_de_estado_2 is

	-- Build an enumerated type for the state machine
	type state_type is (s0, s6, s8, s9, s12, s14, s15);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s0;
			
		elsif (rising_edge(clk)) then
			case state is
				when s0=>
					if x = '1' then
						state <= s8;
					else
						state <= s6;
					end if;
					
				when s6=>
						state <= s15;
						
				when s15=>
					if x = '1' then
						state <= s14;
					else
						state <= s9;
					end if;
					
				when s9 =>
						state <= s0;
					
				when s14=>
						state <= s0;
						
				when s8=>
						state <= s12;

				when s12=>
					if x = '1' then
						state <= s14;
					else
						state <= s15;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when s0 =>
				output <= "0000";
			when s6 =>
				output <= "0110";
			when s8 =>
				output <= "1000";
			when s9 =>
				output <= "1001";
			when s12 =>
				output <= "1100";
			when s14 =>
				output <= "1110";
			when s15 =>
				output <= "1111";
		end case;
	end process;

end rtl;
