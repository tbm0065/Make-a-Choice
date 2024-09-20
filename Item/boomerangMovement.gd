extends Node2D

@export var speed = 150
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if global.BoomerangDirection == "Up":
		position += -transform.y * speed * delta * direction
	elif global.BoomerangDirection == "Down":
		position += transform.y * speed * delta * direction
	elif global.BoomerangDirection == "Left":
		position += -transform.x * speed * delta * direction
	elif global.BoomerangDirection == "Right":
		position += transform.x * speed * delta * direction
	
	if global.BoomerangDirection == "Up" or global.BoomerangDirection == "Down":
		if Input.is_action_pressed("ui_left"):
			position += -transform.x * speed * delta
		elif Input.is_action_pressed("ui_right"):
			position += transform.x * speed * delta
			
	if global.BoomerangDirection == "Left" or global.BoomerangDirection == "Right":
		if Input.is_action_pressed("ui_up"):
			position += -transform.y * speed * delta
		elif Input.is_action_pressed("ui_down"):
			position += transform.y * speed * delta


	if Input.is_action_just_pressed("Shoot") and direction == 1:
		direction = -1
		
