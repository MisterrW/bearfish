require('minitest/autorun')
require('minitest/rg')
require_relative('../bearfish')

class TestFish < Minitest::Test
  def setup
    @fish = Fish.new("Alan")
    @bear = Bear.new ("Brian")
  end

  def test_fish_name
    assert_equal("Alan", @fish.name)
  end

  def test_bear_name
    assert_equal("Brian", @bear.name)
  end
end