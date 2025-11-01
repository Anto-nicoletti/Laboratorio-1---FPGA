onerror {quit -f}
vlib work
vlog -work work Multiplicador_con_signo.vo
vlog -work work Multiplicador_con_signo.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Multiplicador_con_signo_Block_vlg_vec_tst
vcd file -direction Multiplicador_con_signo.msim.vcd
vcd add -internal Multiplicador_con_signo_Block_vlg_vec_tst/*
vcd add -internal Multiplicador_con_signo_Block_vlg_vec_tst/i1/*
add wave /*
run -all
