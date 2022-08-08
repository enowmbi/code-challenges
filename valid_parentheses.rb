# frozen_string_literal: true

def is_valid(str)
  stack = []
  str.each_char do |char|
    if (char == ')' && stack.last == '(') || (char == '}' && stack.last == '{') || (char == ']' && stack.last == '[')
      stack.pop
    else
      stack << char
    end
  end
  stack.empty?
end
