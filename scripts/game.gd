extends Node

@export var rock_sprite : PackedScene

@onready var pause_menu = $PauseMenu
var paused = false

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
		
func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
		
	paused = !paused

func _on_spawn_timer_timeout():
	generate_obstacles()
	
func generate_obstacles():
	var obstacle = rock_sprite.instantiate()

