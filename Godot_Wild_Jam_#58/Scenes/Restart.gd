extends Button
var switch:bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		


func _on_pressed():
	get_tree().reload_current_scene()
	Global.phealth = 3
	Global.gemcount = 0
	



