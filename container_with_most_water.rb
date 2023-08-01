
# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  maximum = 0
  i, j = 0, height.length-1

  while i < j
    width = j - i
    left =  height[i]
    right = height[j]

    if right < left
      min_height = right
      j -= 1
    else
      min_height = left
      i += 1
    end

    maximum = [maximum, min_height * width].max
  end

  maximum
end
