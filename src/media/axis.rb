class Axis
  attr_reader :x_width, :y_width, :z_width

  def initialize(x_width, y_width, z_width)
    @x_width = x_width
    @y_width = y_width
    @z_width = z_width
  end

  def self.draw(x_width, y_width, z_width)
    object = new(x_width, y_width, z_width)
    object.draw
  end

  def draw
    # Draw Action argument is Symbolic Contract of Object to draw
    # https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/xhtml/glBegin.xml
    glBegin(GL_LINES)
      # Set Colour for Line Object to be drawn
      # `glColor3d(red, green, blue)
      # https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/xhtml/glColor.xml
      glColor3d(1, 0, 0)
      # Set Two Points for OpenGL to draw a line between
      # `glVertex3d(x, y, z)
      # https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/xhtml/glVertex.xml
      glVertex3d(0, 0, 0)
      glVertex3d(x_width, 0, 0)
      glColor3d(0, 1, 0)
      glVertex3d(0, 0, 0)
      glVertex3d(0, y_width, 0)
      glColor3d(0, 0, 1)
      glVertex3d(0, 0, 0)
      glVertex3d(0, 0, z_width)
    glEnd
  end
end