extends Node2D
@export var Sprout_timer:float = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.wait_time = Sprout_timer
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	$AnimationPlayer.play("new_animation")


func _on_animation_player_animation_finished(anim_name):
	$Timer.start()


func _on_area_2d_area_entered(hitbox: HurtBox) -> void:
		if hitbox == null:
			return
		print("Death by orb", Global.phealth)
		if Global.phealth >0:
			Global.phealth = Global.phealth - 1 
		elif Global.phealth<=0:
			print("Game Over")
	
