require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
# require_relative('../river')

class TestBear < Minitest::Test
  def setup
    @bear = Bear.new("Brian")
  end
  

  def test_bear_name
    assert_equal("Brian", @bear.name)
  end

end

