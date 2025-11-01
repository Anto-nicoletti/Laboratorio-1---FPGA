library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity opcion_multi_bench is
end opcion_multi_bench;

architecture rtl of opcion_multi_bench is

    signal A_unsigned : unsigned(1 downto 0) := (others => '0');
    signal B_unsigned : unsigned(1 downto 0) := (others => '0');
    signal P_unsigned : unsigned(3 downto 0);

    signal A_signed   : signed(1 downto 0) := (others => '0');
    signal B_signed   : signed(1 downto 0) := (others => '0');
    signal P_signed   : signed(3 downto 0);

begin

    UUT: entity work.opcion_multi
        port map (
            A_unsigned => A_unsigned,
            B_unsigned => B_unsigned,
            P_unsigned => P_unsigned,
            A_signed   => A_signed,
            B_signed   => B_signed,
            P_signed   => P_signed
        );

    stim_proc : process
    begin
        
        A_unsigned <= "00"; B_unsigned <= "00";
        A_signed   <= "00"; B_signed   <= "00";
        wait for 20 ns;
		  
        A_unsigned <= "00"; B_unsigned <= "01";
        A_signed   <= "00"; B_signed   <= "01";
        wait for 20 ns;
		  
        A_unsigned <= "00"; B_unsigned <= "10";
        A_signed   <= "00"; B_signed   <= "10";
        wait for 20 ns;
		  
        A_unsigned <= "00"; B_unsigned <= "11";
        A_signed   <= "00"; B_signed   <= "11";
        wait for 20 ns;
		  
		  A_unsigned <= "01"; B_unsigned <= "00";
        A_signed   <= "01"; B_signed   <= "00";
        wait for 20 ns;
		  
        A_unsigned <= "01"; B_unsigned <= "01";
        A_signed   <= "01"; B_signed   <= "01";
        wait for 20 ns;
		  
        A_unsigned <= "01"; B_unsigned <= "10";
        A_signed   <= "01"; B_signed   <= "10";
        wait for 20 ns;
		  
        A_unsigned <= "01"; B_unsigned <= "11";
        A_signed   <= "01"; B_signed   <= "11";
        wait for 20 ns;
		  
		  A_unsigned <= "10"; B_unsigned <= "00";
        A_signed   <= "10"; B_signed   <= "00";
        wait for 20 ns;
		  
        A_unsigned <= "10"; B_unsigned <= "01";
        A_signed   <= "10"; B_signed   <= "01";
        wait for 20 ns;
		  
        A_unsigned <= "10"; B_unsigned <= "10";
        A_signed   <= "10"; B_signed   <= "10";
        wait for 20 ns;
		  
        A_unsigned <= "10"; B_unsigned <= "11";
        A_signed   <= "10"; B_signed   <= "11";
        wait for 20 ns;
		  
		  A_unsigned <= "11"; B_unsigned <= "00";
        A_signed   <= "11"; B_signed   <= "00";
        wait for 20 ns;
		  
        A_unsigned <= "11"; B_unsigned <= "01";
        A_signed   <= "11"; B_signed   <= "01";
        wait for 20 ns;
		  
        A_unsigned <= "11"; B_unsigned <= "10";
        A_signed   <= "11"; B_signed   <= "10";
        wait for 20 ns;
		  
        A_unsigned <= "11"; B_unsigned <= "11";
        A_signed   <= "11"; B_signed   <= "11";
        wait for 20 ns;
		  
        wait;
    end process;

end rtl;

