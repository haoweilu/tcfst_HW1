# compile

vlog ex8.v
vlog ex8_tb.v

# simulate
vsim -debugdb testbench

# probe signals
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/a
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/sel
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/b
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/tmp1
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/tmp2
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/tmp3
add wave -noupdate -format -literal -radix bin /testbench/ex8_instance/tmp4


#run 80ns
run 80ns
