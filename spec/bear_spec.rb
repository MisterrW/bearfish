require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class TestBear < Minitest::Test
  def setup
    fish1 = Fish.new("Bob")
    fish2 = Fish.new("Alan")
    fish3 = Fish.new("Agnes")
    fishes = [fish1, fish2, fish3]
    @river = River.new(fishes)
    @bear = Bear.new("Yogi")
  end
  
  def test_bear_name
    assert_equal("Yogi", @bear.name)
  end

  def test_bear_eat_fish

    @bear.eat_fish(@river, 1)

    assert_equal(1, @bear.food_count())
    assert_equal(2, @river.fishes_in_river())
  end

end

