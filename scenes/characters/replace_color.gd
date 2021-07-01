extends Sprite

export (Color) var origin = Color("#00ff00")
export (Color) var new_color


func _ready():
  change_color()


func change_color():
  var image: Image = self.texture.get_data()
  image.lock()

  for y in image.get_height():
    for x in image.get_width():
      if image.get_pixel(x, y) == origin:
        image.set_pixel(x, y, new_color)

  image.unlock();

  var new_texture = ImageTexture.new()
  new_texture.create_from_image(image, 0)
  self.texture = new_texture
