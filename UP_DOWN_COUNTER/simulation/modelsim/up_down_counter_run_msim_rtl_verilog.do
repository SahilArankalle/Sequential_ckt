transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Sahil/Desktop/Maven/Programs/Lab\ 4/UP_DOWN_COUNTER {C:/Users/Sahil/Desktop/Maven/Programs/Lab 4/UP_DOWN_COUNTER/up_down_counter.v}

vlog -vlog01compat -work work +incdir+C:/Users/Sahil/Desktop/Maven/Programs/Lab\ 4/UP_DOWN_COUNTER {C:/Users/Sahil/Desktop/Maven/Programs/Lab 4/UP_DOWN_COUNTER/up_down_counter_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  up_down_counter_tb

add wave *
view structure
view signals
run -all
