# frozen_string_literal: true

def can_change(target, coins)
  return true if target.zero?
  return false if target.negative?

  coins.each do |coin|
    return true if can_change(target - coin, coins)
  end
  false
end
