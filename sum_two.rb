# frozen_string_literal: true

# Note: the list is unsorted

require 'pry'
def sum_two(nums, target)
  seen = {}
  nums.each do |num|
    return true if seen[(target - num).to_s]

    seen[num.to_s] = true
  end
  false
end
