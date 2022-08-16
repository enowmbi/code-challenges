# frozen_string_literal: true

def coin_change(coins, target)
  return true if target.zero?
  return false if target.negative?

  coins.each do |coin|
    return true if coin_change(coins, target - coin)
  end
  false
end
