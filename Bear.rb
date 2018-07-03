class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

def put_fish_in_bear(fish)
  @stomach << fish
end

def roar
  return "GRLOOOWWRRLL"
end


end #class end
