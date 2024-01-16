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
var musictracks = ["res://music/x-force.wav", "res://music/alien-bulls.wav", "res://music/eternity.wav", "res://music/truth.wav", "res://music/broken.wav", "res://music/maran.wav", "res://music/orion.wav", "res://music/rose.wav", "res://music/oskars.wav", "res://music/rock.wav", "res://music/yes-i-see.wav", "res://music/tekilla.wav", "res://music/sweetest-sin.wav"]
var sfxtracks = ["res://sfx/title.wav", "res://sfx/crash.ogg", "res://sfx/complete.ogg"]
var debug = false
var release = "R0.1.3-beta"
var sk = false
var xm = 0
var ym = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
