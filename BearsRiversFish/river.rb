class River

  attr_accessor :name, :many_fish

  def initialize(name, many_fish = [])
    @name = name
    @many_fish = many_fish
  end

  def add_fish(fish)
    @many_fish << fish
  end

  def fish_count
    many_fish.count
  end
end
