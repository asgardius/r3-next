extends Control

var player := AudioStreamPlayer.new()

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	add_child(player)
	$"VBoxContainer/Title Screen".grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
   # Mouse in viewport coordinates.
	if Input.is_action_just_pressed("ui_cancel"):
		_on_back_pressed()
	if Input.is_key_pressed(KEY_X) || Input.is_joy_button_pressed(0,JOY_BUTTON_X):
		player.stop()
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
	get_tree().change_scene_to_file("res://levels/soundtest.tscn")


func _on_title_screen_pressed():
	player.stream = load(Global.musictracks[0])
	player.play(0)


func _on_galaxy_pressed():
	player.stream = load(Global.musictracks[1])
	player.play(0)


func _on_wormhole_pressed():
	player.stream = load(Global.musictracks[2])
	player.play(0)


func _on_abstract_pressed():
	player.stream = load(Global.musictracks[3])
	player.play(0)


func _on_galaxy_2_pressed():
	player.stream = load(Global.musictracks[4])
	player.play(0)


func _on_lagoon_pressed():
	player.stream = load(Global.musictracks[5])
	player.play(0)


func _on_orion_pressed():
	player.stream = load(Global.musictracks[6])
	player.play(0)


func _on_space_pressed():
	player.stream = load(Global.musictracks[7])
	player.play(0)


func _on_stars_pressed():
	player.stream = load(Global.musictracks[8])
	player.play(0)


func _on_universe_pressed():
	player.stream = load(Global.musictracks[9])
	player.play(0)


func _on_credits_1_pressed():
	player.stream = load(Global.musictracks[10])
	player.play(0)


func _on_credits_2_pressed():
	player.stream = load(Global.musictracks[11])
	player.play(0)


func _on_credits_3_pressed():
	player.stream = load(Global.musictracks[12])
	player.play(0)
