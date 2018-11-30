-- This script will print a small text on the screen, showing how long the IRSs will take to align

dataref("align_l_remain", "laminar/B738/irs/alignment_left_remain", "readonly")
dataref("align_r_remain", "laminar/B738/irs/alignment_right_remain", "readonly")

out_string = ""

function print_irs()

        if align_l_remain > 0 or align_r_remain > 0 then
		out_string = "IRS L: " .. align_l_remain .. "s / IRS R: " .. align_r_remain .. "s"
		else 
		out_string = ""
		end
end

do_often("print_irs()")

function print_irs_result()
	if (out_string ~= "") then
		draw_string(50, 850, out_string)
	end
end

do_every_draw("print_irs_result()")
