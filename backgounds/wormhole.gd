extends Node2D


# Called when the node enters the scene tree for the first time.
var wormhole = load("res://levels/wormhole.tscn").instantiate()

func _ready():
	get_tree().root.add_child.call_deferred(wormhole)
	Global.wait = Time.get_ticks_msec()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Time.get_ticks_msec() - Global.wait > Global.timelimit:
		Global.live = 2
	if Global.live == 1 && (Time.get_ticks_msec() - Global.wait) >= 1000 && (Input.is_key_pressed(KEY_ESCAPE) || Input.is_joy_button_pressed(0,JOY_BUTTON_A)):
		#print("Mouse Click/Unclick at: ", event.position)
		_title()
	if Global.live == 0:
		_title()
	elif Global.live == 2:
		_crash()
	elif Global.live == 3:
		_complete()
	#pass

func _title():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		get_tree().root.remove_child(wormhole)
		get_tree().change_scene_to_file("res://title.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()

func _crash():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		Global.time = Time.get_ticks_msec() - Global.wait
		await get_tree().create_timer(1.0).timeout
		#queue_free()
		get_tree().root.remove_child(wormhole)
		get_tree().change_scene_to_file("res://backgounds/supernova.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()

func _complete():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		Global.time = Time.get_ticks_msec() - Global.wait
		get_tree().root.remove_child(wormhole)
		get_tree().change_scene_to_file("res://levels/credits.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()
