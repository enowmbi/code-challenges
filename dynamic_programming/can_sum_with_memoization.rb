# frozen_string_literal: true

def can_sum(target_sum, numbers, memo = {})
  return memo[target_sum] if memo.key?(target_sum)
  return true if target_sum.zero?
  return false if target_sum.negative?

  numbers.each do |number|
    remainder = target_sum - number
    if can_sum(remainder, numbers, memo)
      memo[target_sum] = true
      return memo[target_sum]
    end
  end
  memo[target_sum] = false
  memo[target_sum]
end
