extends Area2D

var RoomScript = load("res://RoomItems.gd")
signal ArrowExitsHori()
signal ArrowBounceHori()
signal BoomerangExitsHori()


func _on_area_entered(area):
	
	if area.name == "Arrow":
		if global.BounceRemain != 0:
			emit_signal("ArrowBounceHori")
			global.BounceRemain -= 1
		
		elif global.BounceRemain == 0:
			area.get_parent().queue_free()
			emit_signal("ArrowExitsHori")
			global.BounceRemain = global.MaxBounce

	if area.name == "Boomerang":
		area.get_parent().queue_free()
		emit_signal("BoomerangExitsHori")
