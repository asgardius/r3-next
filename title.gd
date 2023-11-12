extends Control


# Called when the node enters the scene tree for the first time.
var bgsound := AudioStreamPlayer.new()
var wait
#var galaxy = preload("res://backgounds/galaxy.tscn").instantiate()
#var wormhole = preload("res://backgounds/wormhole.tscn").instantiate()

func _ready():
	Global.gamelevel = null
	add_child(bgsound)
	var titlemusic = load("res://music/x-force.ogg")
	bgsound.stream = titlemusic
	bgsound.play(0)
	wait = Time.get_ticks_msec()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
   # Mouse in viewport coordinates.
	if (Time.get_ticks_msec() - wait) >= 1000 && (event is InputEventMouseButton || Input.is_joy_button_pressed(0,JOY_BUTTON_X) || Input.is_joy_button_pressed(0,JOY_BUTTON_Y) || Input.is_joy_button_pressed(0,JOY_BUTTON_A) || Input.is_joy_button_pressed(0,JOY_BUTTON_B)):
		#print("Mouse Click/Unclick at: ", event.position)
		_level()
	elif (Time.get_ticks_msec() - wait) >= 1000 && (Input.is_key_pressed(KEY_ESCAPE) || Input.is_joy_button_pressed(0,JOY_BUTTON_BACK) || Input.is_joy_button_pressed(0,JOY_BUTTON_START) || Input.is_joy_button_pressed(0,JOY_BUTTON_RIGHT_SHOULDER) || Input.is_joy_button_pressed(0,JOY_BUTTON_LEFT_SHOULDER)):
		get_tree().quit()

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
