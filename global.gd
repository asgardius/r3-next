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
var musictrackc = ["res://music/c/x-force.ogg", "res://music/c/alien-bulls.ogg", "res://music/c/eternity.ogg", "res://music/c/truth.ogg", "res://music/c/broken.ogg", "res://music/c/maran.ogg", "res://music/c/orion.ogg", "res://music/c/rose.ogg", "res://music/c/oskars.ogg", "res://music/c/rock.ogg", "res://music/c/yes-i-see.ogg", "res://music/c/tekilla.ogg", "res://music/c/sweetest-sin.ogg"]
var musictrackfl = ["res://music/fl/x-force.ogg", "res://music/fl/alien-bulls.ogg", "res://music/fl/eternity.ogg", "res://music/fl/truth.ogg", "res://music/fl/broken.ogg", "res://music/fl/maran.ogg", "res://music/fl/orion.ogg", "res://music/fl/rose.ogg", "res://music/fl/oskars.ogg", "res://music/fl/rock.ogg", "res://music/fl/yes-i-see.ogg", "res://music/fl/tekilla.ogg", "res://music/fl/sweetest-sin.ogg"]
var musictrackfr = ["res://music/fr/x-force.ogg", "res://music/fr/alien-bulls.ogg", "res://music/fr/eternity.ogg", "res://music/fr/truth.ogg", "res://music/fr/broken.ogg", "res://music/fr/maran.ogg", "res://music/fr/orion.ogg", "res://music/fr/rose.ogg", "res://music/fr/oskars.ogg", "res://music/fr/rock.ogg", "res://music/fr/yes-i-see.ogg", "res://music/fr/tekilla.ogg", "res://music/fr/sweetest-sin.ogg"]
var musictrackrl = ["res://music/rl/x-force.ogg", "res://music/rl/alien-bulls.ogg", "res://music/rl/eternity.ogg", "res://music/rl/truth.ogg", "res://music/rl/broken.ogg", "res://music/rl/maran.ogg", "res://music/rl/orion.ogg", "res://music/rl/rose.ogg", "res://music/rl/oskars.ogg", "res://music/rl/rock.ogg", "res://music/rl/yes-i-see.ogg", "res://music/rl/tekilla.ogg", "res://music/rl/sweetest-sin.ogg"]
var musictrackrr = ["res://music/rr/x-force.ogg", "res://music/rr/alien-bulls.ogg", "res://music/rr/eternity.ogg", "res://music/rr/truth.ogg", "res://music/rr/broken.ogg", "res://music/rr/maran.ogg", "res://music/rr/orion.ogg", "res://music/rr/rose.ogg", "res://music/rr/oskars.ogg", "res://music/rr/rock.ogg", "res://music/rr/yes-i-see.ogg", "res://music/rr/tekilla.ogg", "res://music/rr/sweetest-sin.ogg"]
var sfxtracks = ["res://sfx/title.wav", "res://sfx/crash.ogg", "res://sfx/complete.ogg"]
var debug = false
var release = "R0.2.3-beta"
var sk = false
var xm = 0
var ym = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
