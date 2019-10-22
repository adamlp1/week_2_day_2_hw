class Bear

  attr_reader :name, :type, :belly

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []

  end

  def belly_count
    return @belly.size
  end

  def add_fish(fish)
    @belly.push(fish)
  end





end
