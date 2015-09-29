require_relative './node'


class Tree
  attr_reader :root
  def initialize starting_pos route= []
    @root = Node.new starting_pos
  end
end
