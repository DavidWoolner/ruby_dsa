# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
# def search(nums, target) #O(log n) Time O(1) Space
#     left = 0
#     right = nums.length - 1

#     while left <= right
#         mid = left + (right-left) / 2

#         if nums[mid] == target
#             return mid
#         elsif target < nums[mid]
#             right = mid - 1
#         else
#             left = mid + 1
#         end
#     end

#     return -1
# end

def search(nums, target) #O(log n) Time O(log n) Space
  bisearch_helper(nums, target, 0, nums.length-1)
end

def bisearch_helper(nums, target, start, _end)
  mid = start + (_end - start) / 2

  return mid if nums[mid] == target

  return -1 if start > _end

  if target < nums[mid]
    return bisearch_helper(nums, target, start, mid-1)
  else
    return bisearch_helper(nums, target, mid+1, _end)
  end
end


=begin
    bisearch

    find midpoint

    check if this is the target, return the index

    if the target is less than midpoint, search left half

    else target is larger search right

    if left and right are the same, return -1

=end