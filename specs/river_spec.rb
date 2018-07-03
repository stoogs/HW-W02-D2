require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon", 0 )
  end

  def test_river_present
    assert_equal("Amazon",@river.name)
  end



end # class end
