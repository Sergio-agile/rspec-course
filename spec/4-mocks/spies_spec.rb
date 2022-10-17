RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been receivedd' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'resests between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality as the regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(3).times
    expect(animal).to have_received(:eat_food).with('Sushi').times
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end
end
