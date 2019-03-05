require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    fish = Fish.new("Sebastian")
    @river = River.new("Danube",[fish])
    @bear = Bear.new('Baloo', "brown bear", @river)
  end

  def test_move_fish
    @bear.move_fish
    assert_equal(1, @bear.stomach.count)
    assert_equal(0, @bear.river.many_fish.count)
  end

  def test_roar
    assert_equal("Rooooooaaar!", @bear.roar)
  end

  def test_food_count
    assert_equal(0, @bear.food_count)
    @bear.move_fish
    assert_equal(1, @bear.food_count)
  end
end
