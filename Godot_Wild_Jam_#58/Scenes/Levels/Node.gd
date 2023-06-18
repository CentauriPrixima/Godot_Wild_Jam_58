extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	story_time()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		_on_button_pressed()


func story_time()->void:
	$"../AnimationPlayer".play("FAde_in")
	await get_tree().create_timer(2).timeout
	$Label.visible = true
	await get_tree().create_timer(5).timeout
	$Label.visible = false
	$Label2.visible = true
	await get_tree().create_timer(5).timeout
	$Label2.visible = false
	$Label3.visible = true
	await get_tree().create_timer(5).timeout
	$Label3.visible = false
	$Label4.visible = true
	await get_tree().create_timer(5).timeout
	$Label4.visible = false
	$Label5.visible = true
	await get_tree().create_timer(5).timeout
	$Label5.visible = false
	$Label6.visible = true
	await get_tree().create_timer(5).timeout
	$Label6.visible = false
	$Label7.visible = true
	await get_tree().create_timer(5).timeout
	$Label7.visible = false
	$Label8.visible = true
	await get_tree().create_timer(5).timeout
	$Label8.visible = false
	$Label9.visible = true
	await get_tree().create_timer(5).timeout
	$Label9.visible = false
	$Label10.visible = true
	await get_tree().create_timer(5).timeout
	$Label10.visible = false
	$Label11.visible = true
	await get_tree().create_timer(5).timeout
	$Label11.visible = false
	$Label12.visible = true
	await get_tree().create_timer(5).timeout
	$Label12.visible = false
	$Label13.visible = true
	await get_tree().create_timer(5).timeout
	$Label13.visible = false
	$Label14.visible = true
	await get_tree().create_timer(5).timeout
	$Label14.visible = false
	$Label15.visible = true
	await get_tree().create_timer(5).timeout
	$Label15.visible = false
	$Label16.visible = true
	await get_tree().create_timer(5).timeout
	$Label16.visible = false
	$"../AnimationPlayer".play("FAde")
	await get_tree().create_timer(3).timeout
	$Label17.visible = true
	await get_tree().create_timer(5).timeout
	$Label17.visible = false
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://Scenes/Kyveri_Level_1.tscn")
	
	


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Kyveri_Level_1.tscn")
