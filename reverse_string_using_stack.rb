# This is a simple string reversal technique. It has a time complexity of O(n) and a space complexity of O(n)
def reverse_string(string)
  stack = []
  reversed_string = ""

  string.each_char do |char|
    stack << char
  end

  until stack.empty?
    reversed_string += stack.pop
  end
  reversed_string
end
