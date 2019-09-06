class Stack
  attr_reader :variables
  def initialize
    # create ivar to store stack here!
    @variables = []
  end

  def push(el)
    # adds an element to the stack
    variables << el
  end

  def pop
    # removes one element from the stack
    variables.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    variables.first
  end
end

class Queue

  def initialize
    @line = []
  end

  def enqueue(el)
    line << el
    puts "You are at position #{line.length}"
    line.length
  end

  def dequeue
    line.shift
  end

  def peek
    line.first
  end

  private

  attr_reader :line

end

class Map

  def initialize
    @my_map = []
  end

  def set(key, value)
    key_idx = my_map.index { |pair| pair[0] == key }
    my_map << [key, value] unless key_idx
  end

  def get_value(key)
    my_map.each { |pair| return pair[1] if pair[0] == key }
    nil
  end

  def delete_value(key)
    value = get_value(key)
    my_map.select! { |pair| pair[1] != value }
    value
  end

  def show
    my_map
  end
  
  private

  attr_reader :my_map
end