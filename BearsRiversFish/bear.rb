class Bear

  attr_accessor :name, :type, :stomach, :river

  def initialize(name, type, river)
    @name = name
    @type = type
    @stomach = []
    @river = river
  end

  def move_fish()
    fish = river.many_fish.pop
    stomach << fish
  end

  def roar()
    return "Rooooooaaar!"
  end

  def food_count()
    stomach.count
  end
end
