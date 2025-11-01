transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/I2C.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/Comprardor.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/contador7.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/contador_8.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/registro7.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/registro8.vhd}
vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/i2c_maquina_estado.vhd}

vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_F/I2C_modelsim.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  I2C_modelsim

add wave *
view structure
view signals
run -all
