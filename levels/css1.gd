extends Sprite2D


# Called when the node enters the scene tree for the first time.
#var velocity = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var xm = 0
	var ym = 0
	var velocity = Vector2.ZERO
	if Input.get_joy_axis(0,JOY_AXIS_LEFT_X) > 0.2 || Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) > 0.2 || Input.get_joy_axis(0,JOY_AXIS_LEFT_X) < -0.2 || Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) < -0.2:
		velocity = (Vector2.RIGHT.rotated(rotation) * -400 * delta * Input.get_joy_axis(0,JOY_AXIS_LEFT_X))-Vector2.UP.rotated(rotation) * -400 *delta * Input.get_joy_axis(0,JOY_AXIS_LEFT_Y)
	else:
		if Input.is_action_pressed("ui_left"):
			xm = -1
		if Input.is_action_pressed("ui_right"):
			xm = 1
		if Input.is_action_pressed("ui_up"):
			ym = -1
		if Input.is_action_pressed("ui_down"):
			ym = 1
		velocity = (Vector2.RIGHT.rotated(rotation) * -400 * xm * delta)-Vector2.UP.rotated(rotation) * -400 * ym * delta
	#if Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) != 0:
	#	velocity = Vector2.UP.rotated(rotation) * -400 * Input.get_joy_axis(0,JOY_AXIS_LEFT_Y)
	position += velocity * delta
	#pass
