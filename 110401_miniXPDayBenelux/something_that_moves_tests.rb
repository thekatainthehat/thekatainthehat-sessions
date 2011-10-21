require "test/unit"
require "something_that_moves"

class SomethingThatMovesTests < Test::Unit::TestCase
  def test_it_moves_please
    thing = SomethingThatMoves.new
    thing.please_be_at 2, 5

    thing.would_you_please_fall_down
    
    assert_equal [2, 6],
      thing.would_you_please_tell_me_where_you_are?
  end

  def test_it_moves_somwhere_else_please
    thing = SomethingThatMoves.new
    thing.please_be_at 3, 8
    thing.would_you_please_fall_down

    assert_equal [3, 9],
      thing.would_you_please_tell_me_where_you_are?
  end
end
