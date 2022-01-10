require_relative '../lib/player'

RSpec.describe Player do
  let(:start) { Player.new('Seun', 'X') }
  describe 'Player' do
    it 'Should return the name of the player' do
      expect(start.name).to eql('Seun')
    end
    it 'Should return the symbol of the player' do
      expect(start.symbol).to eql('X')
    end
    it 'Should return an empty array' do
      expect(start.arr).to eql([])
    end
    it 'Should not return a filled array' do
      expect(start.arr).not_to eql([Integer])
    end
    it 'Should not be empty' do
      expect(start.symbol).not_to eql(' ')
    end
  end
end
