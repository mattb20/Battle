class Player

  attr_reader :name
  attr_accessor :hitpoints
  DEFAULT_HP = 100

  def initialize(name, hitpoints = DEFAULT_HP)

    @hitpoints = hitpoints
    @name = name

  end

  def reduce_hp
    @hitpoints -= 10
  end


end
