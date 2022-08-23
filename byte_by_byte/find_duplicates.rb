# frozen_string_literal: true

def find_duplicates(arr = [])
  hash = {}
  duplicates = []
  arr.each do |element|
    if hash.key? element
      hash[element] += 1
      duplicates << element
    else
      hash[element] = 1
    end
  end
  duplicates.uniq
end
