RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matchers' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(a).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matchers' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(3)
      expect(b).not_to eql(3.0)
      expect(a).not_to eql(b)

      expect(a).to eql(3.0)
      expect(b).to eql(3)
    end
  end

  describe 'equal and be matchers' do
    let(:c) { [1, 2, 3 ] }
    let(:d) { [1, 2, 3 ] }
    let(:e) { c }

    it 'it cares about object identity' do
      expect(c).to eq(d)
      expect(c).to eql(d)

      expect(c).to equal(e)
      expect(c).to be(e) # exact same thing as 'equal', is an alias

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
