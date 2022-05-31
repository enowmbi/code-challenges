# frozen_string_literal: true

# get the max element in an array of integers without using any methods of the Ruby Standard Library

def maximum_element(array_of_elements)
  max_element = -100_000_000_000_000_000
  array_of_elements.each do |element|
    if element > max_element
      max_element = element
    end
  end
  max_element
end
