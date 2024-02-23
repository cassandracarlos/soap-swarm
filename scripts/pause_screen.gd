extends Control

func _on_resume_button_pressed():
	hide()
	Engine.time_scale = 1

func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
