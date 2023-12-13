require 'date'

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end

  def self.invert_list(head)
    current = head
    previous = nil
    next_node = nil

    while current
      next_node = current.next_node
      current.next_node = previous
      previous = current
      current = next_node
    end

    head = previous
  end
end

node1 = Node.new("Tchau")
node2 = Node.new(1.5)
node3 = Node.new(DateTime.parse("1/1/2005 14:00:00"))
node4 = Node.new(5)
node5 = Node.new("Oi")

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
node4.next_node = node5

puts "Lista original:"
current_node = node1
while current_node
  puts current_node.value
  current_node = current_node.next_node
end

puts "\nInvertendo lista..."
Node.invert_list(node1)

puts "\nLista invertida:"
current_node = node5
while current_node
  puts current_node.value
  current_node = current_node.next_node
end
