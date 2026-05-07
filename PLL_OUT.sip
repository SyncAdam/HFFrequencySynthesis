set_global_assignment -entity "PLL_OUT" -library "lib_PLL_OUT" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "PLL_OUT" -library "lib_PLL_OUT" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "PLL_OUT" -library "lib_PLL_OUT" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL_OUT" -name SPD_FILE [file join $::quartus(sip_path) "PLL_OUT.spd"]

set_global_assignment -library "lib_PLL_OUT" -name MISC_FILE [file join $::quartus(sip_path) "PLL_OUT_sim/PLL_OUT.vho"]
