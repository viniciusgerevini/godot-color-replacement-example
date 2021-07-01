extends "res://scenes/scene.gd"


const Character = preload("res://scenes/characters/character_with_shader.tscn")

func _create_character():
  var c = Character.instance()
  c.material.set_shader_param("new_color", _random_color())
  return c
