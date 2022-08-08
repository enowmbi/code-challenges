def first_non_repeating_character(list)
  hash_items = {}

  list.each do |item|
    if hash_items.key?(item)
      hash_items[item] += 1
    else
      hash_items[item] = 1
    end
  end

  hash_items.find { |_key, value| value == 1 }.first
end
