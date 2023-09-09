extends Sprite2D

var origpos
var ctime
#var origmpos
# Called when the node enters the scene tree for the first time.
#var velocity = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
func _ready():
	origpos = self.position
	ctime = Time.get_ticks_msec()
	Global.origmpos = get_viewport().get_mouse_position()
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var xm = 0
	var ym = 0
	var velocity = Vector2.ZERO
	if Input.get_joy_axis(0,JOY_AXIS_LEFT_X) > 0.2 || Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) > 0.2 || Input.get_joy_axis(0,JOY_AXIS_LEFT_X) < -0.2 || Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) < -0.2:
		velocity = (Vector2.RIGHT.rotated(rotation) * -10000 * delta * Input.get_joy_axis(0,JOY_AXIS_LEFT_X))-Vector2.UP.rotated(rotation) * -10000 *delta * Input.get_joy_axis(0,JOY_AXIS_LEFT_Y)
	elif Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if (Time.get_ticks_msec() - ctime) <= 67:
			Global.origmpos = get_viewport().get_mouse_position()
			Global.mousepos = get_viewport().get_mouse_position() - Global.origmpos
		else :
			Global.mousepos = get_viewport().get_mouse_position() - Global.origmpos
			self.position = Vector2(origpos.x+Global.mousepos.x, origpos.y+Global.mousepos.y)
	else:
		if Input.is_action_pressed("ui_left"):
			xm = -1
		if Input.is_action_pressed("ui_right"):
			xm = 1
		if Input.is_action_pressed("ui_up"):
			ym = -1
		if Input.is_action_pressed("ui_down"):
			ym = 1
		velocity = (Vector2.RIGHT.rotated(rotation) * -10000 * xm * delta)-Vector2.UP.rotated(rotation) * -10000 * ym * delta
		origpos = self.position
		Global.origmpos = get_viewport().get_mouse_position()
		ctime = Time.get_ticks_msec()
	#if Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) != 0:
	#	velocity = Vector2.UP.rotated(rotation) * -400 * Input.get_joy_axis(0,JOY_AXIS_LEFT_Y)
	position += velocity * delta
	print(position)
	#pass
