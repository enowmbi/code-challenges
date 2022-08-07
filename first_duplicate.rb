def first_duplicate(str = "")
  hash = {}
  str.each_char do |char|
    return char if hash.key? char

    hash[char] = 1
  end
end
