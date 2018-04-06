require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }


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


end
