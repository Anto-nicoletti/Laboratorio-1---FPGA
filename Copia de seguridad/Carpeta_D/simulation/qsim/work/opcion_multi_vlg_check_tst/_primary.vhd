library verilog;
use verilog.vl_types.all;
entity opcion_multi_vlg_check_tst is
    port(
        P_signed        : in     vl_logic_vector(3 downto 0);
        P_unsigned      : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end opcion_multi_vlg_check_tst;
