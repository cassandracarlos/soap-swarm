extends Control

@onready var game_state = $"../../"

func _on_continue_button_pressed():
	hide()
	Engine.time_scale = 1

func _on_quit_button_pressed():
	get_tree().quit()
