# compile

vlog ex2.v
vlog ex2_tb.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -hex   /testbench/ex2_instance/a
add wave -noupdate -format -hex   /testbench/ex2_instance/b
add wave -noupdate -format -logic /testbench/ex2_instance/out1
add wave -noupdate -format -logic /testbench/ex2_instance/out2
add wave -noupdate -format -hex   /testbench/ex2_instance/out3

#run 100ns
run 100
