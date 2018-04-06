class Player

  attr_reader :name, :hitpoints
  attr_writer :hitpoints
  DEFAULT_HP = 100

  def initialize(name, hitpoints = DEFAULT_HP)

    @hitpoints = hitpoints
    @name = name

  end


end
