extends AnimatedSprite2D




func _on_player_item_selected():
	self.queue_free()
