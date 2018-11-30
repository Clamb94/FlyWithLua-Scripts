-- This script automatically aligns the IRS. Useful if you don't have a IRS panel in your cockpit (yet)

dataref("align_l_remain", "laminar/B738/irs/alignment_left_remain", "readonly")
dataref("align_r_remain", "laminar/B738/irs/alignment_right_remain", "readonly")

function checkIRS()
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


do_often("checkIRS()")