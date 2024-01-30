extends CharacterBody2D

const SPEED = 500.0

func _physics_process(delta):

	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("up", "down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
