# frozen_string_literal: true

def how_sum(target_sum, numbers, memo = {})
  return memo[target_sum] if memo.key?(target_sum)
  return [] if target_sum.zero?
  return nil if target_sum.negative?

  numbers.each do |number|
    results = how_sum(target_sum - number, numbers, memo)
    next unless results

    results << number
    memo[target_sum] = results
    return memo[target_sum]
  end
  memo[target_sum] = nil
  memo[target_sum]
end
