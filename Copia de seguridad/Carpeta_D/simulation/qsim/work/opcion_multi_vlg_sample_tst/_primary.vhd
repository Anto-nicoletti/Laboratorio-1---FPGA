library verilog;
use verilog.vl_types.all;
entity opcion_multi_vlg_sample_tst is
    port(
        A_signed        : in     vl_logic_vector(1 downto 0);
        A_unsigned      : in     vl_logic_vector(1 downto 0);
        B_signed        : in     vl_logic_vector(1 downto 0);
        B_unsigned      : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end opcion_multi_vlg_sample_tst;
