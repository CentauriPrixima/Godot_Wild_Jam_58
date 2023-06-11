extends Area2D

@export var invincable_pu = false
@export var double_jump_pu = false
@export var time_of_pu = 0


func _ready():
	pass



func _physics_process(delta):
	pass


func _on_body_entered(body):
	if body.has_method("player"):
		
		if invincable_pu:
			body.invincable_pu(time_of_pu)
		elif double_jump_pu:
			body.double_jump_pu()
	queue_free()
