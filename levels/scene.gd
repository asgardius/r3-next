extends Control
func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	$"VBoxContainer/Galaxy".grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _level():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		Global.live = 1
		Global.gamelevel = randi() % 3
		if Global.gamelevel == 0:
			get_tree().change_scene_to_file("res://backgounds/galaxy.tscn")
		elif Global.gamelevel == 1:
			get_tree().change_scene_to_file("res://backgounds/wormhole.tscn")
		else:
			get_tree().change_scene_to_file("res://backgounds/abstract.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()

func _input(event):
   # Mouse in viewport coordinates.
	if Input.is_action_just_pressed("ui_cancel"):
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
	get_tree().change_scene("res://levels/debug.tscn")


func _on_galaxy_pressed():
	Global.live = 1
	Global.gamelevel = 1
	get_tree().change_scene("res://backgounds/galaxy.tscn")


func _on_wormhole_pressed():
	Global.live = 1
	Global.gamelevel = 1
	get_tree().change_scene("res://backgounds/wormhole.tscn")


func _on_abstract_pressed():
	Global.live = 1
	Global.gamelevel = 2
	get_tree().change_scene("res://backgounds/abstract.tscn")


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


func _on_credits_pressed():
	Global.gamelevel = 1
	Global.live = 0
	Global.time = 99999
	get_tree().change_scene("res://levels/credits.tscn")
