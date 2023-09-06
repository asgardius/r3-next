extends Node2D


# Called when the node enters the scene tree for the first time.
var wormhole = load("res://levels/wormhole.tscn").instantiate()

func _ready():
	get_tree().root.add_child.call_deferred(wormhole)
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
