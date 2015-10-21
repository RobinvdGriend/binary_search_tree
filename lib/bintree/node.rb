module BinTree
  class Node
    attr_accessor :value, :left_child, :right_child

    def initialize(value, opts = {})
      @value = value
      @left_child = opts.fetch(:left_child, nil)
      @right_child = opts.fetch(:right_child, nil)
    end

    def insert_node(value)
      if value <= self.value
        if self.left_child == nil
          self.left_child = Node.new(value)
        else
          self.left_child.insert_node(value)
        end
      elsif value > self.value
        if self.right_child == nil
          self.right_child = Node.new(value)
        else
          self.right_child.insert_node(value)
        end
      else
        raise
      end
      self
    end
  end
end
