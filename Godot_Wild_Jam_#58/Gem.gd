extends Area2D
var pickedup= false
@onready var SFX = $"../../Pickup sfx"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(hitbox:HurtBox)-> void:
	if hitbox == null:
		return
	SFX.play()
	if pickedup == false:
		pickedup = true
		Global.gemcount = Global.gemcount+1
		print("Picked up a gem ", Global.gemcount )
		$"../../Delete timer".start()
	


func _on_timer_timeout():
	$"../..".queue_free()
