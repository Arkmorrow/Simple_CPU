transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/Control\ Sign {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/Control Sign/datapath_TB.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/Control\ Sign {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/Control Sign/datapath.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/Control\ Sign {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/Control Sign/Control_Sign.v}

vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/Control\ Sign {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/Control Sign/Control_Sign.v}
vlog -vlog01compat -work work +incdir+C:/USYD/2021\ SEMESTER\ 1/ELEC2602/Project/Control\ Sign {C:/USYD/2021 SEMESTER 1/ELEC2602/Project/Control Sign/datapath.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  datapath_TB

add wave *
view structure
view signals
run -all
