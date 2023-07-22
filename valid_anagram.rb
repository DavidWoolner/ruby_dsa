# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  h = {}

  s.each_char do |char|
    if h.include?(char)
      h[char] += 1
    else
      h[char] = 1
    end
  end

  t.each_char do |char|
    if h.include?(char)
      h[char] -= 1
    else
      return false
    end
  end

  h.values.all?(0)

end

# def is_anagram(s, t)
#     s.split('').sort == t.split('').sort
# end


=begin
we can optimize for time or space

if time, then we can use hash to store the counts of the characters with one iteration
With another iteration we can subject from the count with the other string

return the boolean result of whether all values are 0 -- if so, they are an anagram, otherwise not


the second way would be worse time, best being n * log n, as we need to sort the array. we can then iterate over the arrays with one pointer, and compare the characters, if there is not a match, return false, at the end return true.

this solution would be (n*logn)time, (1) space

=end