extends Control

@onready var game_state = $"../../"

func _on_resume_pressed():
	game_state.pauseMenu()
	
func _on_quit_pressed():
	get_tree().quit()
