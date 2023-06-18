extends Node2D
@export var Exit = false 
@export_enum("Level1","Level2","Level3","Win") var Level:int
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_area_2d_body_entered(body)-> void:
	if body == null:
		return
	if Exit == true:
		Global.gemcount = 0 
		Global.win()
		
		if Level == 1:
			get_tree().paused
			get_tree().create_timer(1).timeout
			Global.wipe = true
			if Global.wipe == true:
				get_tree().change_scene_to_file("res://Scenes/Levels/Kyveri_Level_2.tscn")
		elif Level == 0:
			get_tree().change_scene_to_file("res://Scenes/Kyveri_Level_1.tscn")
		elif Level == 2:
			get_tree().change_scene_to_file("res://Scenes/Levels/Kyveri_level_3.tscn")
		elif Level == 3:
			pass
		print('Winner')
		
