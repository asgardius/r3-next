extends Node

var live
var time
var origmpos
var mousepos
var timelimit = 15000
var wait
var hiscoresfile = "user://hiscores.save"
var gamelevel
var levelmax
var firstrun
var musictracks = ["res://music/x-force.ogg", "res://music/alien-bulls.ogg", "res://music/eternity.ogg", "res://music/truth.ogg", "res://music/broken.ogg", "res://music/maran.ogg", "res://music/orion.ogg", "res://music/rose.ogg", "res://music/oskars.ogg", "res://music/rock.ogg", "res://music/yes-i-see.ogg", "res://music/tekilla.ogg", "res://music/sweetest-sin.ogg"]
var sfxtracks = ["res://sfx/title.wav", "res://sfx/crash.ogg", "res://sfx/complete.ogg"]
var debug = false
var release = "R0.2.0-beta"
var sk = false
var xm = 0
var ym = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
