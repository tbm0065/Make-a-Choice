extends Area2D

var RoomScript = load("res://RoomItems.gd")
signal ArrowExitsVert()
signal ArrowBounceVert()
signal BoomerangExitsVert()


func _on_area_entered(area):
	
	if area.name == "Arrow":
		if global.BounceRemain != 0:
			emit_signal("ArrowBounceVert")
			global.BounceRemain -= 1
		
		elif global.BounceRemain == 0:
			area.get_parent().queue_free()
			emit_signal("ArrowExitsVert")
			global.BounceRemain = global.MaxBounce
			
	if area.name == "Boomerang":
		area.get_parent().queue_free()
		emit_signal("BoomerangExitsVert")

