extends Node2D


export (Color) var color = Color("#ffffff")


func _ready():
  $layer_1.set_modulate(color)

