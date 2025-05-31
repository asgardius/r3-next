extends Control

var player := AudioStreamPlayer.new()
var fl
var fr
var rl
var rr

func _ready():
	fl = $Front_Left
	fr = $Front_Right
	rl = $Rear_Left
	rr = $Rear_Right
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	add_child(player)
	player.mix_target = 2
	$"VBoxContainer/Title Screen".grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _input(event):
   # Mouse in viewport coordinates.
	if Input.is_action_just_pressed("ui_cancel"):
		_on_back_pressed()
	if Input.is_key_pressed(KEY_X) || Input.is_joy_button_pressed(0,JOY_XBOX_X):
		player.stop()
		fl.stop()
		fr.stop()
		rl.stop()
		rr.stop()
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
	get_tree().change_scene("res://levels/soundtest.tscn")


func _on_title_screen_pressed():
	player.stream = load(Global.musictrackc[0])
	fl.stream = load(Global.musictrackfl[0])
	fr.stream = load(Global.musictrackfr[0])
	rl.stream = load(Global.musictrackrl[0])
	rr.stream = load(Global.musictrackrr[0])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_galaxy_pressed():
	player.stream = load(Global.musictrackc[1])
	fl.stream = load(Global.musictrackfl[1])
	fr.stream = load(Global.musictrackfr[1])
	rl.stream = load(Global.musictrackrl[1])
	rr.stream = load(Global.musictrackrr[1])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_wormhole_pressed():
	player.stream = load(Global.musictrackc[2])
	fl.stream = load(Global.musictrackfl[2])
	fr.stream = load(Global.musictrackfr[2])
	rl.stream = load(Global.musictrackrl[2])
	rr.stream = load(Global.musictrackrr[2])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_abstract_pressed():
	player.stream = load(Global.musictrackc[3])
	fl.stream = load(Global.musictrackfl[3])
	fr.stream = load(Global.musictrackfr[3])
	rl.stream = load(Global.musictrackrl[3])
	rr.stream = load(Global.musictrackrr[3])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_galaxy_2_pressed():
	player.stream = load(Global.musictrackc[4])
	fl.stream = load(Global.musictrackfl[4])
	fr.stream = load(Global.musictrackfr[4])
	rl.stream = load(Global.musictrackrl[4])
	rr.stream = load(Global.musictrackrr[4])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_lagoon_pressed():
	player.stream = load(Global.musictrackc[5])
	fl.stream = load(Global.musictrackfl[5])
	fr.stream = load(Global.musictrackfr[5])
	rl.stream = load(Global.musictrackrl[5])
	rr.stream = load(Global.musictrackrr[5])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_orion_pressed():
	player.stream = load(Global.musictrackc[6])
	fl.stream = load(Global.musictrackfl[6])
	fr.stream = load(Global.musictrackfr[6])
	rl.stream = load(Global.musictrackrl[6])
	rr.stream = load(Global.musictrackrr[6])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_space_pressed():
	player.stream = load(Global.musictrackc[7])
	fl.stream = load(Global.musictrackfl[7])
	fr.stream = load(Global.musictrackfr[7])
	rl.stream = load(Global.musictrackrl[7])
	rr.stream = load(Global.musictrackrr[7])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_stars_pressed():
	player.stream = load(Global.musictrackc[8])
	fl.stream = load(Global.musictrackfl[8])
	fr.stream = load(Global.musictrackfr[8])
	rl.stream = load(Global.musictrackrl[8])
	rr.stream = load(Global.musictrackrr[8])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_universe_pressed():
	player.stream = load(Global.musictrackc[9])
	fl.stream = load(Global.musictrackfl[9])
	fr.stream = load(Global.musictrackfr[9])
	rl.stream = load(Global.musictrackrl[9])
	rr.stream = load(Global.musictrackrr[9])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_credits_1_pressed():
	player.stream = load(Global.musictrackc[10])
	fl.stream = load(Global.musictrackfl[10])
	fr.stream = load(Global.musictrackfr[10])
	rl.stream = load(Global.musictrackrl[10])
	rr.stream = load(Global.musictrackrr[10])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_credits_2_pressed():
	player.stream = load(Global.musictrackc[11])
	fl.stream = load(Global.musictrackfl[11])
	fr.stream = load(Global.musictrackfr[11])
	rl.stream = load(Global.musictrackrl[11])
	rr.stream = load(Global.musictrackrr[11])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_credits_3_pressed():
	player.stream = load(Global.musictrackc[12])
	fl.stream = load(Global.musictrackfl[12])
	fr.stream = load(Global.musictrackfr[12])
	rl.stream = load(Global.musictrackrl[12])
	rr.stream = load(Global.musictrackrr[12])
	player.play(0)
	fl.play(0)
	fr.play(0)
	rl.play(0)
	rr.play(0)


func _on_Stop_pressed():
	player.stop()
	fl.stop()
	fr.stop()
	rl.stop()
	rr.stop()
