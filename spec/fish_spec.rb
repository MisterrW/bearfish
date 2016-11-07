require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < Minitest::Test
  def setup
    @fish = Fish.new("Alan")
  end

  def test_fish_name
    assert_equal("Alan", @fish.name)
  end


end