set_global_assignment -entity "NewPLL" -library "lib_NewPLL" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "NewPLL" -library "lib_NewPLL" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "NewPLL" -library "lib_NewPLL" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_NewPLL" -name SPD_FILE [file join $::quartus(sip_path) "NewPLL.spd"]

set_global_assignment -library "lib_NewPLL" -name MISC_FILE [file join $::quartus(sip_path) "NewPLL_sim/NewPLL.vo"]
