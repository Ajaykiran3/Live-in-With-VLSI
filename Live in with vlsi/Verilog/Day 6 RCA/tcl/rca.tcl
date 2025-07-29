set design rca
set_attribute hdl_search_path {../rtl}
set_attribute lib_search_path {../library}
set_attribute library {slow.lib fast.lib typical.lib}
set_attribute lef_library {gsclib045.lef gsclib045.lef}
read_hdl {rca.v}
elaborate
dc::get_ports
synthesize -to_generic
synthesize -to_mapped
report timing >> timing.rpt
report area >> area.rpt
report power >> power.rpt
report gates >> gates.rpt
report summary >> summary.rpt
write_hdl >> netlist.v
