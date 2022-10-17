RSpec.describe Array do
  subject(:sally) { ['Sally', 22] }

  it "has starts off with two elements, after pop has one" do
    expect(sally.length).to eq(2)
    sally.pop
    expect(sally.length).to eq(1)
  end

  it "has two elements" do
    expect(sally.length).to eq(2)
  end
end
