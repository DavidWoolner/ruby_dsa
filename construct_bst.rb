# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {Integer[]} preorder
# @return {TreeNode}
class TreeInfo
  attr_accessor :root_val
  def initialize
    @root_val = 0
  end
end

def bst_from_preorder(preorder)
  tree_info = TreeInfo.new
  constructor(-Float::INFINITY, Float::INFINITY, preorder, tree_info)
end

def constructor(lower, upper, array, tree_info)
  return nil if tree_info.root_val >= array.length

  root_val = array[tree_info.root_val]
  return nil if root_val < lower || root_val >= upper

  tree_info.root_val += 1

  left  = constructor(lower, root_val, array, tree_info)
  right = constructor(root_val, upper, array, tree_info)
  TreeNode.new(root_val, left, right)

end