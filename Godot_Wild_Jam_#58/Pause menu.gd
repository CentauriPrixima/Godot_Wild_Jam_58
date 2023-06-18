extends Control
var Master_Bus = AudioServer.get_bus_index("Master")
var Music_Bus = AudioServer.get_bus_index("Music")
var SFX_Bus = AudioServer.get_bus_index("Sound Effect")

var is_paused = false:
	set(value):
		is_paused = value
		get_tree().paused = is_paused
		visible = is_paused

func _unhandled_input(event):
	if event.is_action_pressed("Pause"):
		self.is_paused =!is_paused
	
func _on_quit_2_pressed():
	get_tree().quit()
