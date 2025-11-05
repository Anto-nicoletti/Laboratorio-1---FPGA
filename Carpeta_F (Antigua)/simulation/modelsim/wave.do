onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /i2c_modelsim/Contador2_mod8
add wave -noupdate /i2c_modelsim/Contador1_mod7
add wave -noupdate /i2c_modelsim/dire
add wave -noupdate /i2c_modelsim/Esclavo
add wave -noupdate /i2c_modelsim/soy
add wave -noupdate /i2c_modelsim/reset
add wave -noupdate /i2c_modelsim/Reset_registro
add wave -noupdate /i2c_modelsim/Clock_registro
add wave -noupdate /i2c_modelsim/CARGA_DIRECCION
add wave -noupdate /i2c_modelsim/clock
add wave -noupdate /i2c_modelsim/SCL
add wave -noupdate /i2c_modelsim/SDA
add wave -noupdate /i2c_modelsim/ACK
add wave -noupdate /i2c_modelsim/DATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {350039 ps} 1} {{Cursor 2} {857357 ps} 0}
quietly wave cursor active 2
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
WaveRestoreZoom {365781 ps} {1030855 ps}
