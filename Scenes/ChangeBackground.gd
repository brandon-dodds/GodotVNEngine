extends Sprite

func changeBackground(background):
	var backgroundtexture = load("res://TestAssets/%s" % background)
	var viewportWidth = get_viewport().size.x
	var viewportHeight = get_viewport().size.y
	var width_scale = viewportWidth / backgroundtexture.get_size().x
	var height_scale = viewportHeight / backgroundtexture.get_size().y
	set_scale(Vector2(width_scale, height_scale))
	self.texture = backgroundtexture
