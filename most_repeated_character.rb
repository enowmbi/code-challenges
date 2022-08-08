def solution(string)
  alphabet_hash = {}
  alphabet = initialize_alphabet
  alphabet.each do |letter|
    alphabet_hash[letter] = 0
  end

  string.each_char do |char|
    alphabet_hash[char] += 1 if alphabet_hash.key?(char)
  end

  sorted = alphabet_hash.sort_by { |_key, val| val }
  sorted.last.first
end

def initialize_alphabet
  lowercase_letters = *('a'..'z')
  uppercase_letters = *('A'..'Z')
  lowercase_letters + uppercase_letters
end
