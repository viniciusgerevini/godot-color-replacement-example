extends Node2D

var colors = [
    Color("#8a582f"),
    Color("#af937b"),
    Color("#f3a562")
]

var move = 0


func _unhandled_input(event):
  if event.is_action_pressed("click"):
    var c = _create_character()
    add_child(c)
    c.global_position = get_global_mouse_position()


func _create_character():
  pass


func _random_color():
  randomize()
  return colors[randi() % colors.size()]

