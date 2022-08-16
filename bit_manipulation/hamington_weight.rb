# frozen_string_literal: true

# leetcode #191 - returning count of number of set bits
def hamington_weight(number)
  count_of_set_bits = 0
  0.upto(7) do |i|
    count_of_set_bits += 1 if number[i] == 1
  end
  count_of_set_bits
end
