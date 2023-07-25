def validate_bst(tree)
  validator(tree, -1.0/0, 1.0/0)
end

def validator(tree, min_val, max_val)
  return true if tree.nil?

  return false if tree.value < min_val || tree.value >= max_val

  left_is_valid = validator(tree.left, min_val, tree.value)
  right_is_valid = validator(tree.right, tree.value, max_val)
  left_is_valid && right_is_valid
end

class BST
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

a = BST.new(10)
a.left = BST.new(1)
a.right = BST.new(15)

b = BST.new(100)
b.left = BST.new(1000)
b.right = BST.new(1)

p validate_bst(a)
p validate_bst(b)