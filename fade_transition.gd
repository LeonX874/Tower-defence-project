extends CanvasLayer

@onready var anim: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	hide()

func change_scene(target_scene: String) -> void:
	show()
	anim.play("Fade_in")
	await anim.animation_finished
	
	get_tree().change_scene_to_file(target_scene)
	
	anim.play("Fade_out")
	await anim.animation_finished
	hide()
