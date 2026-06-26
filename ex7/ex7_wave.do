# compile

vlog ex7.v
vlog ex7_tb.v

# simulate
vsim -debugdb testbench

# probe signals
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/a
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/b
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/c
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/d
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/e
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/tmp1
add wave -noupdate -format -literal -radix dec /testbench/ex7_instance/tmp2


# run 100ns
run 100ns
