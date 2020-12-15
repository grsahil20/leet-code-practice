# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  new_arr = []
  arr.each do |num|
    new_arr << num
    new_arr << num if num === 0
  end
  arr = new_arr[0..(arr.length-1)]
  nil
end

# some test cases fail, not able to figure out yet why ?

# p duplicate_zeros([1,0,2,3,0,4,5,0]) == [1,0,0,2,3,0,0,4]
# p duplicate_zeros([1,2,3]) == [1,2,3]
