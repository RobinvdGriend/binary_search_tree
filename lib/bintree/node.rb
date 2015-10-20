module BinTree
  class Node
    attr_accessor :value, :left, :right

    def initialize(value, opts = {})
      @value = value
      @left = opts.fetch(:left, nil)
      @right = opts.fetch(:right, nil)
    end
  end
end
