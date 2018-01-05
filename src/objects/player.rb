class Player
  attr_accessor :x, :y

  def initialize(x_center, y_center)
    @x = x_center
    @y = y_center
    @x_translate = 0
    @y_translate = 0
  end

  def move_by_pixels(x_translate, y_translate)
    @x_translate = @x + x_translate
    @y_translate = @y + y_translate
  end
end