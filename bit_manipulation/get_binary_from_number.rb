# frozen_string_literal: true

def binary_representation(number)
  remainder = ''
  until number < 1
    remainder += (number % 2).to_s
    number = (number / 2)
  end
  remainder.reverse
end
