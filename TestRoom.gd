extends Node2D

var LitTorches = global.TestRoomTorches
signal OpenDoors()


func _on_torch_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.TestRoomComplete = true

func _on_torch_2_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.TestRoomComplete = true


func _on_torch_3_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.TestRoomComplete = true


func _on_torch_4_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.TestRoomComplete = true
