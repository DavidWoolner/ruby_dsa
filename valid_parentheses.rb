def is_valid(s)
  return false if s.length == 1

  hashmap = { ')' => '(', '}' =>'{', ']' => '[' }
  stack = []

  0.upto(s.length-1) do |i|
    char = s[i]
    if hashmap.include?(char) && stack.length > 0 && stack.last == hashmap[char]
      stack.pop
    else
      stack << char
    end
  end
  return stack.empty?

end

p is_valid('()')