extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(hitbox:HurtBox)-> void:
	if hitbox == null:
			return
		
	print("Death by orb", Global.phealth)
	if Global.phealth >0:
		Global.hurting = true
		Global.phealth = Global.phealth - 1 
	elif Global.phealth<=0:
		print("Game Over")
	
	
