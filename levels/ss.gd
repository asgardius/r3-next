extends Sprite

var angular_speed = PI
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.live == 2:
		rotation += angular_speed * delta * 5
	#pass
