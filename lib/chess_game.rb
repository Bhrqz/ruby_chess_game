
require "./class.rb"
require 'pry'

#universal variables KINDA FAILED
$counter = 0


def set_board
  $board = Array.new(8) {Array.new(8)}

  #black
  $board[0][0] = "\u{265C}"
  $board[0][1] = "\u{265E}"
  $board[0][2] = "\u{265D}"
  $board[0][3] = "\u{265B}" 
  $board[0][4] = "\u{265A}"
  $board[0][5] = "\u{265D}"
  $board[0][6] = "\u{265E}"
  $board[0][7] = "\u{265C}"
  for i in 0..7
    $board[1][i] = "\u{265F}"
  end

  #empty ones
  for i in 0..7
    for j in 2..5
      if j.even?
        if i.odd?
          $board[j][i] = "\u{25A1}"
        elsif i.even?
          $board[j][i] = "\u{25A0}"
        end
      elsif j.odd?
          if i.even?
            $board[j][i] = "\u{25A1}"
          elsif i.odd?
            $board[j][i] = "\u{25A0}"
          end
      end
    end
  end


  #white
  for i in 0..7
    $board[6][i] = "\u{2659}"
  end
  $board[7][0] = "\u{2656}"
  $board[7][1] = "\u{2658}"
  $board[7][2] = "\u{2657}"
  $board[7][3] = "\u{2655}" 
  $board[7][4] = "\u{2654}"
  $board[7][5] = "\u{2657}"
  $board[7][6] = "\u{2658}"
  $board[7][7] = "\u{2656}"
end

def default_board(y,x)

  if y.even?
    if x.odd?
      $board[y][x] = "\u{25A1}"
    elsif i.even?
      $board[y][x] = "\u{25A0}"
    end
  elsif y.odd?
    if x.even?
      $board[y][x] = "\u{25A1}"
    elsif x.odd?
      $board[y][x] = "\u{25A0}"
    end
  end
end

def welcoming
  puts " Welcome to command line Chess Game ".center(70, "#*")
end

def saved_game
  #board serialiation and shit
end

def show_board
  puts <<~HEY


  8 #{$board[0][0]} #{$board[0][1]} #{$board[0][2]} #{$board[0][3]} #{$board[0][4]} #{$board[0][5]} #{$board[0][6]} #{$board[0][7]}
  7 #{$board[1][0]} #{$board[1][1]} #{$board[1][2]} #{$board[1][3]} #{$board[1][4]} #{$board[1][5]} #{$board[1][6]} #{$board[1][7]}
  6 #{$board[2][0]} #{$board[2][1]} #{$board[2][2]} #{$board[2][3]} #{$board[2][4]} #{$board[2][5]} #{$board[2][6]} #{$board[2][7]}
  5 #{$board[3][0]} #{$board[3][1]} #{$board[3][2]} #{$board[3][3]} #{$board[3][4]} #{$board[3][5]} #{$board[3][6]} #{$board[3][7]}
  4 #{$board[4][0]} #{$board[4][1]} #{$board[4][2]} #{$board[4][3]} #{$board[4][4]} #{$board[4][5]} #{$board[4][6]} #{$board[4][7]}
  3 #{$board[5][0]} #{$board[5][1]} #{$board[5][2]} #{$board[5][3]} #{$board[5][4]} #{$board[5][5]} #{$board[5][6]} #{$board[5][7]}
  2 #{$board[6][0]} #{$board[6][1]} #{$board[6][2]} #{$board[6][3]} #{$board[6][4]} #{$board[6][5]} #{$board[6][6]} #{$board[6][7]}
  1 #{$board[7][0]} #{$board[7][1]} #{$board[7][2]} #{$board[7][3]} #{$board[7][4]} #{$board[7][5]} #{$board[7][6]} #{$board[7][7]}
    a b c d e f g h 
  HEY
end

def turn_change
  
  if $counter.even?
    $counter += 1
    return "white"
  else
    $counter += 1
    return "black"
  end
end


def traslator(play)
  if play.length == 2
    case play[0]
    when "a"
      j = 0
    when "b"
      j = 1
    when "c"
      j = 2
    when "d"
      j = 3
    when "e"
      j = 4
    when "f"
      j = 5
    when "g"
      j = 6
    when "h"
      j = 7
    end

    case play[1]
    when "1"
      i = 7
    when "2"
      i = 6
    when "3"
      i = 5
    when "4"
      i = 4
    when "5"
      i = 3
    when "6"
      i = 2
    when "7"
      i = 1
    when "8"
      i = 0
    end
  end
  choosen = $board[i][j]
end

def right_choice?(selection, turn)
  #Authorizing BLACK ones
  if ((selection == "\u{265A}") || (selection == "\u{265B}") || (selection == "\u{265C}") || (selection == "\u{265D}") || (selection == "\u{265E}") || (selection == "\u{265F}")) && (turn == "black")
    return true
  #Authorizing WHITE ones
  elsif ((selection == "\u{2654}") || (selection == "\u{2655}") || (selection == "\u{2656}") || (selection == "\u{2657}") || (selection == "\u{2658}") || (selection == "\u{2659}")) && (turn == "white")
    return true
  else
    false
  end
end

def main
  current_turn = turn_change
  puts <<~HEY
    
  you can save or load by typing 'save' or 'load' 

  It is turn for #{current_turn} ones
  What move do you want to perform?   
  
  HEY
  play = gets.chomp.downcase.strip
  selection = traslator(play)
  
  
  

end


welcoming
set_board
show_board
main