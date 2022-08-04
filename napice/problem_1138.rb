# frozen_string_literal: true

def find_index(nums, target)
  left = 0
  right = nums.length - 1
  while(right >= left)
    middle = ((right - left) / 2) + left
    if (nums[middle] == target)
      return middle
    else
      if(nums[left] <= nums[middle]) # left side is sorted
        if(nums[left] <= target && target < nums[middle])
          right = middle - 1
        else
          left = middle + 1
        end
      elsif(nums[middle] <= nums[right]) # right side is sorted
        if(nums[middle] < target && target <= nums[right])
          left = middle + 1
        else
          right = middle - 1
        end
      end
    end
  end
  return -1
end
