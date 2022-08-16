# frozen_string_literal: true

def power_of_two?(num)
  num.bit_length != (num - 1).bit_length
end
