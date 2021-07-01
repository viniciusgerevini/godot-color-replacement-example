extends "res://scenes/scene.gd"


const Character = preload("res://scenes/characters/character_with_color_replacement.tscn")

func _create_character():
  var c = Character.instance()
  c.new_color = _random_color()
  return c
