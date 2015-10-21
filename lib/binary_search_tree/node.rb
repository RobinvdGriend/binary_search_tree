module BinartSearchTree
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

    def find(value, mode = :dfs)
      algorithm = mode.to_sym

      case algorithm
      when :dfs
        return depth_first_search(value)
      when :bfs
        return breadth_first_search(value)
      else
        raise "Not a valid search mode: #{mode}"
      end
    end

    private

    def depth_first_search(value)
      queu = []
      node = self
      until node == nil || node.value == value
        queu << node.left_child if node.left_child
        queu << node.right_child if node.right_child

        node = queu.pop || nil
      end
      node
    end

    def breadth_first_search(value)
      queu = []
      node = self
      until node == nil || node.value == value
        queu << node.left_child if node.left_child
        queu << node.right_child if node.right_child

        node = queu.shift || nil
      end
      node
    end
  end
end
