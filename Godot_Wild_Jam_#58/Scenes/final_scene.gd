extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	story_time()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Pause"):
		_on_button_pressed()


func story_time()->void:
	$Fades.play("Boss_fade")
	await get_tree().create_timer(2).timeout
	$Node2D/Label.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label.visible = false
	$Node2D/Label2.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label2.visible = false
	$Node2D/Label3.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label3.visible = false
	$Node2D/Label4.visible = true
	$Fades.play("Boss_fade_out")
	await get_tree().create_timer(5).timeout
	$Node2D/Label4.visible = false
	$Node2D/Label5.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label5.visible = false
	$Node2D/Label6.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label6.visible = false
	$Node2D/Label7.visible = true
	$MainFinal.visible = true
	$MainFinal/Clouds.visible =true
	$MainFinal/Clouds2.visible =true
	$BossBg.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label7.visible = false
	$Node2D/Label8.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label8.visible = false
	$Node2D/Label9.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label9.visible = false
	$Node2D/Label10.visible = true
	$MainFinal.visible = false
	$MainFinal/Clouds.visible =false
	$MainFinal/Clouds2.visible =false
	$BigAssHead.visible = true
	$BigAssHead/EyeLids.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label10.visible = false
	$Node2D/Label11.visible = true
	$BigAssHead/EyeLids.visible = false
	await get_tree().create_timer(5).timeout
	$Node2D/Label11.visible = false
	$Node2D/Label12.visible = true
	await get_tree().create_timer(3).timeout
	$"Fade Out".visible = true
	$Fades.play("White Fade")
	await get_tree().create_timer(2).timeout
	$BigAssHead.visible = false
	$BigAssHead/EyeLids.visible = false
	$Fades.play("White Fade_0ut")
	$BossBg.visible = false
	$Node2D/Label12.visible = false
	$Node2D/Label13.visible = true
	await get_tree().create_timer(5).timeout
	$Node2D/Label13.visible = false
	$Node2D/Label14.visible = true
	await get_tree().create_timer(7).timeout
	get_tree().change_scene_to_file("res://Scenes/Thanks for Playing.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Thanks for Playing.tscn")
