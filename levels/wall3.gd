extends Sprite

var origpos
#var origmpos
# Called when the node enters the scene tree for the first time.
#var velocity = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
func _ready():
	origpos = self.position
	#origmpos = get_viewport().get_mouse_position()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var xm = 0
	var ym = 0
	var velocity = Vector2.ZERO
	if Global.live == 1:
		velocity = (Vector2.RIGHT.rotated(rotation) * -1000 * Global.xm * delta)-Vector2.UP.rotated(rotation) * -1000 * Global.ym * delta
		#origmpos = get_viewport().get_mouse_position()
	#if Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) != 0:
	#	velocity = Vector2.UP.rotated(rotation) * -400 * Input.get_joy_axis(0,JOY_AXIS_LEFT_Y)
		position += velocity
		if position.y > 270:
			Global.live = 2
	#pass
