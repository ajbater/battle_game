require 'player'

describe Player do
  let(:name) { double :name }
  subject(:player) { described_class.new(name) }

  it { is_expected.to respond_to(:name)}

  it "returns the name of the player" do
    expect(player.name).to eq name
  end

end
