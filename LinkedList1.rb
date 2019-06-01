class LinkListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node #pointer to the next node
	end

end




class Stack
	attr_reader :data

	def initialize
		@data = nil
	end

#to push a value into stack we need to create a new node in this case LinklistNode 
# create a new node that has a value equal to the first data witch is nil 
# then we change that data equal to the new one we just implemented

	def push(value)
		@data = LinkListNode.new(value, @data)
	end

#\n mean after print nil start a new line!

	def pop
		return print "nil/n" if @data.nil?
		
	end


	def reverse_list(list)
    # ADD CODE HERE

    while list
        # ADD CODE HERE
        list = list.next_node
    end

    # ADD CODE HERE
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

end



print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)