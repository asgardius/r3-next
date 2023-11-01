extends Node
func _init():
	var saveinit = str(Global.level1max)+","+str(Global.level2max)+","+str(Global.level3max)+","+str(Global.level4max)+","+str(Global.level5max)+","+str(Global.level6max)+","+str(Global.level7max)
	var file = FileAccess.open(Global.hiscoresfile, FileAccess.WRITE)
	file.store_string(saveinit)
	file.close()
