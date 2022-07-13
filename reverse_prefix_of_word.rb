# @param {String} word
# # @param {Character} char
# # @return {String}
def reverse_prefix(word, char)
  left_pointer = 0
  right_pointer = word.index(char)

  return word if right_pointer.nil?

  while left_pointer < right_pointer
    temp_value = word[left_pointer]
    word[left_pointer] = word[right_pointer]
    word[right_pointer] = temp_value
    left_pointer += 1
    right_pointer -= 1
  end
  word
end
