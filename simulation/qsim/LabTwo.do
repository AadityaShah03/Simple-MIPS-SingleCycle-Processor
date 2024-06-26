onerror {quit -f}
vlib work
vlog -work work LabTwo.vo
vlog -work work LabTwo.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.nBit2to1Mux_vlg_vec_tst
vcd file -direction LabTwo.msim.vcd
vcd add -internal nBit2to1Mux_vlg_vec_tst/*
vcd add -internal nBit2to1Mux_vlg_vec_tst/i1/*
add wave /*
run -all
