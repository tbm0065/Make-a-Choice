extends Node2D


var LitTorches = global.Level3Torches



func _on_torch_change_flame_count():
	LitTorches -= 1
	if LitTorches == 0:
		global.UnlockRoomLeft = true
		global.UnlockRoomRight = true
		global.Level3Complete = true
