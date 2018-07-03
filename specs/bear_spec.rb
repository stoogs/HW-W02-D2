require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class BearTest < MiniTest::Test

def setup
  @bear1 = Bear.new("Yogi", "Honey")
end

def test_bear_name
  assert_equal("Yogi", @bear1.name)
end

def test_bear_stomach_empty
  assert_equal(0, @bear1.stomach.length)
end

def test_put_fish_in_bear
  @bear1.put_fish_in_bear(@fish1)
  assert_equal(1, @bear1.stomach.length)
end

def test_bear_stomach_full
  @bear1.put_fish_in_bear(@fish1)
  @bear1.put_fish_in_bear(@fish2)
  @bear1.put_fish_in_bear(@fish3)
  assert_equal(3, @bear1.stomach.length)
end

def test_roar
   assert_equal("GRLOOOWWRRLL", @bear1.roar)
end

end # class end
