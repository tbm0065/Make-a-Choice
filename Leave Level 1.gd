extends Area2D





func _on_body_entered(body):
	if body.name == "Player" and global.Level1Complete == true:
		get_tree().change_scene_to_file("res://level_2.tscn")
