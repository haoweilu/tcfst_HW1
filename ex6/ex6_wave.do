# compile

vlog ex6.v
vlog ex6_tb.v

# simulate
vsim -debugdb testbench

# probe signals
add wave -noupdate -format -hex  /testbench/ex6_instance/a
add wave -noupdate -format -hex  /testbench/ex6_instance/b
add wave -noupdate -format -hex  /testbench/ex6_instance/c
add wave -noupdate -format -hex  /testbench/ex6_instance/d
add wave -noupdate -format -hex  /testbench/ex6_instance/e
add wave -noupdate -format -hex  /testbench/ex6_instance/tmp1
add wave -noupdate -format -hex  /testbench/ex6_instance/tmp2
add wave -noupdate -format -hex  /testbench/ex6_instance/tmp3

# run 100ns
run 100
