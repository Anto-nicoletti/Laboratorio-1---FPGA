onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /brench_maquina2/reset
add wave -noupdate /brench_maquina2/clk
add wave -noupdate /brench_maquina2/x
add wave -noupdate /brench_maquina2/output
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2913782 ps} 0}
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
WaveRestoreZoom {2822400 ps} {2950355 ps}
