# frozen_string_literal: true

def factorial(num, memo = {})
  return memo[num] if memo.key?(num)
  return 1 if num <= 1

  memo[num] = num * factorial(num - 1, memo)
  memo[num]
end
