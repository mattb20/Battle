class Player

  attr_reader :hitpoints, :name

  def initialize(name, hitpoints = 100)

    @hitpoints = hitpoints
    @name = name

  end


end
