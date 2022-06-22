extends Sprite
onready var backgroundtexture = load("res://TestAssets/MeakashiCG_(6).webp")

func _input(event):
	if event.is_action_pressed("change_background"):
		var viewportWidth = get_viewport().size.x
		var viewportHeight = get_viewport().size.y
		var width_scale = viewportWidth / backgroundtexture.get_size().x
		set_scale(Vector2(width_scale, width_scale))
		self.texture = backgroundtexture
