require_relative './node'

def knight_move starting_pos, target_pos
  starting_node = Node.new starting_pos
  queue = [starting_node]

  until queue.empty?

    if queue.first.position == target_pos
      route = queue.first.route
      puts "You made it in #{route.length-1} move(s)! Here's your path:"

      route.each do |step|
        p step
      end

      return route
    end

    queue.first.moves.each do |move|
      queue.push Node.new move, queue.first.route
    end

    queue.shift
  end
end



knight_move [0,0],[7,7]
