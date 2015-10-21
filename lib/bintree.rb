require_relative 'bintree/node'

module BinTree
  def self.build_tree(ary)
    values = ary.shuffle
    root_node = Node.new(values.shift)

    until values.empty?
      root_node.insert_node(values.shift)
    end
    root_node
  end
end
