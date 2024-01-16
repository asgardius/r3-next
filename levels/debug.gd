extends Control
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$"VBoxContainer/Scene Selector".grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
   # Mouse in viewport coordinates.
	if Input.is_action_pressed("ui_cancel"):
		_on_back_pressed()
		#print("Mouse Click/Unclick at: ", event.position)
#		if highlighted == 1:
#			_on_debug_pressed()
#		if highlighted == 2:
#			_on_exit_pressed()
#		else:
#			_on_start_pressed()
#	elif Input.is_action_pressed("ui_up"):
#		focus_next
			




func _on_scene_selector_pressed():
	get_tree().change_scene_to_file("res://levels/scene.tscn")


func _on_sound_test_pressed():
	get_tree().change_scene_to_file("res://levels/soundtest.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://levels/tmenu.tscn")
