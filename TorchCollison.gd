extends Area2D

var PlayerItems = ["Arrow","Boomerang"]
signal ExtinguishFlame()

func _on_area_entered(area):
	for item in PlayerItems:
		if area.name in item:
			emit_signal("ExtinguishFlame")
			self.queue_free()
