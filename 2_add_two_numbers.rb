if ENV['LOCAL_DEBUG'] == 'true'
  require './helpers/list_node'
end




# Example 1:
# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.

# Example 2:
# Input: l1 = [0], l2 = [0]
# Output: [0]

# Example 3:
# Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
# Output: [8,9,9,9,0,0,0,1]

# Input: l1 = [2,4,3], l2 = [5,6,4]
# Output: [7,0,8]
# Explanation: 342 + 465 = 807.


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

class LinkList
  attr_accessor :current_node, :first_node

  def initialize(values = [])
    return if values.empty?
    values.each do |value|
      node = ListNode.new(value)
      @first_node ||= node
      unless current_node.nil?
        @current_node.next = node
      end
      @current_node = node
    end
    return first_node
  end
end


def link_list_to_array(list_node)
  current_node = list_node
  next_node = current_node.next
  arr = [list_node.val]

  while next_node
    arr << next_node.val
    next_node = next_node.next
  end

  return arr
end

def add_two_numbers(l1, l2)
  stringified_num_1 = link_list_to_array(l1).join('')
  stringified_num_2 = link_list_to_array(l2).join('')
  unless stringified_num_1.length == stringified_num_2.length
    max_length = [stringified_num_1.length, stringified_num_2.length].max
    stringified_num_1 = stringified_num_1.ljust(max_length, '0')
    stringified_num_2 = stringified_num_2.ljust(max_length, '0')
  end
  result_array = (stringified_num_1.reverse.to_i + stringified_num_2.reverse.to_i).to_s.split('').map(&:to_i).reverse
  LinkList.new(result_array).first_node
end


# add_two_numbers(
#   LinkList.new([2,4,3]).first_node,
#   LinkList.new([5,6,4]).first_node
# ) == LinkList.new([7,0,8]).first_node

# p add_two_numbers(
#   LinkList.new([0]),
#   LinkList.new([0])
# ) == LinkList.new([0])

# p add_two_numbers(
# LinkList.new([9,9,9,9,9,9,9]),
# LinkList.new([9,9,9,9])
# ) == LinkList.new([8,9,9,9,0,0,0,1])

