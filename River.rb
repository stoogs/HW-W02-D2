class River

  attr_reader :name, :stock

  def initialize(name)
    @name = name
    @stock = []
  end

def put_fish_in_river(fish)
  @stock << fish
end

def take_fish_from_river(fish)
  @stock.delete(fish)
end


#   bus.pick_up(@queue.pop())












end # class end
