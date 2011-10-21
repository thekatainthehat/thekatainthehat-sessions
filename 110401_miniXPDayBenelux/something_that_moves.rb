class SomethingThatMoves
  
  def please_be_at x, y
    @x, @y = x, y
  end
  
  def would_you_please_fall_down
    @y += 1
  end
  
  def would_you_please_tell_me_where_you_are?
    [@x, @y]
  end
  
  def accept visitor
    visitor.visit self
  end
end
