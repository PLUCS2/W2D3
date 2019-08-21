require 'rspec'
require 'First_TDD'


  describe '#my_uniq' do 

    it 'removes duplicates from an Array' do 
      expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end 

    it 'returns a new Array'do 
      expect(my_uniq([1,2,1,3,3])).to_not be([1,2,3])
    end 
    
  end 

  describe Array do 

    describe '#two_sum' do 

      it 'finds pairs of positions where elements sum too zero' do 
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4], [2,3]])
      end

      it 'wants smaller index first' do 
        expect([-1, 0, 2, -2, 1].two_sum.sort).to eq([-1, 0, 2, -2, 1].two_sum)
      end
    end
  end

describe '#my_transpose' do 
  it 'switches rows and columns' do 
    expect(my_transpose([[0, 1, 2], [3, 4, 5], [6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7], [2, 5, 8]])
  end 
end 

describe '#stock_buy' do 
  it 'tell you best day to buy and sell' do
    expect(stock_buy([10, 15, 20, 11, 12])).to eq([0, 2])
  end

  it 'returns days in order' do 
    expect(stock_buy([10, 15, 20, 11, 12]).sort).to eq(stock_buy([10, 15, 20, 11, 12]))
  end

  it 'returns most profitable pair' do 
    expect(stock_buy([17, 10, 11, 20, 12])).to eq([1,3])
  end 
end