require 'set'
def zero_sum_subarray(nums)
  sums = Set.new([0])
  current_sum = 0

  nums.each do |n|
    current_sum += n
    if !sums.include?(n)
      sums.add(n)
    else
      return true
    end
  end

  return false
end

p zero_sum_subarray([4, -3, 2, 4, -1, -5, 7])