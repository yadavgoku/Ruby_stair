class Node
  attr_accessor :value, :next

  def initialize(value, next_node)
    @value = value
    @next = next_node
  end
end

class LinkedList

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def push(value)
    current_node = @head

    while current_node.next != nil

      current_node = current_node.next
    end
    current_node.next = Node.new(value, nil)



  end

  def pop(value)

    current_node = @head

    if current_node.value == value
      @head = current_node.next

    else

      while (current_node.next != nil) && (current_node.next.value != value)
        current_node = current_node.next

      end
      unless current_node.next == nil
        current_node.next = current_node.next.next
      end
    end
  end

  def traverse
    elements = []
    current_node = @head

    while current_node.next != nil
      elements << current_node.value
      current_node = current_node.next
    end
    elements << current_node.value
    elements.each { |value| puts value }
  end
end


flag = false
while true
  puts "Choices"
  puts "1.Push  2.Pop   3. Traverse"
  choice = gets
  if choice == "push" or 1
    unless flag
      puts "data : "
      data = gets
      @link = LinkedList.new(data)
      flag = true
    else
      puts "data : "
      data = gets
      @link.push(data)


    end
  elsif choice == "delete" or 2
    puts "data : "
    data = gets
    @link.pop(data)

  elsif choice == "delete" or 3
    @link.traverse
  end

end

