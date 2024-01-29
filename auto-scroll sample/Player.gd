extends CharacterBody2D

@export var move_speed: float = 100.0

func _physics_process(delta):
	
	velocity.y = 0
	
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= move_speed
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += move_speed
		
	move_and_slide()  
