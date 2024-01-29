extends ParallaxBackground

@export var scroll_speed: float = 100

var dir = Vector2(1,0)

func _process(delta):
	scroll_offset -= dir * scroll_speed * delta
