RSpec.describe Array do
  it 'should be initialize empty' do
    expect(subject.length).to eq(0)
    subject.push('apple')
    expect(subject.length).to eq(1)
  end
end
