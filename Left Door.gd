extends AnimatedSprite2D


func _physics_process(_delta):
	if global.UnlockRoomLeft:
		self.flip_h = true
		position += transform.x * -5
		global.UnlockRoomLeft = false
