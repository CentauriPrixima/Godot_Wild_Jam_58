extends Node2D
@export_file("*.png") var Rocks:String
@onready var Rock_text = $Sprite2D
# Called when the node enters the scene tree for the first time.
func _ready():
	Rock_text.texture = Rocks 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
