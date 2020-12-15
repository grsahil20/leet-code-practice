# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# You can return the answer in any order.

# Example 1:
# Input: nums = [2,7,11,15], target = 9
# Output: [0,1]

# Output: Because nums[0] + nums[1] == 9, we return [0, 1].

# Example 2:
# Input: nums = [3,2,4], target = 6
# Output: [1,2]

# Example 3:
# Input: nums = [3,3], target = 6
# Output: [0,1]


# Constraints:

# 2 <= nums.length <= 103
# -109 <= nums[i] <= 109
# -109 <= target <= 109
# Only one valid answer exists.


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  result = []

  return if target.nil? || nums.length == 0

  nums_hash = {}

  nums.each_with_index do |num, index|
    previous_index = nums_hash[(target - num)]

    if !previous_index.nil?
      result << previous_index
      result << index
      break
    end

    nums_hash[num] =  index
  end

  return result;
end

# p two_sum([11, 2, 7, 11,15], 9) == [2,1]
# p two_sum([3,2,4], 6) == [1,2]
# p two_sum([1,3,2,4], 6) == [2,3]
# p two_sum([3,3], 6) == [0,1]
# p two_sum([3,3], 6) == [0,1]
# p two_sum([-6,4,6,90], 0) == [0,2]
