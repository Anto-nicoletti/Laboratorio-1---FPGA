onerror {quit -f}
vlib work
vlog -work work Opcion_multiplicador.vo
vlog -work work Opcion_multiplicador.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.opcion_multi_vlg_vec_tst
vcd file -direction Opcion_multiplicador.msim.vcd
vcd add -internal opcion_multi_vlg_vec_tst/*
vcd add -internal opcion_multi_vlg_vec_tst/i1/*
add wave /*
run -all
