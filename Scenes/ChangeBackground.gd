extends Sprite
onready var backgroundtexture = load("res://TestAssets/Sol_Guilty_Gear_Strive.webp")

func _input(event):
	if event.is_action_pressed("change_background"):
		self.texture = backgroundtexture
