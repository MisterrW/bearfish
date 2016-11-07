

class Bear

  attr_reader :name
  
  def initialize(name)
    @name = name
    @belly = []
  end

  def food_count
    return @belly.length
  end

  def eat_fish(fishplace, number)
    fish_to_eat = fishplace.serve_last_fish(number)
    @belly << fish_to_eat
  end

end


