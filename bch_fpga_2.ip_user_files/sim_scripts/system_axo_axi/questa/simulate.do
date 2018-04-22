onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib system_axo_axi_opt

do {wave.do}

view wave
view structure
view signals

do {system_axo_axi.udo}

run -all

quit -force
