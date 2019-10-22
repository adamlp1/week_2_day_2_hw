class River

attr_reader :name, :fish

def initialize(name, fish)
  @name = name
  @fish = fish
end

def fish_count
  return @fish.size
end

def remove_fish(fish)
  @fish.delete(fish)
end

def find_fish_by_name(name)
  for fish in @fish
    if fish.name == name
      return fish
    end
    return nil
  end
end

# def take_fish_from_river(name, fish)
#   food = find_fish_by_name(fish)
#   remove_fish(fish)
# end








end
