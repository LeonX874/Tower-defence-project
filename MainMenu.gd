extends Node2D

func Start() -> void:
	print("Start")
	FadeTransition.change_scene("res://main.tscn")

func Options() -> void:
	print("Options")
	FadeTransition.change_scene("res://main.tscn")

func Quit() -> void:
	get_tree().quit()
