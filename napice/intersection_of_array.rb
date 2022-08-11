def intersection(nums1, nums2)
  set1 = Set.new
  set2 = Set.new
  nums1.each do |num|
    set1.add(num)
  end

  nums2.each do |num|
    set2.add(num)
  end

  set1.intersection(set2)
end
