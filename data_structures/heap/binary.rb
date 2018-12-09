# https://en.wikipedia.org/wiki/Binary_heap
# https://www.brianstorti.com/implementing-a-priority-queue-in-ruby/

class BinaryHeap
  def initialize
    @elements = [nil]
  end

  def operand
    :>= # max heap is default
  end

  def size
    @elements.size - 1
  end

  def self.create_from_array(array)
    self.new.tap do |heap|
      array.each { |element| heap << element }
    end
  end

  def <<(element)
    return unless element
    @elements << element
    heapify_up(size)
  end

  def pop
    return if @elements.length == 1
    exchange(1, size)
    element = @elements.pop
    heapify_down(1)
    element
  end

  private

  def heapify_up(index)
    parent_index = index / 2

    return if index <= 1
    return if @elements[parent_index].send(operand, @elements[index])

    exchange(index, parent_index)
    heapify_up(parent_index)
  end

  def heapify_down(index)
    child_index = index * 2

    return if child_index > size

    left_element = @elements[child_index]
    right_element = @elements[child_index + 1]
    child_index += 1 if child_index < size && right_element.send(operand, left_element)

    return if @elements[index].send(operand, @elements[child_index])

    exchange(index, child_index)
    heapify_down(child_index)
  end

  def exchange(source, target)
    @elements[source], @elements[target] = @elements[target], @elements[source]
  end
end

class MaxBinaryHeap < BinaryHeap
  def operand
    :>=
  end
end

class MinBinaryHeap < BinaryHeap
  def operand
    :<=
  end
end
