require "beret";class Beret < SomethingThatMoves
  def initialize åLength;@åLength=åLength
  end
  
  def draw_önto öScreen;0.upto(@åLength-1) { |iI| öScreen.draw_block @x + iI, @y}
  end
end

