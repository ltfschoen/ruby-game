require 'opengl'
require 'glu'
require 'gosu'
require_relative './media/axis.rb'
include Gl, Glu

class Window < Gosu::Window

  # Constructor initialises Gosu::Window base class
  # Creates a 640x480 pixels window
  # Set Caption for the window title bar
  def initialize
    super 640, 480
    self.caption = "Game in OpenGL"
  end
  
  # Override method defined by Gosu::Window
  # `update()` is called 60 times per second by default
  # `update()` should contain the main "game logic"
  # (moving objects around, testing for collisions)
  def update
  end
  
  # Override method defined by Gosu::Window
  # `draw()` is called 60 times per second by default
  # `draw()` may be skipped for performance reasons
  # `draw()` contains code to "redraw whole scene" without game logic
  def draw
    gl do
      # Clear Buffers to Preset values
      # `glClear(mask)` 
      # https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/xhtml/glClear.xml
      glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
      # Save Untranslated Coordinate System
      # Note: OpenGL Matrix stack is obsolete (removed from OpenGL 3.0 core onward)
      glPushMatrix
        # Move Axis to Center of Screen
        # `glTranslate(x, y, z)` multiplies Current Matrix by Translation Matrix
        # to produce a Translation by x, y, z, and where x, y, z are 
        # the Coordinates of Translation Vector
        # https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/xhtml/glTranslate.xml
        glTranslated(width/2, height/2, 0)
        Axis.draw(100, 100, 100)
      # Restore Untranslated Coordinate System
      glPopMatrix
    end
  end

  def button_down(id)
    # http://www.rubydoc.info/github/gosu/gosu/Gosu
    exit if id == Gosu::KbEscape
  end
end

# Window Main Game Loop of program that creates a Window and calls its show() method
# `show()` does not return until Window closed by user or close() called. 
Window.new.show