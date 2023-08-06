# @param {Integer[][]} intervals
# @param {Integer[]} new_interval
# @return {Integer[][]}
def insert(intervals, new_interval)
  location = find_insertion_point(intervals, new_interval)
  intervals.insert(location, new_interval)
  merge(intervals)
end


def find_insertion_point(intervals, new_interval)
  (intervals.length).times do |i|
    return i if new_interval[0] < intervals[i][0]
  end
end

def merge(intervals)
  result = [intervals[0]]

  1.upto(intervals.length-1) do |i|
    cur_start, cur_end = intervals[i]
    prev_start, prev_end = result.last

    if prev_end >= cur_start
      result.last[1] = [prev_end, cur_end].max
    else
      result << [cur_start, cur_end]
    end
  end
  result
end