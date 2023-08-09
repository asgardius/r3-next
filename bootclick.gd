extends Node

var title = preload("res://title.tscn").instantiate()
var boot = preload("res://bootclick.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
	
func _ready():
	pass # Replace with function body.
	#add_child(title)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _init():
	

func _process(delta):
	pass

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseButton:
		print("Mouse Click/Unclick at: ", event.position)
		_title()

func _title():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
		get_tree().change_scene_to_file("res://title.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()
