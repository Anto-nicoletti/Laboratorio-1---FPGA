onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multiplicador_con_signo_modelsim/A0
add wave -noupdate /multiplicador_con_signo_modelsim/A1
add wave -noupdate /multiplicador_con_signo_modelsim/B0
add wave -noupdate /multiplicador_con_signo_modelsim/B1
add wave -noupdate /multiplicador_con_signo_modelsim/CLK
add wave -noupdate /multiplicador_con_signo_modelsim/P0
add wave -noupdate /multiplicador_con_signo_modelsim/P1
add wave -noupdate /multiplicador_con_signo_modelsim/P2
add wave -noupdate /multiplicador_con_signo_modelsim/P3
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {250467 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 91
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {745738 ps}
