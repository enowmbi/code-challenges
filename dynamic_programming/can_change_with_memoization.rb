# frozen_string_literal: true

def can_change(target, coins, memo = {})
  return memo[target] if memo.key?(target)
  return true if target.zero?
  return false if target.negative?

  coins.each do |coin|
    if can_change(target - coin, coins, memo)
      memo[target] = true
      return memo[target]
    end
  end
  memo[target] = false
  memo[target]
end
