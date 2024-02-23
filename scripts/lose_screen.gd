extends Node

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://scenes/game_screen.tscn")

func _on_exit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
