transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Opcion_multiplicador.vho}

vcom -93 -work work {C:/Users/toni/Desktop/Proyectos/Carpeta_D/Opcion_multiplicador_bench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  Opcion_multiplicado_bench

add wave *
view structure
view signals
run -all
