# frozen_string_literal: true

def solution(num)
  # write your code in Ruby 2.2
  return 0 if num < 2

  binary_rep = num.to_s(2)
  return 0 if binary_rep.size < 3

  binary_gap = 0
  left_pointer = 0
  right_pointer = 1
  count = 0

  while right_pointer < binary_rep.length
    if binary_rep[left_pointer] == '1' && binary_rep[right_pointer] == '1'
      left_pointer = right_pointer
      right_pointer += 1
      count = 0
    elsif binary_rep[left_pointer] == '1' && binary_rep[right_pointer] == '0'
      right_pointer += 1
      count += 1
      binary_gap = count if count > binary_gap
    else
      left_pointer += 1
      right_pointer += 1
      count = 0
    end
  end
  binary_gap
end
