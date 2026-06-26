# compile

vlog ex4.v
vlog ex4_tb.v

# simulate
vsim -debugdb testbench

# probe signals
add wave -noupdate -format -hex  /testbench/ex4_instance/a
add wave -noupdate -format -hex  /testbench/ex4_instance/b
add wave -noupdate -format -hex  /testbench/ex4_instance/c
add wave -noupdate -format -hex  /testbench/ex4_instance/d
add wave -noupdate -format -hex  /testbench/ex4_instance/e
add wave -noupdate -format -hex  /testbench/ex4_instance/f
add wave -noupdate -format -hex  /testbench/ex4_instance/g
add wave -noupdate -format -hex  /testbench/ex4_instance/h
add wave -noupdate -format -hex  /testbench/ex4_instance/sel
add wave -noupdate -format -hex  /testbench/ex4_instance/z

#run 100ns
run 100
