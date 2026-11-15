extends Node

signal game_over

var Gold = 30
var Health = 10:
	set(value):
		Health = value
		if Health < 1:
			Health = 0
			game_over_triggered()
			
func game_over_triggered():
	game_over.emit()
	# Option A: show a game over screen
	get_tree().change_scene_to_file("res://game_ot.tscn")
