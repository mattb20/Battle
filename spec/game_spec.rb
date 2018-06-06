require 'game'
require 'player_class'

RSpec.describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player, :name => 'Matt' }
  let(:player2) { double :player, :name => 'Jordan' }


  describe '#player1' do
    it 'returns the first player' do
      expect(game.player1).to eq player1
    end






  end

  describe '#player2' do
    it 'returns the second player' do
      expect(game.player2).to eq player2
    end
  end


  describe '#attack' do
    it 'should call a method to reduce hitpoints on a given player' do
      # allow(player2).to receive(:reduce_hp)

      game.attack(player2.name)

      expect(player2).to receive(:reduce_hp)

      #
      # expect(player2).to receive(:hitpoints)


      # expect(player_to_be_attacked).to receive(:hitpoints)

    end
  end


end
