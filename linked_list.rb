class Node
  attr_reader :data, :pointer
  def initialize(data, pointer=nil)
    @data = data
    @pointer = pointer
  end

  def set_pointer(node)
    @pointer = node
  end

  def get_pointer
    @pointer
  end

  def next?
    !@pointer.nil?
  end
end

class LinkedList
  def initialize(data)
    @head = Node.new(data)
  end

  def insert_at_last(data)
    current_node = @head
    while current_node.next?
      current_node = current_node.get_pointer
    end

    new_node = Node.new(data)
    current_node.set_pointer(new_node)

  end

  def display
    current_node = @head
    while current_node.next?
      p current_node.data
      current_node = current_node.pointer
    end
    p current_node.data
  end

  def reverse_list
    current_node = @head 
    next_node = nil
    pre_node = nil

    while current_node
      next_node = current_node.pointer
      current_node.set_pointer(pre_node)
      pre_node = current_node
      current_node = next_node 
    end
    @head = pre_node
  end
end