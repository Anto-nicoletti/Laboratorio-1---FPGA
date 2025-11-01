onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /bench_maquina/reset
add wave -noupdate /bench_maquina/clock
add wave -noupdate /bench_maquina/x
add wave -noupdate /bench_maquina/A
add wave -noupdate /bench_maquina/B
add wave -noupdate /bench_maquina/C
add wave -noupdate /bench_maquina/D
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16773 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {0 ps} {262144 ps}
