# def majority_element(array)
#   min_req = array.length/2
#   count = 0
#   res = nil
#
#   i = 0
#
#   while i < array.length
#     j = 0
#     target = array[i]
#
#     while j < array.length
#       if j != i && array[j] == target
#         count += 1
#       end
#       j += 1
#     end
#
#     if count > min_req
#       res = target
#     end
#     i += 1
#   end
#
#   res
#
# end
def majority_element(array)
  count = 1
  answer = array[0]

  1.upto(array.length-1) do |i|
    num = array[i]

    if count == 0
      answer = num
    end

    if answer == num
      count += 1
    else
      count -= 1
    end
  end
  answer
end

p majority_element [1,2,3,2,2,3,3,3,1,2]
 # i

