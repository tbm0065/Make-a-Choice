extends Area2D





func _on_body_entered(body):
	print(body.name)
	if body.name == "Player" and global.PlayerItem != "None":
		get_tree().change_scene_to_file("res://TestRoom.tscn")
