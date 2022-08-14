def count_of_vowels(string)
  # vowels are aeiou
  vowels = {}
  vowels['a'] = 0
  vowels['e'] = 0
  vowels['i'] = 0
  vowels['o'] = 0
  vowels['u'] = 0

  string.each_char do |char|
    vowels[char] += 1 if vowels.keys.include? char
  end
  vowels
end
