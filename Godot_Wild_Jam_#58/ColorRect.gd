extends ColorRect
var aiming = false 
@onready var charge = $"../Charging"
@onready var fire = $"../Fire"
@onready var timer = $"../Charge"
var aimedx:float
var aimedy:float 
func _ready():
	timer.start()
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
		if aiming == false:
			position = Vector2(Global.lastknownx,Global.lastknowny)
			aimedx = position.x
			aimedy = position.y
			aiming = true
		if aiming == true:
			position = Vector2(aimedx,aimedy)
		if Global.gemcount == 4:
			$"..".queue_free()
			
			
		
		
	
	
		
	


func _on_charge_timeout():
	aiming = false

func _Start_Timer():
	timer.start()


func _on_area_2d_area_entered(hitbox2: HurtBox) -> void:
	if hitbox2 == null:
			return
		
	print("Death by Water", Global.phealth)
	if Global.phealth >0:
		Global.hurting = true
		Global.phealth = Global.phealth - 1 
	elif Global.phealth<=0:
		print("Game Over")
