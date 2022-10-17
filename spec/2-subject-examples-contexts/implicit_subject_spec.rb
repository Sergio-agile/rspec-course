RSpec.describe Hash do
  # let(:subject) { Hash.new }
  # subject works exactly like let

  it 'should start off empty' do
    expect(subject.length).to eq(0)
    subject[:some_key] = 'some_value'
    expect(subject.length).to eq(1)
  end

  it 'subject is isolated between examples' do
    expect(subject.length).to eq(0)
  end
end
