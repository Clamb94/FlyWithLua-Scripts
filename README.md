# FlyWithLua-Scripts
X-Plane scripts for homecockpit builders

Here you can find some of the scripts I'm using for my Zibo 737 based homecockpit.
There is a brief description in each file.

#### DomeLightOn.lua
Automatically turns on the dome light
	
#### OpenGuards.lua
Opens all switch guards (black/red). Basically required for XP_EHID. Not required for SimVim users.
	
#### lockControls.lua
Disables all primary flight controls (Elevator, Ailerons, Rudder) when the autopilot is active.

#### autoGPU.lua
Automatically connects/disconnects the ground power unit. beacon/anti collision light must be OFF and parking brake set.
Works only with Zibo 737 with the EFB.

#### autoIRS.lua
Automatically aligns the IRS after powing up the aircraft. You only have to enter to position via the CDU.
Useful if you don't have IRS switches (yet).

#### showIRS.lua
Shows the time until the IRS is aligned in a small white text. 
