RSpec.describe 'a random double' do
  it 'only allows to defined methods to be invoked' do
    stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to be_nil # => will fail

    stuntman = double('Mr. Danger')
    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end

RSpec.describe 'doubles' do
  it "tests the student's knowledge of the course's content" do
    db = double('Database Connection', connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq(true)
    expect(db.disconnect).to eq('Goodbye')

    fs = double('File System')
    allow(fs).to receive(:read).and_return('Romeo and Juliet')
    allow(fs).to receive(:write).and_return(false)
  end
end
