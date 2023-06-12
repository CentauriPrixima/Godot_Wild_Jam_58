extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	pass


func _on_body_entered(body):
	if body.has_method("player"):
		Global.die()


func _on_body_exited(body):
	if body.has_method("player"):
		Global.player_dead = false
