# frozen_string_literal: true

def max_consecutive(bottom, top, special)
  floors = *bottom..top
  available_floors = floors - special

  return 0 if available_floors.empty?
  return 1 if available_floors.length == 1

  left_pointer = 0
  right_pointer = 1
  max_consecutive_floors = 0
  count = 1

  while right_pointer < available_floors.length
    if available_floors[left_pointer] + 1 == available_floors[right_pointer]
      count += 1
      max_consecutive_floors = count if count > max_consecutive_floors
    else
      count = 1
    end
    left_pointer += 1
    right_pointer += 1
  end
  max_consecutive_floors
end
