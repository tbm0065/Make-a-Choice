extends AnimatedSprite2D


func _physics_process(_delta):
	if global.UnlockRoomRight:
		self.flip_h = true
		position += transform.x * 5
		global.UnlockRoomRight = false
