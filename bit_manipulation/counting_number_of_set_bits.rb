# frozen_string_literal: true

def number_of_set_bits(number)
  count_of_set_bits = 0
  0.upto(7) do |i|
    count_of_set_bits += 1 if number[i] == 1
  end
  count_of_set_bits
end
