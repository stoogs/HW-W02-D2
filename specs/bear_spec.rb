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



end # class end
