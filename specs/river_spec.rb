require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")
  end

  def test_river_present
    assert_equal("Amazon",@river.name)
  end

  def test_put_fish_in_river
    @river.put_fish_in_river(@fish1)
    @river.put_fish_in_river(@fish2)
    @river.put_fish_in_river(@fish3)
    assert_equal(3, @river.stock.length)
  end

  def test_take_fish_from_river
    @river.take_fish_from_river(@fish1)
    assert_equal(0, @river.stock.length)
  end

end # class end
