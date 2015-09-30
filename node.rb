class Node
  attr_reader :position, :moves, :route

  def initialize arr, route=[]
    if valid? arr, route
      @position = arr
      @route = route + [arr]
    end

    @moves = []

    x = arr[0]
    y = arr[1]

    possible_moves = [[x+2,y+1],[x+1,y+2],[x-1,y+2],[x-2,y+1]\
                      ,[x-2,y-1],[x-1,y-2],[x+1,y-2],[x+2,y-1]]

    possible_moves.each do |move|
      if valid? move, route
        @moves.push move
      end
    end


  end

  private

  # Checks that the coordinates are valid and removes any valid moves that
  # are already inside the route of this node
  def valid? arr, route=[]
    if arr[0] < 0 or arr[0] > 7 \
      or arr[1] < 0 or arr[1] > 7 \
      or route.include? arr
      return false
    else
      return true
    end
  end
end
