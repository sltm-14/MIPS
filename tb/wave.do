onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider INPUTS
add wave -noupdate /MIPS_Processor_TB/DUV/clk
add wave -noupdate /MIPS_Processor_TB/DUV/rst
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/in_Port
add wave -noupdate -divider WIRES
add wave -noupdate /MIPS_Processor_TB/DUV/w_BranchNE
add wave -noupdate /MIPS_Processor_TB/DUV/w_BranchEQ
add wave -noupdate /MIPS_Processor_TB/DUV/w_RegDst
add wave -noupdate /MIPS_Processor_TB/DUV/w_NotZeroANDBrachNE
add wave -noupdate /MIPS_Processor_TB/DUV/w_ZeroANDBrachEQ
add wave -noupdate /MIPS_Processor_TB/DUV/w_ORForBranch
add wave -noupdate /MIPS_Processor_TB/DUV/w_ALUSrc
add wave -noupdate /MIPS_Processor_TB/DUV/w_RegWrite
add wave -noupdate /MIPS_Processor_TB/DUV/w_Zero
add wave -noupdate /MIPS_Processor_TB/DUV/w_ALUOp
add wave -noupdate /MIPS_Processor_TB/DUV/w_ALUOperation
add wave -noupdate /MIPS_Processor_TB/DUV/w_WriteRegister
add wave -noupdate /MIPS_Processor_TB/DUV/w_Instruction
add wave -noupdate /MIPS_Processor_TB/DUV/w_ReadData1
add wave -noupdate /MIPS_Processor_TB/DUV/w_ReadData2
add wave -noupdate /MIPS_Processor_TB/DUV/w_InmmediateExtend
add wave -noupdate /MIPS_Processor_TB/DUV/w_ReadData2OrInmmediate
add wave -noupdate /MIPS_Processor_TB/DUV/w_ALUResult
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/w_PC_4
add wave -noupdate /MIPS_Processor_TB/DUV/w_InmmediateExtendAndShifted
add wave -noupdate /MIPS_Processor_TB/DUV/w_PCtoBranch
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/w_MUX_PC
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/w_PC
add wave -noupdate /MIPS_Processor_TB/DUV/ALUStatus
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/out_ALUResult
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/out_Port
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {106 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {126 ps}
