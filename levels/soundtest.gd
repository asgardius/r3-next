extends Control
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$"VBoxContainer/Title Screen".grab_focus()

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
			





func _on_back_pressed():
	get_tree().change_scene_to_file("res://levels/debug.tscn")


func _on_title_screen_pressed():
	pass # Replace with function body.


func _on_galaxy_pressed():
	pass # Replace with function body.


func _on_wormhole_pressed():
	pass # Replace with function body.


func _on_abstract_pressed():
	pass # Replace with function body.


func _on_galaxy_2_pressed():
	pass # Replace with function body.


func _on_lagoon_pressed():
	pass # Replace with function body.


func _on_orion_pressed():
	pass # Replace with function body.


func _on_space_pressed():
	pass # Replace with function body.


func _on_stars_pressed():
	pass # Replace with function body.


func _on_universe_pressed():
	pass # Replace with function body.


func _on_credits_1_pressed():
	pass # Replace with function body.


func _on_credits_2_pressed():
	pass # Replace with function body.


func _on_credits_3_pressed():
	pass # Replace with function body.
