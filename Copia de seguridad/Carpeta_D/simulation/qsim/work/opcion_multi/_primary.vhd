library verilog;
use verilog.vl_types.all;
entity opcion_multi is
    port(
        A_unsigned      : in     vl_logic_vector(1 downto 0);
        B_unsigned      : in     vl_logic_vector(1 downto 0);
        P_unsigned      : out    vl_logic_vector(3 downto 0);
        A_signed        : in     vl_logic_vector(1 downto 0);
        B_signed        : in     vl_logic_vector(1 downto 0);
        P_signed        : out    vl_logic_vector(3 downto 0)
    );
end opcion_multi;
