def fibonacci(number)
  return number if number < 2

  fibonacci(number - 2) + fibonacci(number - 1)
end
