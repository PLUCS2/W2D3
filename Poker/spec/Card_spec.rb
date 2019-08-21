require 'rspec'
require 'Card'

describe Card do

  subject(:queen) {Card.new(:Q, :heart)}

  describe '#initialize' do 
    it "accepts a suit as an arg" do 
      expect(queen.suit).to eq(:heart)
    end

    it "accepts a value as an arg" do
      expect(queen.value).to eq(:Q)
    end
  end   

end 