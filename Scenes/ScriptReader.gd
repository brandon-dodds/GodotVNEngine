extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func loadFile():
	var file = File.new()
	file.open("res://Scripts/MainScript.txt", File.READ)
	var content = file.get_as_text()
	file.close()
	return content
# Called when the node enters the scene tree for the first time.
func _ready():
	var x = loadFile()
	var regex = RegEx.new()
	regex.compile("(?:background) (.+$)")
	var result = regex.search(x)
	if result:
		print(result.get_string(1))
		$CanvasLayer/Background.changeBackground(result.get_string(1))
