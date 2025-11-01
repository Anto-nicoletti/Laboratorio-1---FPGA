transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Sumador.vho}

vcom -93 -work work {/home/antonio/Proyectos/Carpeta_A/sumador_bench.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  sumador_bench

add wave *
view structure
view signals
run -all
