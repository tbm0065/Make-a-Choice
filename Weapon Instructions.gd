extends Label

var ArrowText = "Hold left click and move mouse to aim arrow.\nRelease left click to fire,\narrow will bounce off 3 walls before stopping."

var BoomerangText = "Left click to throw Boomerang.\nMove side to side for boomerang\nto move with you.\nLeft click while the boomerang is flying to have it return."

var EmptyText = ""


func _on_arrow_body_entered(body):
	if body.name == "Player":
		self.text = ArrowText


func _on_boomerang_body_entered(body):
	if body.name == "Player":
		self.text = BoomerangText


func _on_boomerang_body_exited(body):
	if body.name == "Player":
		self.text = EmptyText


func _on_arrow_body_exited(body):
	if body.name == "Player":
		self.text = EmptyText
