extends HSlider

@export var Audio_Bus:String

var bus_index:int

func _ready() -> void:
	bus_index = AudioServer.get_bus_index(Audio_Bus)
	value_changed.connect(_on_value_change)
	
	value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))

func _on_value_change(value:float) -> void:
	AudioServer.set_bus_volume_db(
		bus_index,
		linear_to_db(value)
	)
		
	
