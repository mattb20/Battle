require 'player_class'


RSpec.describe Player do
  let(:player) { Player.new('Jordan') }

  describe '#name' do
    it 'returns the name of the player' do

      expect(player.name).to eq('Jordan')

    end
  end

end
