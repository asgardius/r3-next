extends Sprite

var origpos
var ctime
#var origmpos
# Called when the node enters the scene tree for the first time.
#var velocity = Input.get_vector("move_left", "move_right", "move_forward", "move_back")
func _ready():
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	origpos = self.position
	ctime = Time.get_ticks_msec()
	Global.origmpos = get_viewport().get_mouse_position()
	
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.xm = 0
	Global.ym = 0
	var velocity = Vector2.ZERO
	if Global.live == 1:
		if Input.get_joy_axis(0,JOY_ANALOG_LX) > 0.2 || Input.get_joy_axis(0,JOY_ANALOG_LY) > 0.2 || Input.get_joy_axis(0,JOY_ANALOG_LX) < -0.2 || Input.get_joy_axis(0,JOY_ANALOG_LY) < -0.2:
			Global.xm = Input.get_joy_axis(0,JOY_ANALOG_LX)
			Global.ym = Input.get_joy_axis(0,JOY_ANALOG_LY)
		else:
			#Global.xm = Input.get_last_mouse_velocity().x / 100
			#Global.ym = Input.get_last_mouse_velocity().y / 100
			if Input.is_action_pressed("ui_left"):
				Global.xm = -1
			if Input.is_action_pressed("ui_right"):
				Global.xm = 1
			if Input.is_action_pressed("ui_up"):
				Global.ym = -1
			if Input.is_action_pressed("ui_down"):
				Global.ym = 1
		velocity = (Vector2.RIGHT.rotated(rotation) * -100 * Global.xm * delta)-Vector2.UP.rotated(rotation) * -100 * Global.ym * delta
		ctime = Time.get_ticks_msec()
	#elif !Global.sk && Global.live == null:
	#	_sk()
			
	#if Input.get_joy_axis(0,JOY_AXIS_LEFT_Y) != 0:
	#	velocity = Vector2.UP.rotated(rotation) * -400 * Input.get_joy_axis(0,JOY_AXIS_LEFT_Y)
	position += velocity
	#pass
func _sk():
	Global.sk = true
	#get_tree().change_scene_to_file("res://bootclick.tscn")
	var selftest = load("res://selftest.tscn").instantiate()
	get_tree().root.add_child.call_deferred(selftest)
