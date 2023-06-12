extends Node

class powerups:
	func yes(s):
		pass

func win():
	print("u one")

func _physics_process(delta):
	pass

func die():
	$player.queue_free()
