extends Node2D


var LitTorches = global.Level5Torches
signal OpenDoors()


func _on_torch_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.Level5Complete = true

func _on_torch_2_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.Level5Complete = true
