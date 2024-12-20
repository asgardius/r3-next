extends Label
var previoustime
var savegame = load("res://save.gd")

func _ready():
	previoustime = int(Global.levelmax[Global.gamelevel])
	if Global.time < previoustime && Global.live == 3:
		Global.levelmax[Global.gamelevel] = str(Global.time)
		if !Global.debug:
			savegame.new()
	var sec = float(Global.time / 1000)
	var msec = Global.time - (sec*1000)
	var bsec = float(previoustime / 1000)
	var bmsec = previoustime - (bsec*1000)
	set_text("Your time: " + str(sec) + "." + str(msec) + "\n" + "Your best time: " + str(bsec) + "." + str(bmsec));
