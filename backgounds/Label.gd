extends Label


func _process(delta: float) -> void:
	if Global.time > Global.timelimit:
		set_text("You are out of fuel");
