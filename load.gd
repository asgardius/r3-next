extends Node
var file
func _init():
	if FileAccess.file_exists(Global.hiscoresfile):
		file = FileAccess.open(Global.hiscoresfile, FileAccess.READ)
		var checkpoint = file.get_as_text().rsplit(",", true, 7)
		Global.level1max = checkpoint[0]
		Global.level2max = checkpoint[1]
		Global.level3max = checkpoint[2]
		Global.level4max = checkpoint[3]
		Global.level5max = checkpoint[4]
		Global.level6max = checkpoint[5]
		Global.level7max = checkpoint[6]

	# We need to revert the game state so we're not cloning objects
	# during loading. This will vary wildly depending on the needs of a
	# project, so take care with this step.
	# For our example, we will accomplish this by deleting saveable objects.
	#var save_nodes = get_tree().get_nodes_in_group("Persist")
	#for i in save_nodes:
	#	i.queue_free()

	# Load the file line by line and process that dictionary to restore
	# the object it represents.
	else:
		var saveinit = "9999999,9999999,9999999,9999999,9999999,9999999,9999999"
		var file = FileAccess.open(Global.hiscoresfile, FileAccess.WRITE)
		file.store_string(saveinit)
		var checkpoint = saveinit.rsplit(",", true, 7)
		Global.level1max = checkpoint[0]
		Global.level2max = checkpoint[1]
		Global.level3max = checkpoint[2]
		Global.level4max = checkpoint[3]
		Global.level5max = checkpoint[4]
		Global.level6max = checkpoint[5]
		Global.level7max = checkpoint[6]
