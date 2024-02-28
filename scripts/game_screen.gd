extends Node

@export var large_rock: PackedScene
@onready var pause_menu = $PauseMenu

var score
const SCROLL_SPEED: int = 4
var screen_size: Vector2
var paused = false

func _ready():
	new_game()

func _process(delta):
	if Input.is_action_just_pressed("pause"):
		pauseMenu()
	
	for rock in get_tree().get_nodes_in_group("rocks"):
		rock.position.x -= SCROLL_SPEED
		
func game_over():
	$ScoreTimer.stop()
	$ObstacleTimer.stop()

func new_game():
	score = 0
	$StartTimer.start()

func _on_score_timer_timeout():
	score += 1

func _on_start_timer_timeout():
	$ObstacleTimer.start()
	$ScoreTimer.start()
	
	generate_rocks()

func generate_rocks():
	var rock_instance = large_rock.instance()
	add_child(rock_instance)
	rock_instance.position.x = screen_size.x

func pauseMenu():
	if paused:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0

	paused = !paused
