extends Node


func die():
	$player.queue_free()

func win():
	print("u one")

func _physics_process(delta):
	pass
