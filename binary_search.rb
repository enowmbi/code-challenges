# frozen_string_literal: true

def binary_search(arr, target)
  low = 0
  high = arr.length - 1
  middle = (high - low) / 2

  while low < high
    return "Target found at index: #{arr.index(target)}" if target == arr[middle]

    if target > arr[middle]
      low = middle
    elsif target < arr[middle]
      high = middle
    end
  end

  "Target not found"
end
