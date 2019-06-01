class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end


  # to put values into a stack we want to create a new node
  # we want the @data to equal the value entered previously
  # and we want the value to equal to the current one we just input
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

  def pop
    #first we want to check if theres an item in any node if not return nil
    #if there is something in a node print value
    #we want to print the newest number added first so we want to make sure
    #that @data = next_node 

    return nil if @data.nil?

    # first we want to return the most recent value
    value = @data.value
    # next we loop
    # change data to the the previouly entered value
    # which in turn changes value to the previous value until we reach nil
    @data = @data.next_node
    return value
  end
end


def reverse_list(list)

  stack = Stack.new 

  while list
    stack.push(list.value)
    list = list.next_node
  end
  return stack.data
end


def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

#node 3 has values from node 2 which includes all values from node 1 node 2 and node 3

# class = object

node1 = LinkedListNode.new(9)
node2 = LinkedListNode.new(62, node1)
node3 = LinkedListNode.new(34, node2)



revlist = reverse_list(node3)

print_values(revlist)







