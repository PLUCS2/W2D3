class TooBigError < StandardError; end

class Game 

  attr_reader :num, :stacks

  def initialize(num)
    @num = num 
    @stacks = [[],[],[]]
    fill_stacks 
  end 

  def move(start_stack, end_stack)
    valid_move(start_stack, end_stack)
    value = @stacks[start_stack].pop
  end

  private

  def fill_stacks
    counter = @num 

    @num.times do 
      @stacks[0] << counter 
      counter -= 1 
    end 
  end 

  def valid_move(start_stack,end_stack)
    if @stacks[stack].last < @stacks[start_stack].last && start_stack.between?(0,2) && end_stack.between(0,2)
      raise TooBigError
    end
  end


end 