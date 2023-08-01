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
def increasing_bst(root)
  @new_root = TreeNode.new(root.val)
  head = @new_root
  constructor(root)
  head.right
end

def constructor(root)
  return if root.nil?

  constructor(root.left)
  @new_root.right = TreeNode.new(root.val)
  @new_root = @new_root.right
  constructor(root.right)
end