extends Label


func _process(delta: float) -> void:
	var hour = int(Global.time / 3600000)
	var min = int(Global.time / 60000) - (hour * 60)
	var sec = int(Global.time / 1000) - (min * 60) - (hour * 3600)
	set_text("Your time: " + str(hour) + ":" + str(min) + ":" + str(sec) + ":" + str(Global.time - (sec * 1000) - (min * 60000) - (hour * 3600000)));
