extends Label


func _ready():
	if Global.time > Global.timelimit:
		set_text("You are out of fuel");
