extends "res://scenes/scene.gd"

const Character = preload("res://scenes/characters/character_layered.tscn")

func _create_character():
  var c = Character.instance()
  c.color = _random_color()
  return c
