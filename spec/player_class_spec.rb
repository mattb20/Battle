require 'player_class'


RSpec.describe Player do
  let(:player) { Player.new('Jordan') }

  describe '#name' do
    it 'returns the name of the player' do

      expect(player.name).to eq('Jordan')

    end
  end

  describe '#hitpoints' do
    it 'returns the hitpoints' do
      expect(player.hitpoints).to eq Player::DEFAULT_HP
    end
  end
  #
  # describe '#attack' do
  #
  # end

end
