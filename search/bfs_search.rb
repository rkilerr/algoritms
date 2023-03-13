class Node
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def bfs_search(node)
  queue = []
  queue.push(node)
  while(queue.size != 0)
    node = queue.shift
    children = [node.left, node.right].compact
    children.each do |child|
      queue.push(child)
    end
  end
end
