extends Node2D


# Called when the node enters the scene tree for the first time.
var galaxy = load("res://levels/galaxy.tscn").instantiate()

func _ready():
	get_tree().root.add_child.call_deferred(galaxy)
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
