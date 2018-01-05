* Initiation
  * Read Gosu 2D game development library [website](https://www.libgosu.org/)
  * Read Gosu [Wiki](https://github.com/gosu/gosu/wiki)
  * Read Gosu [API Docs](http://www.rubydoc.info/github/gosu/gosu)
  * Join the [Gosu Forum](https://www.libgosu.org/cgi-bin/mwf/forum_show.pl)
  * Switch to Ruby version
    ```
    rbenv install 2.4.2; rbenv local 2.4.2; rbenv rehash; ruby -v;
    ```
  * [Install Gosu System-wide dependencies](https://github.com/gosu/gosu/wiki/Getting-Started-on-OS-X)
    ```
    brew install sdl2
    gem install gosu
    ```
  * Test Gosu
    ```
    ruby -rgosu -e 'w = Gosu::Window.new(200, 150); w.caption = "It works!"; w.show'
    ```

* Create Basic Ruby Game Window
  * Read Gosu [Wiki Ruby Tutorial](https://github.com/gosu/gosu/wiki/Ruby-Tutorial)
  * Create Gemfile with Gosu dependency and install
    ```
    bundle install
    ```
  * [Copy/Paste Simple Game code Minimal Window Class](https://github.com/gosu/gosu/wiki/Ruby-Tutorial#writing-a-simple-game)
  * Run Window Class using Gem installed by Bundler
    ```
    bundle exec ruby src/main.rb
    ```

* Add OpenGL
  * Reference: 
    * OpenGL Guide - http://www.diatomenterprises.com/different-sides-of-ruby-development-opengl/
    * OpenGL Official Documentation - https://www.khronos.org/registry/OpenGL-Refpages/gl2.1/
  * Create Axis Class in ./media/axis.rb to Draw Coordinates on 3D Grid
    * Note: Store Objects in ./objects Folder.
  * Create Lines and Set Line Colours
  * Draw the Lines from main.rb using the GLU (OpenGL Utility Library)
