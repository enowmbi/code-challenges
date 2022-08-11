# frozen_string_literal: true

def can_sum(target_sum, numbers)
  return true if target_sum.zero?
  return false if target_sum.negative?

  numbers.each do |number|
    remainder = target_sum - number
    return true if can_sum(remainder, numbers)
  end
  false
end
