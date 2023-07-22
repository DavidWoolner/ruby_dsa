def max_sub_array(nums)
  max_sub = -1.0/0

  for i in nums
  t = [nums[i]]

    j = i+1
    while j < nums.length
      t << nums[j]
        j += 1
    end

    max_sub = [t.sum, max_sub].max
  end

  return max_sub
end


print(max_sub_array([1,2,3]))
