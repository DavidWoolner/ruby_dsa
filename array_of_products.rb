def array_of_products(nums)
  res = Array.new(nums.length, 1)
  product = 1
#   [5,1,4,2]
#   [1,1,1,1]
#   iterate forward to get all the values to the left of each num. but skip start from index of 1
#   then iterate backwards to get all the values that are right of each num, skip last element
  0.upto(nums.length-1) do |i|
    res[i] = product
    product *= nums[i]
  end

  product = 1
  (nums.length-1).downto(0) do |i|
    res[i] *= product
    product *= nums[i]
  end

  res
end

p array_of_products([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])