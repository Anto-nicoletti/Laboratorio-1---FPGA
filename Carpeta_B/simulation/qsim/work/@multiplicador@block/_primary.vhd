library verilog;
use verilog.vl_types.all;
entity MultiplicadorBlock is
    port(
        P1              : out    vl_logic;
        A1              : in     vl_logic;
        B0              : in     vl_logic;
        A0              : in     vl_logic;
        B1              : in     vl_logic;
        P2              : out    vl_logic;
        P3              : out    vl_logic;
        P0              : out    vl_logic
    );
end MultiplicadorBlock;
