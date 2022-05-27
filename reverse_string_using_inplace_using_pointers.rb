# This is a string reversal technique. It has a time complexity of O(n) and a space complexity of O(1)
def reverse_string(string)
  left_index = 0
  right_index = string.length - 1
  while left_index < right_index
    temp = string[left_index]
    string[left_index] = string[right_index]
    string[right_index] = temp
    left_index += 1
    right_index -= 1
  end
  string
end
