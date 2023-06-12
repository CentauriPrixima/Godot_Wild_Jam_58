extends Sprite2D

#@export var can_move = false
#@export var moving_platform = false
#@onready var tween = create_tween()

#func _ready():
#	if can_move:
#		$AnimationPlayer.play("Idle")


#func _physics_process(delta):
#	if moving_platform:
#		platform()

#func platform():
#	tween.tween_property(self, "position", position.y - 20, 3)
#	tween.tween_property(self, "position", position.y + 20, 3)
#	pass
