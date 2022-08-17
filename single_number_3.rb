# frozen_string_literal: true

def single_number(nums)
  singles = {}
  nums.each do |num|
    if singles.key? num
      singles.delete(num)
    else
      singles[num] = 1
    end
  end
  singles.keys
end
