class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # example group, a group of one or more examples
  ########### Nemo approach ###########
  # This is going to be evaluated separately for each example
  # lazy loading. No variable will be created or stored until it is needed
  # Memoriaing changes
  let(:card) { Card.new('Ace', 'Spades') }
  #let!(:card) { Card.new('Ace', 'Spades') } => not lazy loading
  # let(:x) { 1 + 1 }
  # let(:y) { x + 10 }

  ########### Helper methods approach ###########
  # def card
  #   Card.new('Ace', 'Spades')
  # end

  ######## Hook before do #######
  # before do # hook => code is running befre each example
  # # before(:example) do # alternatively => allows us to customize. ex: :context
  #   @card = Card.new('Ace', 'Spades')
  # end


  it "has a rank and that rank can change" do
  # specify "has a rank" do (alternatively)
    expect(card.rank).to eq 'Ace'
    card.rank = 'Queen'
    expect(card.rank).to eq 'Queen'
  end

  it "has a suit" do
    expect(card.suit).to eq 'Spades'
  end

  it "has a custom error message" do
    card.suit = 'Nonsense'
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but got #{card.suit} instead."
  end
end
