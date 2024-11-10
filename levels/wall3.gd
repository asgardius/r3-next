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
		if Input.get_joy_axis(0,JOY_ANALOG_LX) > 0.2 || Input.get_joy_axis(0,JOY_ANALOG_LY) > 0.2 || Input.get_joy_axis(0,JOY_ANALOG_LX) < -0.2 || Input.get_joy_axis(0,JOY_ANALOG_LY) < -0.2:
			velocity = (Vector2.RIGHT.rotated(rotation) * -50000 * delta * Input.get_joy_axis(0,JOY_ANALOG_LX))-Vector2.UP.rotated(rotation) * -50000 *delta * Input.get_joy_axis(0,JOY_ANALOG_LY)
		elif Input.is_mouse_button_pressed(BUTTON_LEFT):
		#var mousepos = get_viewport().get_mouse_position() - origmpos
			self.position = Vector2(origpos.x+(Global.mousepos.x*5), origpos.y+(Global.mousepos.y*5))
		else:
			if Input.is_action_pressed("ui_left"):
				xm = -1
			if Input.is_action_pressed("ui_right"):
				xm = 1
			if Input.is_action_pressed("ui_up"):
				ym = -1
			if Input.is_action_pressed("ui_down"):
				ym = 1
			velocity = (Vector2.RIGHT.rotated(rotation) * -50000 * xm * delta)-Vector2.UP.rotated(rotation) * -50000 * ym * delta
			origpos = self.position
		#origmpos = get_viewport().get_mouse_position()
	#if Input.get_joy_axis(0,JOY_ANALOG_LY) != 0:
	#	velocity = Vector2.UP.rotated(rotation) * -400 * Input.get_joy_axis(0,JOY_ANALOG_LY)
		position += velocity * delta
		if position.y > 270:
			Global.live = 2
	#pass
