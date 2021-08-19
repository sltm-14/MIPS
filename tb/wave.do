onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider INPUTS
add wave -noupdate /MIPS_Processor_TB/DUV/clk
add wave -noupdate /MIPS_Processor_TB/DUV/rst
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/in_Port
add wave -noupdate -divider MODULES
add wave -noupdate -group PROGRAM_MEMORY -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/i_Address
add wave -noupdate -group PROGRAM_MEMORY -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/r_Address
add wave -noupdate -group PROGRAM_MEMORY -radix hexadecimal /MIPS_Processor_TB/DUV/ROMProgramMemory/o_Instruction
add wave -noupdate -group CONTROL -radix hexadecimal -childformat {{{/MIPS_Processor_TB/DUV/ControlUnit/OP[5]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ControlUnit/OP[4]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ControlUnit/OP[3]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ControlUnit/OP[2]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ControlUnit/OP[1]} -radix hexadecimal} {{/MIPS_Processor_TB/DUV/ControlUnit/OP[0]} -radix hexadecimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/ControlUnit/OP[5]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ControlUnit/OP[4]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ControlUnit/OP[3]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ControlUnit/OP[2]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ControlUnit/OP[1]} {-height 15 -radix hexadecimal} {/MIPS_Processor_TB/DUV/ControlUnit/OP[0]} {-height 15 -radix hexadecimal}} /MIPS_Processor_TB/DUV/ControlUnit/OP
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/RegDst
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/BranchEQ
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/BranchNE
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/MemRead
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/MemtoReg
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/MemWrite
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/ALUSrc
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/RegWrite
add wave -noupdate -group CONTROL /MIPS_Processor_TB/DUV/ControlUnit/ALUOp
add wave -noupdate -expand -group REGISTER /MIPS_Processor_TB/DUV/Register_File/clk
add wave -noupdate -expand -group REGISTER /MIPS_Processor_TB/DUV/Register_File/rst
add wave -noupdate -expand -group REGISTER /MIPS_Processor_TB/DUV/Register_File/RegWrite
add wave -noupdate -expand -group REGISTER -label {ReadRegister1 (RS)} -radix decimal /MIPS_Processor_TB/DUV/Register_File/ReadRegister1
add wave -noupdate -expand -group REGISTER -label {ReadRegister2 (RT)} -radix decimal /MIPS_Processor_TB/DUV/Register_File/ReadRegister2
add wave -noupdate -expand -group REGISTER -label {WriteReg (RType? RD:RT)} -radix decimal /MIPS_Processor_TB/DUV/Register_File/WriteRegister
add wave -noupdate -expand -group REGISTER -radix decimal /MIPS_Processor_TB/DUV/Register_File/WriteData
add wave -noupdate -expand -group REGISTER -expand -group {$0   $zero} -radix decimal /MIPS_Processor_TB/DUV/Register_File/ZeroRegister/enable
add wave -noupdate -expand -group REGISTER -expand -group {$0   $zero} -radix decimal /MIPS_Processor_TB/DUV/Register_File/ZeroRegister/DataInput
add wave -noupdate -expand -group REGISTER -expand -group {$0   $zero} -radix decimal /MIPS_Processor_TB/DUV/Register_File/ZeroRegister/DataOutput
add wave -noupdate -expand -group REGISTER -expand -group {$1   $at} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[1]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$1   $at} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[1]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$1   $at} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[1]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$2   $v0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[2]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$2   $v0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[2]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$2   $v0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[2]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$3   $v1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[3]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$3   $v1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[3]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$3   $v1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[3]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$4   $a0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[4]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$4   $a0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[4]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$4   $a0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[4]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$5   $a1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[5]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$5   $a1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[5]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$5   $a1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[5]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$6   $a2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[6]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$6   $a2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[6]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$6   $a2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[6]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$7   $a3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[7]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$7   $a3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[7]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$7   $a3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[7]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$8   $t0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[8]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$8   $t0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[8]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$8   $t0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[8]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$9   $t1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[9]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$9   $t1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[9]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$9   $t1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[9]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$10 $t2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[10]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$10 $t2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[10]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$10 $t2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[10]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$11 $t3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[11]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$11 $t3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[11]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$11 $t3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[11]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$12 $t4} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[12]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$12 $t4} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[12]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$12 $t4} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[12]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$13 $t5} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[13]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$13 $t5} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[13]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$13 $t5} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[13]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$14 $t6} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[14]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$14 $t6} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[14]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$14 $t6} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[14]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$15 $t7} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[15]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$15 $t7} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[15]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$15 $t7} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[15]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$16 $s0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[16]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$16 $s0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[16]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$16 $s0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[16]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$17 $s1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[17]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$17 $s1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[17]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$17 $s1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[17]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$18 $s2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[18]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$18 $s2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[18]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$18 $s2} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[18]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$19 $s3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[19]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$19 $s3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[19]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$19 $s3} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[19]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$20 $s4} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[20]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$20 $s4} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[20]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$20 $s4} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[20]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$21 $s5} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[21]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$21 $s5} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[21]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$21 $s5} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[21]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$22 $s6} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[22]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$22 $s6} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[22]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$22 $s6} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[22]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$23 $s7} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[23]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$23 $s7} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[23]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$23 $s7} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[23]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$24 $t8} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[24]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$24 $t8} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[24]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$24 $t8} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[24]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$25 $t9} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[25]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$25 $t9} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[25]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$25 $t9} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[25]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$26 $k0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[26]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$26 $k0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[26]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$26 $k0} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[26]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$27 $k1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[27]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$27 $k1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[27]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$27 $k1} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[27]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$28 $gp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[28]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$28 $gp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[28]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$28 $gp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[28]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$29 $sp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[29]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$29 $sp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[29]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$29 $sp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[29]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$30 $fp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[30]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$30 $fp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[30]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$30 $fp} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[30]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -expand -group {$31 $ra} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[31]/Register_i/enable}
add wave -noupdate -expand -group REGISTER -expand -group {$31 $ra} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[31]/Register_i/DataInput}
add wave -noupdate -expand -group REGISTER -expand -group {$31 $ra} -radix decimal {/MIPS_Processor_TB/DUV/Register_File/Registeri[31]/Register_i/DataOutput}
add wave -noupdate -expand -group REGISTER -radix decimal /MIPS_Processor_TB/DUV/Register_File/ReadData1
add wave -noupdate -expand -group REGISTER -radix decimal /MIPS_Processor_TB/DUV/Register_File/ReadData2
add wave -noupdate -divider OUTPUTS
add wave -noupdate -radix decimal -childformat {{{/MIPS_Processor_TB/DUV/out_ALUResult[31]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[30]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[29]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[28]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[27]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[26]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[25]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[24]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[23]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[22]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[21]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[20]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[19]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[18]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[17]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[16]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[15]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[14]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[13]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[12]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[11]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[10]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[9]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[8]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[7]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[6]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[5]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[4]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[3]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[2]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[1]} -radix decimal} {{/MIPS_Processor_TB/DUV/out_ALUResult[0]} -radix decimal}} -subitemconfig {{/MIPS_Processor_TB/DUV/out_ALUResult[31]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[30]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[29]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[28]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[27]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[26]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[25]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[24]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[23]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[22]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[21]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[20]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[19]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[18]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[17]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[16]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[15]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[14]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[13]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[12]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[11]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[10]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[9]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[8]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[7]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[6]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[5]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[4]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[3]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[2]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[1]} {-height 15 -radix decimal} {/MIPS_Processor_TB/DUV/out_ALUResult[0]} {-height 15 -radix decimal}} /MIPS_Processor_TB/DUV/out_ALUResult
add wave -noupdate -radix unsigned /MIPS_Processor_TB/DUV/out_Port
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 211
configure wave -valuecolwidth 64
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
WaveRestoreZoom {50 ps} {124 ps}
