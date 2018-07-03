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
    # Add a couple fish first
    @river.put_fish_in_river(@fish1)  # put in @stock
    @river.put_fish_in_river(@fish2)  # put in @stock
    @river.put_fish_in_river(@fish3)  # put in @stock
    # Remove 1 fish
    @river.take_fish_from_river(@fish1)
    assert_equal(2, @river.stock.length)
  end

end # class end
