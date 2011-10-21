require "test/unit"

class AcceptanceTests < Test::Unit::TestCase;def test_making_money; beret = Beret.new 4; rabbit = SomethingThatMoves.new; beret.please_be_at 3, 15; rabbit.please_be_at 4, 14; assert_equal 0.€, beret.money; rabbit.would_you_please_fall_down; assert_equal 1.€, beret.money; end ;end;