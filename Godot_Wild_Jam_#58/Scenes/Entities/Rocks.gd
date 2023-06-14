extends Sprite2D
@export_file("*.png") var Texture_Override:String

# Called when the node enters the scene tree for the first time.
func _ready():
	texture= ResourceLoader.load(Texture_Override)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
