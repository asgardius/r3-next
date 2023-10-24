extends Label

func _process(delta: float) -> void:
	if (Global.timelimit - (Time.get_ticks_msec() - Global.wait)) > 0:
		set_text("Time: " + str((Global.timelimit - (Time.get_ticks_msec() - Global.wait))/1000));
	else:
		set_text(str(0));
