require 'rspec'
require 'Deck'

describe Deck do 

  subject(:deck1) {Deck.new}

  describe "#initialize" do 

    it "makes a deck of 52 cards" do 
    expect(deck1.deck.length).to eq(52)
    end

    it "makes a deck of unique cards" do
      expect(deck1.deck.uniq).to eq(deck1.deck)
    end

  end

  describe '#my_shuffle' do 

    it 'shuffles the cards' do 
      save = deck1.deck 
      deck1.my_shuffle
      expect(save).to_not eq(deck1.deck)
    end 
  end 

  describe '#deal_deck' do 

    it 'deals the num of cards passed as argument' do 
      expect(deck1.deal_deck(5).length).to eq(5)
    end 

    it 'takes dealed from deck' do
      deck1.deal_deck(5)
      expect(deck1.deck.length).to eq(47)
    end

  end 
end