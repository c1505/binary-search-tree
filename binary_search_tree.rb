require 'pry'
class Bst
    attr_reader :left, :right, :data
    def initialize(data)
      @data = data
      @left
      @right
    end
    
    def insert(num)
      if @data >= num
        if @left.nil?
          @left = Bst.new(num)
        else
          @left.insert(num)
        end
      elsif @data < num
        if @right.nil?
          @right = Bst.new(num)
        else
          @right.insert(num)
        end
      end
    end
    #proceed down until target is nil
    
end

class Node
    attr_reader :left, :right, :data
    def initialize(data)
      @data = data
      @left
      @right
    end
    
    def insert(num)
      if @data >= num
        @left = Bst.new(num)
      elsif @data < num
        @right = Bst.new(num)
      end
    end
  end

# should i have a node class?

# A binary search tree consists of a series of connected nodes. Each node
# contains a piece of data (e.g. the number 3), a variable named `left`,
# and a variable named `right`. The `left` and `right` variables point at
# `nil`, or other nodes. Since these other nodes in turn have other nodes
# beneath them, we say that the left and right variables are pointing at
# subtrees. All data in the left subtree is less than or equal to the
# current node's data, and all data in the right subtree is greater than
# the current node's data.