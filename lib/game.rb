require 'player_class'
class Game
  def initialize(player1 = Player.new('Jordan'), player2 = Player.new('Matt'))
    @players = [player1, player2]

  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end
end
