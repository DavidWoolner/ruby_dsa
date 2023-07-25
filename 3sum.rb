# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

# Notice that the solution set must not contain duplicate triplets.

# [-1,0,1,2,-1,-4]
#        i
#        j
#
#
#[[-1,0,1], [-1,-1,2]]
# [-4, -1, -1, 0, 1, 2, 2]
#           i   j k
# val = []
# sort
# sliding window i = 0, j= i+1, k = nums.length-1
#check if the nums at ijk == 0, if less than 0 increment i and j else if greater, decrement k
# while j < k
# when equal to 0, shovel into our result array, the nums at i,j,k
# return result array
#[-1,0,1,2,2,-1,-4]
#[-4,-1,-1,0,1,2,2]  _sum = 3
#  i j         l k
def three_sum(nums)
  res = []
  i, j, k = 0, 1, nums.length - 1
  nums.sort!

  while j < k
    _sum = nums[i] + nums[j] + nums[k]
    if _sum > 0
      k -= 1
      next
    end
    if _sum == 0
      res << [nums[i], nums[j], nums[k]]
    end
    i += 1
    j += 1
  end

  nums.reverse!
  i, j, k = 0, 1, nums.length - 1

  while j < k
    _sum = nums[i] + nums[j] + nums[k]
    if _sum > 0
      k -= 1
      next
    end
    if _sum == 0
      if !res.include?([nums[i], nums[j], nums[k]])
        res << [nums[i], nums[j], nums[k]]
      end
    end
    i += 1
    j += 1
  end

  res
end

# { -1: 2, 0: 1, 1: 1, 2: 1, -4: 1} freq
# { 1: [0, 4], 0: [], -1: [] -2: [], 4: [] } keys are the difference from 0
# [nums[i], nums[j], nums[k]]
# [-1, 0, -4]

# Example 1:
# Input: nums = [-1,0,1,2,-1,-4]
# Output: [[-1,-1,2],[-1,0,1]]

# Explanation:
# nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
# nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
# nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
# The distinct triplets are [-1,0,1] and [-1,-1,2].
# Notice that the order of the output and the order of the triplets does not matter.

# Example 2:
# Input: nums = [0,1,1]
# Output: []
# Explanation: The only possible triplet does not sum up to 0.

# Example 3:
# Input: nums = [0,0,0]
# Output: [[0,0,0]]
# Explanation: The only possible triplet sums up to 0.

# Constraints:

# 3 <= nums.length <= 3000
# -105 <= nums[i] <= 105








# Tests
require 'rspec'
require 'rspec/autorun'
RSpec.describe 'tests' do
  subject { three_sum(nums) }

  describe 'first section' do
    let(:nums) { [0, 0, 0] }

    it '[0,0,0]' do
      expect(subject).to eq([[0, 0, 0]])
    end
  end

  describe 'second section' do
    let(:nums) { [-1,0,1,2,-1,-4] }

    it '[-1,0,1,2,-1,-4]' do
      expect(subject).to eq([[-1,-1,2],[-1,0,1]])
    end
  end

  describe 'third section' do
    let(:nums) { [-1,0,1,2,2,-1,-4] }

    it '[-1,0,1,2,2,-1,-4]' do
      expect(subject).to eq([[-1,-1,2],[-1,0,1],[2,2,-4]])
    end
  end
end
