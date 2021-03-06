transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/processor.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/processor_TB.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/FSM_next_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/FSM_given_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/datapath.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/Control_Sign.v}

vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/Control_Sign.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/datapath.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/FSM_combin.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/FSM_given_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/FSM_next_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/FSM_state_register.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/processor.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/processor {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/processor/processor_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  processor_TB

add wave *
view structure
view signals
run -all
