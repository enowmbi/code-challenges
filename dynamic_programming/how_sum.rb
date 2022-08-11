# frozen_string_literal: true

def how_sum(target_sum, numbers)
  return [] if target_sum.zero?
  return nil if target_sum.negative?

  numbers.each do |number|
    results = how_sum(target_sum - number, numbers)
    if results
      results << number
      return results
    end
  end
  nil
end
