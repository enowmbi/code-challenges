# frozen_string_literal: true

def fibonacci(num, memo = {})
  return memo[num] if memo.key?(num)
  return 1 if num <= 2

  memo[num] = fibonacci(num - 1, memo) + fibonacci(num - 2, memo)
  memo[num]
end
