require 'player'

describe Player do
  it 'can create an instance of player' do
    expect(subject).to be_kind_of(Player)
  end

  subject(:bob) { Player.new('Bob') }

  describe '#name' do
    it 'can return the player name' do
      expect(bob.name).to eq 'Bob'
    end
  end

  describe '#hit_points' do
    it 'returns the player hit points' do
      expect(bob.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

end
