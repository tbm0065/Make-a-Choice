extends Node2D

signal ChangeFlameCount()

func _on_area_2d_extinguish_flame():
	emit_signal("ChangeFlameCount")
