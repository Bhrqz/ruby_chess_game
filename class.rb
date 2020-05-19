require"pry"

module Board
  @@board = Array.new(8) {Array.new(8)}

  def illegal_move
    @illegal = 'Illegal move'
    puts @illegal
  end
end

#The class Pawn is the only one that does not need the goal parameter (destination)

class Pawn
  include Board
  #white pawns MUST BE below BLACK in the begining 
  # valid will need acces to the BOARD
  def valid(current, color) #if in front of PAWN there is a value, valid goes FALSE
    if (color == "white" ) && (@@board[current.first][current.last + 1] == nil) 
      return true 
      elsif (color == "black") && (@@board[current.first][current.last - 1] == nil)
      return true
      
    else
      return false
    end
    
  end
  
  def opening(current, color)
    x = current.first
    y = current.last + 2 if color == 'white'
    y = current.last -2 if color == 'black'
    position = [x,y]

    illegal_move unless valid(current,color)
    position if valid(current, color)
    
  end


  def moves(current, color) 
    x = current.first
    y = current.last + 1 if color == "white"
    y = current.last - 1 if color == "black"
    position = [x,y]
    
    illegal_move unless valid(current,color)
    position if valid(current, color)
  end
  
  
  def eats_right(current, color) 
    x = current.first + 1 if color == 'white'
    x = current.first + 1 if color == 'black'
    y = current.last + 1 if color == 'white'
    y = current.last - 1 if color == 'black'
    position = [x,y]
    illegal_move unless valid(current,color)
    position if valid(current, color)
  end


  def eats_left(current,color) 
    x = current.first - 1 if color == 'white'
    x = current.first - 1 if color == 'black'
    y = current.last + 1 if color == 'white'
    y = current.last - 1 if color == 'black'
    position = [x,y]
    illegal_move unless valid(current,color)
    position if valid(current, color)
  end

end


class Rook
  include Board
  def moves(current, goal)
    position = []
    if (current.first == goal.first) 
      position = [current.first, goal.last]
      return position
    elsif (current.last == goal.last)
      position = [goal.first, current.last]
      return position
    else
      illegal_move
    end
  end

end


class Bishop
  include Board
  def moves(current, goal)
    position = []
    moves = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,-1,-2,-3,-4,-5,-6,-7,-8].permutation(2).to_a.filter{|n| n[0].abs == n[1].abs}.uniq!
    moves.each do |n|
      x = n.first + current.first
      y = n.last + current.last
      position = [x,y]
      break if position == goal
      position = nil
    end
    illegal_move if position == nil
    position
  end
end


class Knight
  include Board
    
  def moves(current, goal)
    position = []
    moves = [-2, -1, 1, 2].permutation(2).to_a.filter {|num| (num[0] * num[1]).abs == 2 }
    moves.each do |num|
      x = current.first + num.first 
      y = current.last + num.last
      position = [x,y]
      break if position == goal
      position = nil
    end
    illegal_move if position == nil
    position
  end
end


class Queen
  include Board

  def moves(current, goal)
    position = []
    moves = [-8,-7,-6,-5,-4,-3,-2,-1,1,2,3,4,5,6,7,8,9,8,7,6,5,4,3,2,1,-1,-2,-3,-4,-5,-6,-7,-8].permutation(2).to_a.filter{|n| n[0].abs == n[1].abs}.uniq!

    if (current.first == goal.first) 
      position = [current.first, goal.last]
      return position
    elsif (current.last == goal.last)
      position = [goal.first, current.last]
      return position
        
    else
      moves.each do |n|
        x = n.first + current.first
        y = n.last + current.last
        position = [x,y]
        break if position == goal
        position = nil
      end
    end
    illegal_move if position == nil
    position
  end

end

class King 
  include Board

  def moves(current, goal)
    position = []
    moves = [[-1,-1],[0,-1],[1,-1],[-1,0],[1,0],[-1,1],[0,1],[1,1]]
    moves.each do |n|
      x = n.first+current.first
      y = n.last+current.last
      position = [x,y]
      break if position == goal
      position = nil
    end
    illegal_move if position == nil 
    position
  end

end  

