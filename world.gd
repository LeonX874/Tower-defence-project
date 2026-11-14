extends Node2D

var button_type = null

func Start() -> void:
	print("Option Was Clicked")
	button_type= "Start"
	$Fade_transition.show()
	$Fade_transition/Fade_timer.start()
	$Fade_transition/AnimationPlayer.play("Fade_in")

func Options() -> void:
	print("Start Was Clicked")
	button_type= "Options"
	$Fade_transition.show()
	$Fade_transition/Fade_timer.start()
	$Fade_transition/AnimationPlayer.play("Fade_in")

func Quit() -> void:
	get_tree().quit()

func _on_fade_timer_timeout() -> void:
	if button_type == "Start" :
		get_tree().change_scene_to_file("res://main.tscn")
	elif button_type == "Options" :
		get_tree().change_scene_to_file("res://main.tscn")
