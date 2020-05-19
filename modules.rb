class Pawn
  #white pawns MUST BE below BLACK in the begining 
  
  @moves_array_black = [[0,-1], [0,-2],[1,-1], [-1,-1]] #go down
  @@moves_array_white = [[0,1], [0,2],[1,1], [-1,1]] #go up
  
  def open_white(current)
    position = []
    #the OPENING move of a pawn 2 steps
    x = current.first
    y = current.last + @@moves_array_white[1].last
    position = [x,y]
    position
  end

  def open_black(current)
    x = current.first
    y = current.last + moves_array_black[1].last
    position << [x,y]
    position
  end

  def moves_white(current) 
    x = current.first
    y = current.last + moves_array_white.first.last
    position << [x,y]
    position
  end

  def moves_black(current) 
    x = current.first
    y = current.last + moves_array_black.first.last
    position << [x,y]
    position
  end
  
  def eats_white_right(current) 
    x = current.first + moves_array_white[1].first
    y = current.last + moves_array_white.first.last
    position << [x,y]
    position
  end

  def eats_black_right(current) 
    x = current.first + moves_array_black[1].first
    y = current.last + moves_array_black.first.last
    position << [x,y]
    position
  end

  def eats_white_left(current) 
    x = current.first + moves_array_white[1].first
    y = current.last + moves_array_white.first.last
    position << [x,y]
    position
  end

  def eats_black_left(current) 
    x = current.first + moves_array_black[1].first
    y = current.last + moves_array_black.first.last
    position << [x,y]
    position
  end

end


class Rook

end


class Knight
  
end


class Bishop

end


class Queen
end

class King 
end  
