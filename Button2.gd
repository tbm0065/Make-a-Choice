extends Button





func _on_pressed():
	get_tree().change_scene_to_file("res://test_room_lv_2.tscn")
	global.PlayerItem = "None"
