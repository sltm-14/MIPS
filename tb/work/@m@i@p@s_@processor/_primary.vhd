library verilog;
use verilog.vl_types.all;
entity MIPS_Processor is
    generic(
        MEMORY_DEPTH    : integer := 32
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        in_Port         : in     vl_logic_vector(7 downto 0);
        out_ALUResult   : out    vl_logic_vector(31 downto 0);
        out_Port        : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MEMORY_DEPTH : constant is 1;
end MIPS_Processor;
