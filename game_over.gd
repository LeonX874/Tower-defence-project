extends Control

func _ready():
	$Button.pressed.connect(_on_restart_pressed)

func _on_restart_pressed():
	Game.Health = 10
	Game.Gold = 30
	get_tree().change_scene_to_file("res://main.tscn")
