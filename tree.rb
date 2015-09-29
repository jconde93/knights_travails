require_relative './node'


class Tree
  attr_reader :root, :branches

  def initialize starting_pos
    @root = Node.new starting_pos
    @branches = []
    @root.possible_moves.each do |move|
      @branches.push Node.new move, [starting_pos]
    end
  end

end

