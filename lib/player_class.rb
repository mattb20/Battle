class Player

  attr_reader :name, :hitpoints
  attr_writer :hitpoints

  def initialize(name, hitpoints = 100)

    @hitpoints = hitpoints
    @name = name

  end


end
