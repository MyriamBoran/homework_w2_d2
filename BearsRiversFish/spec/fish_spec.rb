require('minitest/autorun')
require('minitest/rg')
require('../fish')

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Nemo")
  end
end
