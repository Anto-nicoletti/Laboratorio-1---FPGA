vlog -work work C:/Users/toni/Desktop/Proyectos/Carpeta_A/simulation/modelsim/SimBloque1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SumadorBlock1_vlg_vec_tst
onerror {resume}
add wave {SumadorBlock1_vlg_vec_tst/i1/A}
add wave {SumadorBlock1_vlg_vec_tst/i1/B}
add wave {SumadorBlock1_vlg_vec_tst/i1/Cin}
add wave {SumadorBlock1_vlg_vec_tst/i1/Cout}
add wave {SumadorBlock1_vlg_vec_tst/i1/S}
run -all
