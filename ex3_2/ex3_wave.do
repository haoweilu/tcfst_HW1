# compile

vlog ex3.v
vlog ex3_tb.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -hex    /testbench/ex3_instance/a
add wave -noupdate -format -hex    /testbench/ex3_instance/b
add wave -noupdate -format -hex    /testbench/ex3_instance/c
add wave -noupdate -format -hex    /testbench/ex3_instance/d
add wave -noupdate -format -hex    /testbench/ex3_instance/e
add wave -noupdate -format -hex    /testbench/ex3_instance/f
add wave -noupdate -format -logic  /testbench/ex3_instance/sel1
add wave -noupdate -format -logic  /testbench/ex3_instance/sel2
add wave -noupdate -format -logic  /testbench/ex3_instance/sel3
add wave -noupdate -format -logic  /testbench/ex3_instance/sel4
add wave -noupdate -format -logic  /testbench/ex3_instance/sel5
add wave -noupdate -format -hex    /testbench/ex3_instance/g

#run 100ns
run 100
