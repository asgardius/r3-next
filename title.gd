extends Control


# Called when the node enters the scene tree for the first time.
var bgsound := AudioStreamPlayer.new()
var frank := AudioStreamPlayer.new()
var wait
#var galaxy = preload("res://backgounds/galaxy.tscn").instantiate()
#var wormhole = preload("res://backgounds/wormhole.tscn").instantiate()

func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	#if (OS.get_name() != "Linux" && !OS.get_name().ends_with("BSD")) || OS.get_distribution_name().contains("Kali") || !OS.get_data_dir().begins_with("/home") || OS.get_environment("WSL_DISTRO_NAME").length() < 0:
	#	Global.sk = true
	Global.gamelevel = null
	add_child(bgsound)
	add_child(frank)
	var titlemusic = load(Global.musictrackc[0])
	var r3jingle = load(Global.sfxtracks[0])
	bgsound.stream = titlemusic
	bgsound.mix_target = 2
	frank.mix_target = 2
	bgsound.play(0)
	frank.stream = r3jingle
	frank.play(0)
	wait = Time.get_ticks_msec()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
   # Mouse in viewport coordinates.
	if Input.is_action_just_pressed("ui_accept") || Input.is_action_just_pressed("mclick"):
		#print("Mouse Click/Unclick at: ", event.position)
		get_tree().change_scene("res://levels/tmenu.tscn")
		#_level()
	#elif Input.is_action_just_pressed("ui_cancel"):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()

func _level():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		Global.live = 1
		Global.gamelevel = randi() % 3
		if Global.gamelevel == 0:
			get_tree().change_scene("res://backgounds/galaxy.tscn")
		elif Global.gamelevel == 1:
			get_tree().change_scene("res://backgounds/wormhole.tscn")
		else:
			get_tree().change_scene("res://backgounds/abstract.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()
