require 'gosu'

class Tutorial < Gosu::Window

  # Constructor initialises Gosu::Window base class
  # Creates a 640x480 pixels window
  # Set Caption for the window title bar
  def initialize
    super 640, 480
    self.caption = "Tutorial Game"
  end
  
  # Override method defined by Gosu::Window
  # `update()` is called 60 times per second by default
  # `update()` should contain the main "game logic"
  # (moving objects around, testing for collisions)
  def update
    # ...
  end
  
  # Override method defined by Gosu::Window
  # `draw()` is called 60 times per second by default
  # `draw()` may be skipped for performance reasons
  # `draw()` contains code to "redraw whole scene" without game logic
  def draw
    # ...
  end
end

# Window Main Game Loop of program that creates a Window and calls its show() method
# `show()` does not return until Window closed by user or close() called. 
Tutorial.new.show