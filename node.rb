class Node
  attr_reader :current_pos, :possible_moves

  def initialize pos, route=[]
    if valid_pos? pos   # verify current possition is valid
      @current_pos = pos
      @route = route
    else
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
      #verify if possible possition is valid
      if valid_pos? arr, route
        @possible_moves.push arr
      end
    end
  end

  private

  def valid_pos? arr, route=[]
    if (arr[0] < 0 or arr[0] > 7 or arr[1] < 0 or arr[1] > 7)\
      or route.include? arr
      return false
    else
      return true
    end

  end
end
