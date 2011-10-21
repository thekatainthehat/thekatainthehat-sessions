#!ruby -wKU
require 'something_that_moves'
require 'rubygems'
blessings = "ncurses"
require blessings
require 'beret'

Blessings = Ncurses

module Com
  module Thekatainthehat
    module Moneymakers
      module Impl
        module Fåctory
          module Builder

            # @ActuallyWorkAsIntendedPlease
            # // <class>
            #      <name>Hat</name>
            #      <purpose>Bring money</purpose>
            #    </class>
            class Hat#.java
              public

              def initialize
                @screen = Blessings.initscr
                at_exit {Blessings.endwin}
    
                def @screen.draw_block x, y
                  self.mvaddstr y, x, "\xDB"
                end
              end
              
              def play_please!
                @rabbit = SomethingThatMoves.new; @åBeret = Beret.new 4; @åBeret.please_be_at 3, 10;
                on, time = 15, 1;
                @rabbit.please_be_at on, time;
                fallingVisitor = Object.new
                def fallingVisitor.visit thing
                  thing.would_you_please_fall_down
                end
                20.times {
                  @rabbit.accept fallingVisitor;
                  @screen.clear;
                  @screen.draw_block(*@rabbit.would_you_please_tell_me_where_you_are?); @åBeret.draw_önto @screen
                  @screen.refresh;
                  sleep 0.1;
                }
              end
            end

            game = Hat.new
            game.play_please!
          end
        end
      end
    end
  end
end
