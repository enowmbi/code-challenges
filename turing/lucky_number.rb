# frozen_string_literal: true

def lucky_number(arr)
  arr.sort!
  hash = {}
  arr.each do |item|
    if hash.key? item
      hash[item] += 1
    else
      hash[item] = 1
    end
  end
  result = []
  hash.each do |key, val|
    result << key if key == val
  end
  result.max || -1
end
