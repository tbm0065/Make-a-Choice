extends Area2D

const MaxBounce = 3

var RoomScript = load("res://RoomItems.gd")
signal ArrowExits(value)
signal ArrowBounceHorz()
var BounceRemain = MaxBounce


func _on_area_entered(area):
	
	
	
	if area.name == "Arrow":
		if BounceRemain != 0:
			emit_signal("ArrowBounceHorz")
			BounceRemain -= 1
		
		elif BounceRemain == 0:
			area.get_parent().queue_free()
			emit_signal("ArrowExits",false)
			BounceRemain = MaxBounce
