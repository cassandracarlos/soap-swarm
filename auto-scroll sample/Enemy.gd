extends Area2D

var start_x: Vector2
var target_x: Vector2

@export var move_dir: Vector2
@export var move_speed: float = 50.0
	
func _ready():
	start_x = global_position
	target_x = start_x + move_dir
	
func _process(delta):
	global_position = global_position.move_toward(target_x, move_speed * delta)
