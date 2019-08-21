require_relative "card"

class Deck
  
  attr_reader :deck

  def initialize
    @deck = []  
    populate
  end 

  def my_shuffle
    @deck = @deck.shuffle 
  end 

  def deal_deck(num)
    @deck.pop(num)
  end


  private 
  
  def populate
    card_value = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
    card_value.each do |val| 
      @deck << Card.new(val, :heart)
      @deck << Card.new(val, :spade)
      @deck << Card.new(val, :club)
      @deck << Card.new(val, :diamond)
    end 
  end 
end