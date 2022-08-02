# frozen_string_literal: true

def binary_search(arr, target)
  low = 0
  high = arr.length - 1

  while low <= high
    middle = low + (high - low) / 2
    return "Target found at index: #{arr.index(target)}" if target == arr[middle]

    if target > arr[middle]
      low = middle + 1
    elsif target < arr[middle]
      high = middle - 1
    end
  end

  "Target not found"
end
