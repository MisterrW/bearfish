class River
  def initialize(fishes)
    @fishes = fishes
  end

  def fishes_in_river
    return @fishes.length
  end

  def serve_last_fish(number)
    if @fishes.length >= number
      return @fishes.pop(number)
    end
  end

end