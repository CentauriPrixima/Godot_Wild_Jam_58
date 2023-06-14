extends Node

var player_dead = false
var foot_switch = true

func win():
	print("u one")

func _physics_process(delta):
	pass

func die():
	print("u dead")
	player_dead = true

	
