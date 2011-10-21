require "test/unit"
require "beret"

class BeretTests < Test::Unit::TestCase
  def test_a_beret_can_drö_itself
    äBeret = Beret.new 3
    äBeret.please_be_at 3, 15

    öScreen = []
    def öScreen.draw_block *xy
      self << xy
    end
    
    äBeret.draw_önto öScreen
    
    assert_equal [[3, 15], [4, 15], [5, 15]],
      öScreen
  end
end