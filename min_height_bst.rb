def min_height_bst(array)
  constructor(array, 0, array.length-1)
end

def constructor(array, start, finish)
  return nil if start > finish

  mid = start + (finish-start) / 2

  bst = BST.new(array[mid])
  bst.left = constructor(array, start, mid-1)
  bst.right = constructor(array, mid+1, finish)
  bst

end



class BST
  attr_accessor :value, :left, :right
  def initialize(val)
    @value = value
    @left = nil
    @right = nil
  end

end

p min_height_bst([1,2,3,5,7,10,13,14,15,22])