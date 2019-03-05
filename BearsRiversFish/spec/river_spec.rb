require('minitest/autorun')
require('minitest/rg')
require('../river')
require('../fish')



class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Danube", [])
    @fish1 = Fish.new("Nemo")
  end

  def test_add_fish
    @river.add_fish(@fish1)
    assert_equal(1, @river.many_fish.count)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count)
  end
end
