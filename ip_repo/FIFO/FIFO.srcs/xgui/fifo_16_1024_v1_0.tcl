# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "rd_done" -parent ${Page_0}
  ipgui::add_param $IPINST -name "rd_ing" -parent ${Page_0}
  ipgui::add_param $IPINST -name "rd_wait" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wr_done" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wr_ing" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wr_wait" -parent ${Page_0}


}

proc update_PARAM_VALUE.rd_done { PARAM_VALUE.rd_done } {
	# Procedure called to update rd_done when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.rd_done { PARAM_VALUE.rd_done } {
	# Procedure called to validate rd_done
	return true
}

proc update_PARAM_VALUE.rd_ing { PARAM_VALUE.rd_ing } {
	# Procedure called to update rd_ing when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.rd_ing { PARAM_VALUE.rd_ing } {
	# Procedure called to validate rd_ing
	return true
}

proc update_PARAM_VALUE.rd_wait { PARAM_VALUE.rd_wait } {
	# Procedure called to update rd_wait when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.rd_wait { PARAM_VALUE.rd_wait } {
	# Procedure called to validate rd_wait
	return true
}

proc update_PARAM_VALUE.wr_done { PARAM_VALUE.wr_done } {
	# Procedure called to update wr_done when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wr_done { PARAM_VALUE.wr_done } {
	# Procedure called to validate wr_done
	return true
}

proc update_PARAM_VALUE.wr_ing { PARAM_VALUE.wr_ing } {
	# Procedure called to update wr_ing when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wr_ing { PARAM_VALUE.wr_ing } {
	# Procedure called to validate wr_ing
	return true
}

proc update_PARAM_VALUE.wr_wait { PARAM_VALUE.wr_wait } {
	# Procedure called to update wr_wait when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wr_wait { PARAM_VALUE.wr_wait } {
	# Procedure called to validate wr_wait
	return true
}


proc update_MODELPARAM_VALUE.wr_wait { MODELPARAM_VALUE.wr_wait PARAM_VALUE.wr_wait } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wr_wait}] ${MODELPARAM_VALUE.wr_wait}
}

proc update_MODELPARAM_VALUE.wr_ing { MODELPARAM_VALUE.wr_ing PARAM_VALUE.wr_ing } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wr_ing}] ${MODELPARAM_VALUE.wr_ing}
}

proc update_MODELPARAM_VALUE.wr_done { MODELPARAM_VALUE.wr_done PARAM_VALUE.wr_done } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wr_done}] ${MODELPARAM_VALUE.wr_done}
}

proc update_MODELPARAM_VALUE.rd_wait { MODELPARAM_VALUE.rd_wait PARAM_VALUE.rd_wait } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.rd_wait}] ${MODELPARAM_VALUE.rd_wait}
}

proc update_MODELPARAM_VALUE.rd_ing { MODELPARAM_VALUE.rd_ing PARAM_VALUE.rd_ing } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.rd_ing}] ${MODELPARAM_VALUE.rd_ing}
}

proc update_MODELPARAM_VALUE.rd_done { MODELPARAM_VALUE.rd_done PARAM_VALUE.rd_done } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.rd_done}] ${MODELPARAM_VALUE.rd_done}
}

