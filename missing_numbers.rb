def missing_numbers(nums)
  range_total = (1..nums.length+2).sum
  avail_nums_total = nums.sum

  avg = (range_total - avail_nums_total) / 2

  avail_left_total = avail_right_total = 0

  nums.each do |n|
    if n <= avg
      avail_left_total += n
    else
      avail_right_total += n
    end
  end

  missing_1 = (1..avg).sum - avail_left_total
  missing_2 = (avg+1..nums.length+2).sum - avail_right_total

  [missing_1, missing_2]
end

p missing_numbers([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17, 18, 20, 21, 22])