require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test




  def setup
    @river = River.new("Amazon")
  end

  def test_river_present
    assert_equal("Amazon",@river.name)
  end

  def test_put_fish_in_river
    @river.put_fish_in_river(@fish1)
    assert_equal(1, @river.stock.length)
  end

end # class end
