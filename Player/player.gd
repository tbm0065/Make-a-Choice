extends CharacterBody2D

const SPEED = 100.0

#Global Variables
var lastDirection = "" #Last Walking Direction
var equippedItem = "Arrow" #Equipped Item
var Arrow = load("res://Item/Arrow.gd").new()
var Aiming = false

signal ItemSelected()

@onready var anim = get_node("AnimationPlayer")

func _physics_process(_delta):
	var directionX = Input.get_axis("ui_left", "ui_right")
	var directionY = Input.get_axis("ui_up", "ui_down")
	
	#Select Item
	if Input.is_action_just_pressed("Select item"):
		if global.SelectArrow:
			global.PlayerItem = "Arrow"
			global.UnlockRoomLeft = true
			global.UnlockRoomRight = true
			emit_signal("ItemSelected")
		elif global.SelectBoomerang:
			global.PlayerItem = "Boomerang"
			global.UnlockRoomLeft = true
			global.UnlockRoomRight = true
			emit_signal("ItemSelected")

	if Input.is_action_just_pressed("Shoot"):
		Aiming = true
	if Input.is_action_just_released("Shoot"):
		Aiming = false
		

	if Aiming == false:
		if directionX:
			velocity.x = directionX * SPEED
			anim.play("Walking Side")
			lastDirection = "Side"
			if directionX == -1:
				get_node("AnimatedSprite2D").flip_h = true
				global.FacingDirection = "Left"
			elif directionX == 1:
				get_node("AnimatedSprite2D").flip_h = false
				global.FacingDirection = "Right"
			velocity.y = move_toward(velocity.y, 0, SPEED)
			
		elif directionY:
			velocity.y = directionY * SPEED
			if directionY == -1:
				anim.play("Walking Up")
				lastDirection = "Up"
				global.FacingDirection = "Up"
			elif directionY == 1:
				anim.play("Walking Down")
				lastDirection = "Down"
				global.FacingDirection = "Down"
			velocity.x = move_toward(velocity.x, 0, SPEED)
		else:
			velocity.y = move_toward(velocity.y, 0, SPEED)
			velocity.x = move_toward(velocity.x, 0, SPEED)
			
			if "Up" in lastDirection:
				anim.play("Idle Up")
			elif "Down" in lastDirection:
				anim.play("Idle Down")
			elif "Side" in lastDirection:
				anim.play("Idle Side")
		
	
	move_and_slide()


