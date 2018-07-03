require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

def setup
  @fish1 = Fish.new("Jimmy")
end

def test_fish_present
  assert_equal("Jimmy", @fish1.name)
end



end # class end
