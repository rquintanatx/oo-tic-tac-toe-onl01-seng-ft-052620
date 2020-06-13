require "pry"

class TicTacToe
  
  def initialize
    @board = Array.new(9," ")
  end
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
    
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
    int_user_input = user_input.to_i
    int_user_input -= 1
  end
  
  def move(user_index, token = "X")
    @board[user_index] = token
  end

  def position_taken?(index)
    @board[index] == "X" || @board[index] == "O"
  end  
  
  def valid_move?(position)
    @board[position] == " "
  end 
  
  def turn_count
    moves_made = @board.select {|value| value != " "}
    moves_made.count 
  end 
  
  def current_player
    if turn_count.odd?
      "O"
    else 
      "X"
    end 
  end 
  
  def turn 
    puts "Choose your position between 1-9!"
    num_p = gets
    if num_p.to_i == 0 || num_p.to_i >= 10 
      puts "Error."  
    else 
      num_i = num_p.to_i 
      
    
    
    
  end
  
  
end 