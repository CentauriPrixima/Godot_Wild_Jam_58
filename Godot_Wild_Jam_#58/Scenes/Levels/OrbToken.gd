extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.gemcount == 4:
		$".".visible = true
		$Area2D/CollisionShape2D.disabled = false
	else:
		$".".visible = false
		$Area2D/CollisionShape2D.disabled = true


func _on_area_2d_area_entered(hitbox:HurtBox)-> void:
	if HurtBox == null:
		return
	get_tree().change_scene_to_file("res://Scenes/final_scene.tscn")
