class Node
  attr_reader :current_pos, :possible_moves

  def initialize pos
    if valid_pos? pos
      @current_pos = pos
      @visited = false
    else
      puts "Not valid coordinates"
      return
    end
    @possible_moves = []

    x = pos[0]
    y = pos[1]

    possible_pos = {
      :q1_top => [x+1,y+2],
      :q1_bottom => [x+2,y+1],
      :q2_top => [x-1,y+2],
      :q2_bottom => [x-2,y+1],
      :q3_top => [x-2,y-1],
      :q3_bottom => [x-1,y-2],
      :q4_top => [x+2,y-1],
      :q4_bottom => [x+1,y-2]
    }

    possible_pos.each_value do |arr|
      if valid_pos? arr
        @possible_moves.push arr
      end
    end

  end

  def visit!
    @visited = true
  end

  def visited?
    @visited
  end


  private

  def valid_pos? arr
    if arr[0] < 0 or arr[0] > 7 or arr[1] < 0 or arr[1] > 7
      return false
    else
      return true
    end
  end
end



node = Node.new [-1,-7]
p node
