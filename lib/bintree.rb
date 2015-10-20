require_relative 'bintree/node'

module BinTree
  def self.build_tree(ary)
    ary = ary.to_a
    if ary.size == 0
      nil
    elsif ary.size == 1
      Node.new(ary[0])
    else
      ary_left = ary[0..(ary.size / 2 - 1)]
      ary_mid = ary[ary.size / 2]
      ary_right = ary[(ary.size / 2 + 1)..-1]

      Node.new(ary_mid, left: build_tree(ary_left), right: build_tree(ary_right))
    end
  end
end
