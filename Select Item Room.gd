extends Node2D

func _on_arrow_body_entered(body):
	if body.name == "Player":
		global.SelectArrow = true

func _on_boomerang_body_entered(body):
	if body.name == "Player":
		global.SelectBoomerang = true


func _on_arrow_body_exited(body):
	if body.name == "Player":
		global.SelectArrow = false


func _on_boomerang_body_exited(body):
	if body.name == "Player":
		global.SelectBoomerang = false
