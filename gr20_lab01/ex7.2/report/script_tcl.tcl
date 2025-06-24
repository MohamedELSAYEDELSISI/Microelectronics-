gui start

analyze -library WORK -format vhdl {/home/ms25.20/A_zhaohu/cap1/Alu/syn/constants.vhd}

analyze -library WORK -format vhdl {/home/ms25.20/A_zhaohu/cap1/Alu/syn/alu_type.vhd}

analyze -library WORK -format vhdl {/home/ms25.20/A_zhaohu/cap1/Alu/sy/alu.vhd}


elaborate ALU -architecture BEHAVIOR -library work

compile -exact_map

uplevel #0 { report_area }

uplevel #0 { report_power -analysis_effort low }

uplevel #0 { report_timing -path full -delay max -nworst 1 -max_paths 1 -significant_digits 2 -sort_by group }


