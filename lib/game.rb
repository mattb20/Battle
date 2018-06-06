class Game
  def initialize(player1 = Player.new('Jordan'), player2 = Player.new('Matt'))

    @players = [player1, player2]

  end

  def self.create(player1, player2)
    @game = Game.new(player1 = Player.new('Jordan'), player2 = Player.new('Matt'))
  end

  def self.instance
    @game
  end

  def player1

    @players.first

  end

  def player2

    @players.last

  end

  def attack(player)

    player_to_be_attacked = @players.select { |x| x.name == player}.pop
    player_to_be_attacked.reduce_hp

  end


end
