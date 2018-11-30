-- Automatically connects/disconnects the GPU in the Zibo 737 with EFB.
-- GPU will be connected when parking break is set and beacon is off

dataref("gpu", "laminar/B738/gpu_available", "readonly")
dataref("brakes", "sim/flightmodel/controls/parkbrake", "readonly")
dataref("beacon", "sim/cockpit2/switches/beacon_on", "readonly")

function checkGPU()
	if (brakes == 1 and beacon == 0 and gpu == 0) then
		switchGPU()
	end		
	if ((brakes == 0 or beacon == 1) and gpu == 1) then
		switchGPU()
	end
end

function switchGPU()
	command_once("laminar/B738/tab/home")
	command_once("laminar/B738/tab/menu6")
	command_once("laminar/B738/tab/menu1")
	command_once("laminar/B738/tab/home")	
end

do_often("checkGPU()")
