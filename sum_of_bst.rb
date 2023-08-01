# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  total = 0
  q = Queue.new([root])

  while !q.empty?
    cur = q.pop
    total += cur.val if (low..high).include?(cur.val)
    q << cur.left if cur.left
    q << cur.right if cur.right
  end
  total
end