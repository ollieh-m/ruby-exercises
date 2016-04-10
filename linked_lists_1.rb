class Node

	attr_accessor :data, :next
  @@all_nodes = []
  
	def initialize(data)
  	@data = data
    @next = nil
    @@all_nodes.push(self)
  end

  def self.all_nodes
    @@all_nodes
  end

end

def push(head, data)
	if (Node.all_nodes.empty? or Node.all_nodes.index{|node| node.next == head} == nil)
    new_node = Node.new(data)
    new_node.next = head
    new_node
  else
    index = Node.all_nodes.index{|node| node.next == head}
    push(Node.all_nodes[index],data)
  end
end

head = nil
first = Node.new(2)
first.next = head
second = Node.new(4)
second.next = first
push(head,8)
p Node.all_nodes
