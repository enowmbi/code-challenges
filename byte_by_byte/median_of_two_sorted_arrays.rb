# frozen_string_literal: true

def median(arr1, arr2)
  arr = (arr1 + arr2).sort
  return arr[arr.length / 2] if arr.length.odd?

  left = 0
  right = arr.length - 1
  while left < right
    left += 1
    right -= 1
  end
  (arr[left] + arr[right]) / 2.0
end
