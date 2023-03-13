class Node
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def dfs_search(node)
  children = [node.left, node.right].compact

  children.each do |child|
    dfs_search(child)
  end
end
