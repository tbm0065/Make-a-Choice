extends AnimatedSprite2D



func _on_area_2d_extinguish_flame():
	self.queue_free()
