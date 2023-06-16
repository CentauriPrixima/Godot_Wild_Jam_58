class_name Gbox
extends Node2D
var Hp = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_area_entered(hitbox2: HurtBox) -> void:
	if hitbox2 == null:
			return
		
	print("Death by orb", Global.phealth)
	if Global.phealth >0:
		Global.hurting = true
		Global.phealth = Global.phealth - 1 
	elif Global.phealth<=0:
		print("Game Over")
	
