
class Bst
  VERSION = 1
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
  
  def each(&block)
    return to_enum(__method__) unless block_given?
    @left.each(&block) if @left
    block.call(@data)
    @right.each(&block) if @right
  end
  


    
end
