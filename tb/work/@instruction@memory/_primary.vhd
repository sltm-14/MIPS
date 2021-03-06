library verilog;
use verilog.vl_types.all;
entity InstructionMemory is
    generic(
        MEMORY_DEPTH    : integer := 32;
        DATA_WIDTH      : integer := 32
    );
    port(
        i_Address       : in     vl_logic_vector;
        o_Instruction   : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MEMORY_DEPTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end InstructionMemory;
