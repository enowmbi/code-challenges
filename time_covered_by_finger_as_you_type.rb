# frozen_string_literal: true

# Calculate the total distance covered as you type given that the distance between two consecutive keys is 1 unit
def distance(keyboard_keys, target_keys)
  distance_covered = 0
  start_key_index = 0
  destination_key_index = 0

  target_keys.each_char do |key|
    destination_key_index = keyboard_keys.index(key) # get index of destination key (destination_key_index)
    distance_covered += (destination_key_index - start_key_index).abs # distance covered from start key to destination key
    start_key_index = destination_key_index # update start key index - the last destination key becomes the new start key
  end
  distance_covered
end
