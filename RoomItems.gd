extends Node2D

var Arrow = preload("res://Item/Arrow.tscn")
var Boomerang = preload("res://Item/boomerang.tscn")
#var PlayerScript = load("res://Player/player.gd")
@onready var player = get_node("../Player/Player")
var ArrowExists = false
var BoomerangExists = false

var proj

func AimArrow():
	if ArrowExists == false:
		proj = Arrow.instantiate()
		proj.position = player.global_position
		add_child(proj)
		ArrowExists = true
		
func ShootBoomerang():
	if BoomerangExists == false:
		proj = Boomerang.instantiate()
		proj.position = player.global_position
		add_child(proj)
		BoomerangExists = true
	

func _process(_delta):
	if Input.is_action_just_pressed("Shoot"):
		if global.PlayerItem == "Arrow":
			AimArrow()
		if global.PlayerItem == "Boomerang":
			if !BoomerangExists:
				global.BoomerangDirection = global.FacingDirection
			ShootBoomerang()
		
	
#Arrow htis a wall	
func _on_horizontal_walls_arrow_bounce_hori():
	proj.rotation = -proj.rotation

func _on_vertical_walls_arrow_bounce_vert():
	if proj.rotation > 0:
		proj.rotation = -proj.rotation + 135
	else:
		proj.rotation = -proj.rotation - 135
	
func _on_vertical_walls_arrow_exits_vert():
	ArrowExists = false

func _on_horizontal_walls_arrow_exits_hori():
	ArrowExists = false
	
#Boomerang Hits a wall
func _on_horizontal_walls_boomerang_exits_hori():
	BoomerangExists = false

func _on_vertical_walls_boomerang_exits_vert():
	BoomerangExists = false
