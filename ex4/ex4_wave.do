# compile

vlog ex4.v
vlog ex4_tb.v

# siumulate
 vsim -debugdb testbench

# probe signals
add wave -noupdate -format -hex /testbench/ex4_instance/a
add wave -noupdate -format -hex /testbench/ex4_instance/g

# run 100ns
run 100
