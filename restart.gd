extends Button



func _on_pressed() -> void:
	Game.Health = 10
	Game.Gold = 30
	get_tree().change_scene_to_file("res://main.tscn")
