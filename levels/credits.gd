extends Node2D


# Called when the node enters the scene tree for the first time.
var bgsound := AudioStreamPlayer.new()
var song1 = load("res://music/yes-i-see.ogg")
var song2 = load("res://music/tekilla.ogg")
var song3 = load("res://music/sweetest-sin.ogg")
var playstart = false
var playindex = 0

func _ready():
	add_child(bgsound)
	bgsound.stream = song1
	bgsound.play(0)
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bgtime = bgsound.get_playback_position() + AudioServer.get_time_since_last_mix()
	# Compensate for output latency.
	bgtime -= AudioServer.get_output_latency()
	print("Time is: ", bgtime)
	if bgtime < 0:
		if playstart:
			if playindex == 0:
				playindex = 1
				playstart = false
				bgsound.stream = song2
				bgsound.play(0)
			elif playindex == 1:
				playindex = 2
				playstart = false
				bgsound.stream = song3
				bgsound.play(0)
			else:
				_complete()
	elif bgsound.has_stream_playback():
		playstart = true
	#pass

func _complete():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		get_tree().change_scene_to_file("res://backgounds/radio.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseButton || Input.is_joy_button_pressed(0,JOY_BUTTON_X) || Input.is_joy_button_pressed(0,JOY_BUTTON_Y) || Input.is_joy_button_pressed(0,JOY_BUTTON_A) || Input.is_joy_button_pressed(0,JOY_BUTTON_B) || Input.is_joy_button_pressed(0,JOY_BUTTON_BACK) || Input.is_joy_button_pressed(0,JOY_BUTTON_START) || Input.is_joy_button_pressed(0,JOY_BUTTON_RIGHT_SHOULDER) || Input.is_joy_button_pressed(0,JOY_BUTTON_LEFT_SHOULDER):
		#print("Mouse Click/Unclick at: ", event.position)
		_complete()