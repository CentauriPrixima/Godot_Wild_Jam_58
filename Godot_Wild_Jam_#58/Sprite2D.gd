extends CharacterBody2D


const SPEED = 600.0
const JUMP_VELOCITY = -600.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		$Character.play("Run")
		if Input.is_action_pressed("ui_left"): ## I added this feel free to remove it just for testing purpose
			$Character.flip_h = true 
		else:
			$Character.flip_h = false  
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		$Character.play("Idle") ## This also cn be removed

	move_and_slide()
