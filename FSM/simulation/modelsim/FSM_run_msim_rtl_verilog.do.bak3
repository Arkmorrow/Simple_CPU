transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_TB.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_state_register.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_next_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_given_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_combin.v}

vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_combin.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_given_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_next_state.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_state_register.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/FSM {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/FSM/FSM_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  FSM_TB

add wave *
view structure
view signals
run -all
