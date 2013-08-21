module RubySweeper
  
  class Game
    
    attr_accessor :board
    
    def initialize()
      set_difficulty
      @board = Board.new
    end
    
    def player_move
      puts "Where would you like to ruby sweep?"
      puts "Enter coordinates in the form of <row letter>,<column letter>."
      coords = gets
      until coords =~ /^[a-zA-Z],[a-zA-Z]$/ 
        puts "Excuse me?"
        puts "Please enter coordinates in the form of <row letter>,<column letter>."
        puts "Example: g,c"
        coords = gets
      end
      coords = coords.split(",")
      coords.map! do |coord|
        ('a'..'z').to_a.index(coord.strip.downcase) 
      end
      @board.sweep(*coords)
    end
 
    def start
      winner = false
      loser = false
      until winner or loser
        player_move
        @board.print_board
        winner = @board.win?
      end  
      puts "You survived and won the game!"
    end
  end
end