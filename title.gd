extends Control


# Called when the node enters the scene tree for the first time.
var bgsound := AudioStreamPlayer.new()
#var galaxy = preload("res://backgounds/galaxy.tscn").instantiate()
#var wormhole = preload("res://backgounds/wormhole.tscn").instantiate()

func _ready():
	add_child(bgsound)
	var titlemusic = load("res://music/x-force.mp3")
	bgsound.stream = titlemusic
	bgsound.play(0)
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseButton || Input.is_joy_button_pressed(0,JOY_BUTTON_X) || Input.is_joy_button_pressed(0,JOY_BUTTON_Y) || Input.is_joy_button_pressed(0,JOY_BUTTON_A) || Input.is_joy_button_pressed(0,JOY_BUTTON_B) || Input.is_joy_button_pressed(0,JOY_BUTTON_BACK) || Input.is_joy_button_pressed(0,JOY_BUTTON_START) || Input.is_joy_button_pressed(0,JOY_BUTTON_RIGHT_SHOULDER) || Input.is_joy_button_pressed(0,JOY_BUTTON_LEFT_SHOULDER):
		#print("Mouse Click/Unclick at: ", event.position)
		_level()

func _level():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		if fmod(Time.get_unix_time_from_system(), 2) == 0:
			get_tree().change_scene_to_file("res://backgounds/galaxy.tscn")
		else:
			get_tree().change_scene_to_file("res://backgounds/wormhole.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()
