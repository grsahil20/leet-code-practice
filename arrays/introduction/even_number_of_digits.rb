# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
  nums.select{ |num| ((num.to_s.length  % 2) === 0) }.count
end


# p find_numbers([555,901,482,1771]) === 1
# p find_numbers([12,345,2,6,7896]) === 2

# # @param {Integer[]} nums
# # @return {Integer}
# def find_numbers(nums)
#   count = 0
#   nums.each { |num|  (count += 1) if (num.to_s.length  % 2) === 0 }
#   count
# end
