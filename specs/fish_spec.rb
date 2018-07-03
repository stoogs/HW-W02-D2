require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class FishTest < MiniTest::Test

def setup
  @fish1 = Fish.new("Jimmy")
  @fish2 = Fish.new("Mick")
  @fish3 = Fish.new("Jerry")
end

def test_fish_present
  assert_equal("Jimmy", @fish1.name)
end



end # class end
