# frozen_string_literal: true

def add_digits(number)
  return number if number < 10

  number = (number % 10) + (number / 10) while number >= 10
  number
end
