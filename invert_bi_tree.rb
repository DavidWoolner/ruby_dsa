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
# @return {TreeNode}
def invert_tree(root)
  queue = [ root ]

  while !queue.empty?
    cur = queue.shift

    if !cur.nil?
      cur.left, cur.right = cur.right, cur.left
      queue += [cur.left, cur.right]
    end
  end

  return root
end
