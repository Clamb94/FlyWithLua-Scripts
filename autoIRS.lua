-- This script automatically aligns the IRS. Useful if you don't have a IRS panel in your cockpit (yet)

startup = 1
dataref("align_l_remain", "laminar/B738/irs/alignment_left_remain", "readonly")
dataref("align_r_remain", "laminar/B738/irs/alignment_right_remain", "readonly")
dataref("bat", "laminar/B738/electric/battery_pos", "readonly")
dataref("ac_power", "laminar/b738/fmodpack/ac_established", "readonly")

function checkIRS()
if ac_power == 1 then
startup = 0
end
	if bat == 0 then
		IRS_off()
		startup = 1
	else
		if startup == 0 then
			IRS_on()
		end

	end
end

function IRS_on()
		if align_l_remain < 0 then
			command_once("laminar/B738/toggle_switch/irs_L_left")
			command_once("laminar/B738/toggle_switch/irs_L_left")
			command_once("laminar/B738/toggle_switch/irs_L_left")
			command_once("laminar/B738/toggle_switch/irs_L_right")
			command_once("laminar/B738/toggle_switch/irs_L_right")
		end
				if align_r_remain < 0 then
			command_once("laminar/B738/toggle_switch/irs_R_left")
			command_once("laminar/B738/toggle_switch/irs_R_left")
			command_once("laminar/B738/toggle_switch/irs_R_left")
			command_once("laminar/B738/toggle_switch/irs_R_right")
			command_once("laminar/B738/toggle_switch/irs_R_right")
		end
end
function IRS_off()
			command_once("laminar/B738/toggle_switch/irs_L_left")
			command_once("laminar/B738/toggle_switch/irs_L_left")
			command_once("laminar/B738/toggle_switch/irs_L_left")
			command_once("laminar/B738/toggle_switch/irs_R_left")
			command_once("laminar/B738/toggle_switch/irs_R_left")
			command_once("laminar/B738/toggle_switch/irs_R_left")
end

do_often("checkIRS()")
