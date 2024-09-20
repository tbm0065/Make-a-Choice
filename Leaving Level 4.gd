extends Area2D

func _on_body_entered(body):
	if body.name == "Player" and global.Level4Complete == true:
		get_tree().change_scene_to_file("res://level_5.tscn")
