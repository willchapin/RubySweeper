module RubySweeper

  class Game

    attr_accessor :board

    def initialize()
      set_difficulty
      @board = Board.new
    end

    def get_coords
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
      coords.map! { |coord| ('a'..'z').to_a.index(coord.strip.downcase) }
      coords
    end

    def run
      winner = false
      loser = false
      until winner or loser
        coords = get_coords
        loser = @board.lose?(*coords)
        break if loser
        @board.sweep(*coords)
        @board.print_board
        winner = @board.win?
      end
      @board.print_final_board
      if loser
        puts "You exploded!"
      else
        puts "You survived and won the game!"
      end
    end
  end
end
