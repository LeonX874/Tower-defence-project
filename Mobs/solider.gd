extends CharacterBody2D


@export var speed = 500
var Health = 10

func _physics_process(delta):
	var path_follow = get_parent()
	path_follow.set_progress(path_follow.get_progress() + speed * delta)

	if path_follow.get_progress_ratio() >= 1:
		Game.Health -= 1
		death()
		return

	if Health <= 0:
		Game.Gold += 5
		death()
		return
	
func death():
	get_parent().get_parent().queue_free()
