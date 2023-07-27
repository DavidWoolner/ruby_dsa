def first_bad_version(n)
  l = 1
  r = n

  while l <= r
    mid = l + (r-l) / 2

    if is_bad_version(mid) && !is_bad_version(mid-1)
      return mid
    elsif is_bad_version(mid)
      r = mid-1
    else
      l = mid+1
    end
  end

  return -1

end

def is_bad_version(n)
  'this is implemented by leetcode as an \'API Call\''
end