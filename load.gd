extends Node
var file = File.new()
func _init():
	if file.file_exists(Global.hiscoresfile):
		Global.firstrun = false
		file.open(Global.hiscoresfile, File.READ)
		Global.levelmax = file.get_as_text().rsplit(",", true, 9)
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
		Global.firstrun = true
		var saveinit = "9999999,9999999,9999999,9999999,9999999,9999999,9999999,9999999,9999999"
		var file = File.new()
		file.open(Global.hiscoresfile, File.WRITE)
		file.store_string(saveinit)
		Global.levelmax = saveinit.rsplit(",", true, 9)
