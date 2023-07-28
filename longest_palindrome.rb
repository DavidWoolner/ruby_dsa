# @param {String} s
# @return {Integer}
def longest_palindrome(s)
  hash_count = s.split('').tally
  count = 0
  odd_found = false

  hash_count.each_key do |key|
    if hash_count[key].odd? && odd_found
      count += hash_count[key]-1
    end

    if hash_count[key].odd? && !odd_found
      count += hash_count[key]
      odd_found = !odd_found
    end

    if hash_count[key].even?
      count += hash_count[key]
    end
  end

  count
end

# def longest_palindrome(s)
#   sum = 0
#   s.chars.tally.values.each do |v|
#     sum += v / 2 * 2
#     sum += 1 if sum.even? && v.odd?
#   end
#   sum
# end

