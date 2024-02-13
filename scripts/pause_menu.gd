extends Node

func resume():
	get_tree().paused = false

func pause():
	get_tree().paused = true

func testEsc():
	
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
		
	elif Input.is_action_just_pressed("esc") and get_tree().paused:
		resume()

func _on_continue_button_pressed():
	resume()

func _on_quit_button_pressed():
	get_tree().change_scene_to_file("res://scenes/start_menu.tscn")
