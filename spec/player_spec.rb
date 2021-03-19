require 'player'

describe Player do
  subject(:george) { Player.new('george') }

  describe '#name' do
    it 'returns its name' do
      expect(george.name).to eq "george"
    end
  end
end
