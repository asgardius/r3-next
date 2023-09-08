extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready():
	var button = Button.new()
	button.text = "Home"
	button.pressed.connect(self._button_pressed)
	add_child(button)

func _button_pressed():
	Global.live = 0
	#_title()

func _title():
	# This is like autoloading the scene, only
	# it happens after already loading the main scene.
	get_tree().change_scene_to_file("res://title.tscn")
		#get_tree().root.add_child(title)
		#get_tree().root.remove_child(boot)
		#boot.queue_free()
