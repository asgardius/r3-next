extends Node2D


# Called when the node enters the scene tree for the first time.
var bgsound := AudioStreamPlayer.new()

func _ready():
	add_child(bgsound)
	var titlemusic = load("res://music/truth.ogg")
	bgsound.stream = titlemusic
	bgsound.play(0)
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
