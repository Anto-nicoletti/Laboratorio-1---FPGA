onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /opcion_multi_bench/A_unsigned
add wave -noupdate /opcion_multi_bench/B_unsigned
add wave -noupdate /opcion_multi_bench/P_unsigned
add wave -noupdate /opcion_multi_bench/A_signed
add wave -noupdate /opcion_multi_bench/B_signed
add wave -noupdate /opcion_multi_bench/P_signed
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {183632 ps} 0}
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
WaveRestoreZoom {22213 ps} {335673 ps}
