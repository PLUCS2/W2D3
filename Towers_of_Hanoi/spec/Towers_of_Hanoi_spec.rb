require 'rspec'
require'Towers_of_Hanoi'

describe Game do 

  subject(:game1) {Game.new(3)}

  describe '#initialize' do 

    it 'takes number as an argument' do 
      expect(game1.num).to eq(3)
    end 

    it 'should set three stacks' do
      expect(game1.stacks.length).to eq(3)
    end 

    it 'should fill first stack with num disks' do
      expect(game1.stacks).to eq([[3,2,1],[],[]])
    end 
  end 

  describe '#move' do 
    before(:each) do 
      game1.move(0,1)
    end

     it 'should not move on a smaller disk number' do 
        expect {game1.move(0,1)}.to raise_error(TooBigError)
     end

  end

end 