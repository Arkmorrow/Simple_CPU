transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/program_counter.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/ram_infer.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/processor_TB.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/processor.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_state_register.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_next_state.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_given_state.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_combin.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/datapath.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/Control_Sign.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/rom_16.v}

vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/ram_infer.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/processor_TB.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/processor.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_state_register.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_combin.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_given_state.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/FSM_next_state.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/datapath.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/Control_Sign.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/program_counter.v}
vlog -vlog01compat -work work +incdir+E:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/procressor_ram {E:/USYD/2021 SEMESTER 1/ELEC2602/Project/procressor_ram/rom_16.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  processor_TB

add wave *
view structure
view signals
run -all
