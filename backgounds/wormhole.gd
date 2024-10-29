extends Node2D


# Called when the node enters the scene tree for the first time.
var wormhole = load("res://levels/wormhole.tscn").instance()

func _ready():
	call_deferred("_level")
	Global.wait = Time.get_ticks_msec()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Time.get_ticks_msec() - Global.wait > Global.timelimit:
		Global.live = 2
	if Global.live == 0 || Input.is_action_just_pressed("ui_cancel"):
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
	if Global.debug:
		get_tree().change_scene("res://levels/scene.tscn")
	else:
		get_tree().change_scene("res://title.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()


func _crash():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		Global.time = Time.get_ticks_msec() - Global.wait
		yield(get_tree().create_timer(1.0), "timeout")
		#queue_free()
		get_tree().root.remove_child(wormhole)
		get_tree().change_scene("res://backgounds/supernova.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()

func _complete():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		Global.time = Time.get_ticks_msec() - Global.wait
		get_tree().root.remove_child(wormhole)
		get_tree().change_scene("res://levels/credits.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()

func _level():
	get_tree().root.add_child(wormhole)
