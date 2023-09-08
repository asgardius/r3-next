extends Node2D


# Called when the node enters the scene tree for the first time.
var wormhole = load("res://levels/wormhole.tscn").instantiate()
var wait

func _ready():
	get_tree().root.add_child.call_deferred(wormhole)
	wait = Time.get_ticks_msec()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Time.get_ticks_msec() - wait) >= 1000 && (Input.is_key_pressed(KEY_ESCAPE) || Input.is_joy_button_pressed(0,JOY_BUTTON_X) || Input.is_joy_button_pressed(0,JOY_BUTTON_Y) || Input.is_joy_button_pressed(0,JOY_BUTTON_A) || Input.is_joy_button_pressed(0,JOY_BUTTON_B) || Input.is_joy_button_pressed(0,JOY_BUTTON_BACK) || Input.is_joy_button_pressed(0,JOY_BUTTON_START) || Input.is_joy_button_pressed(0,JOY_BUTTON_RIGHT_SHOULDER) || Input.is_joy_button_pressed(0,JOY_BUTTON_LEFT_SHOULDER)):
		#print("Mouse Click/Unclick at: ", event.position)
		_title()
	if Global.live == 0:
		_title()
	#pass

func _title():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		get_tree().root.remove_child(wormhole)
		get_tree().change_scene_to_file("res://title.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()
