def rotate_array(arr, number_of_rotations)
  return arr if number_of_rotations.zero?

   number_of_rotations.times do 
     arr.push(arr.shift)
   end
   arr
end
