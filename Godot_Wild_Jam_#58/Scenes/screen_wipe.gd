extends Node2D
@export_enum("Wipe away", "Wipe to")var animation 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.wipe == true:
		$AnimationPlayer.play(animation)


func _on_animation_player_animation_finished(Wipe_to):
	
	Global.wipe = false
