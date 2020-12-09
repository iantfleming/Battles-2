require 'player'

describe Player do
  it 'can create an instance of player' do
    expect(subject).to be_kind_of(Player)
  end

  subject(:ian) { Player.new('Ian') }
  subject(:roger) { Player.new('Roger') }

  describe '#name' do
    it 'can return the player name' do
      expect(ian.name).to eq 'Ian'
    end
  end

  describe '#hit_points' do
    it 'returns the player hit points' do
      expect(ian.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(ian).to receive(:receive_damage)
      ian.attack(roger)
    end
  end


end
