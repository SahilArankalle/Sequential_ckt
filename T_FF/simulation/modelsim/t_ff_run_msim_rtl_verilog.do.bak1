transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Sahil/Desktop/Maven/Programs/Lab\ 4/T_FF {C:/Users/Sahil/Desktop/Maven/Programs/Lab 4/T_FF/t_ff.v}
vlog -vlog01compat -work work +incdir+C:/Users/Sahil/Desktop/Maven/Programs/Lab\ 4/T_FF {C:/Users/Sahil/Desktop/Maven/Programs/Lab 4/T_FF/d_ff.v}

vlog -vlog01compat -work work +incdir+C:/Users/Sahil/Desktop/Maven/Programs/Lab\ 4/T_FF {C:/Users/Sahil/Desktop/Maven/Programs/Lab 4/T_FF/t_ff_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L maxv_ver -L rtl_work -L work -voptargs="+acc"  t_ff_tb

add wave *
view structure
view signals
run -all
