class King
  def initialize(name)
    @name = name
  end
end

RSpec.describe King do # we just use the name of the class here
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represent a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end
