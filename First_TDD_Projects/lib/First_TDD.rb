

  def my_uniq(arr)
    ans = []
    arr.each {|ele| ans << ele if !ans.include?(ele)} 
    ans
  end 

  class Array 

    def two_sum

      ans = [] 

      self.each_with_index do |ele1, idx1|
        self.each_with_index do |ele2, idx2|
          if ele1+ ele2 == 0 && idx2 > idx1 
            ans << [idx1, idx2]
          end 
        end 
      end 
      ans 
    end 
  end 

  def my_transpose(arr)
    ans = [] 

    (0...arr.length).each do |idx2|
      sub_arr = [] 
      (0...arr.length).each do |idx1|
        sub_arr << arr[idx1][idx2]
      end
      ans << sub_arr
    end 
    ans 
  end 

  def stock_buy(arr)
    ans = []
    count = 0
      arr.each_with_index do |ele1,idx1|
        arr.each_with_index do |ele2, idx2|
          if idx2 > idx1 && ele2 - ele1 > count 

            count = ele2 - ele1
            ans = [idx1, idx2]
          end
        end
      end
    ans
  end