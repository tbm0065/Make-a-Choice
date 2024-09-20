extends Node2D

var aim = true
@export var speed = 150


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if aim == true:
		look_at(get_global_mouse_position())
	if aim == false:
		position += transform.x * speed * delta
		
	if Input.is_action_just_released("Shoot"):
		aim = false
		
