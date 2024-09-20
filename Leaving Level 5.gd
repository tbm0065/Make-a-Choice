extends Area2D


func _on_body_entered(body):
	if body.name == "Player" and global.Level5Complete == true:
		get_tree().change_scene_to_file("res://thanks_for_playing.tscn")

