require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')
require_relative('../river')

class TestRiver < Minitest::Test
  
  def setup
    fish1 = Fish.new("Bob")
    fish2 = Fish.new("Alan")
    fish3 = Fish.new("Agnes")
    fishes = [fish1, fish2, fish3]
    @river = River.new(fishes)
  end

  def test_starts_with_fish
    assert_equal(3, @river.fishes_in_river())
    refute_equal(0, @river.fishes_in_river())
  end

  def test_can_serve_fish()
    fish = @river.serve_last_fish(1)
    assert_equal("Agnes", fish[0].name)
    puts fish
  end

end