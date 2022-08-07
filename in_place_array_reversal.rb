def reverse(arr = [])
  left_pointer = 0
  right_pointer = arr.length - 1
  while left_pointer < right_pointer
    temp_value = arr[left_pointer]
    arr[left_pointer] = arr[right_pointer]
    arr[right_pointer] = temp_value
    left_pointer += 1
    right_pointer -= 1
  end
  arr
end
