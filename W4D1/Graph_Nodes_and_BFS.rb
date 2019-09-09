class GraphNode
  attr_accessor :value, :neighbors

  def initialize(value)
    self.value = value
    self.neighbors = []
  end
end

a = GraphNode.new("a")
b = GraphNode.new("b")
c = GraphNode.new("c")
d = GraphNode.new("d")
e = GraphNode.new("e")
f = GraphNode.new("f")
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

require "set"

def bfs(starting_node, target_value)
  visited = Set.new()
  queue = [starting_node]
  # return nil if visited.include?(starting_node)
  
  until queue.empty?
    current = queue.shift
    unless visited.include?(current)
      if current.value == target_value
        return current.value
      else
        queue += current.neighbors
      end
      visited.add(current)
    end
  end

  return nil
end

p bfs(a, "b")
p bfs(a, "f")