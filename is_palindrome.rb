# def is_palindrome(s)
#   s = s.downcase.split('').filter { |char| ('a'..'z').include?(char) || ('0'..'9').include?(char) }.join
#
#   l, r = 0, s.length-1
#
#   while l <= r
#     return false if s[l] != s[r]
#     l += 1
#     r -= 1
#   end
#
#   return true
# end

def is_palindrome(s)
  l, r = 0, s.length-1

  while l < r
    while !('a'..'z').include?(s[l].downcase) && !('0'..'9').include?(s[l])
      l += 1
    end

    while !('a'..'z').include?(s[r].downcase) && !('0'..'9').include?(s[r])
      r -= 1
    end


    return false if s[l].downcase != s[r].downcase

    l += 1
    r -= 1
  end

  return true
end
p is_palindrome("A man, a plan, a canal: Panama")