module RubySweeper  

  $difficulty = 20
  BOARD_SIZE = 25

  def set_difficulty
    puts "how hard would you like the game to be? (on a scale of 0 to 100)"
    difficulty = gets 
    until (0..100).include?(difficulty.to_i) and difficulty =~ /\d+$/
      puts "please enter a natural number between 0 (trivial) and 100 (impossibly difficult) inclusive."
      difficulty = gets
    end 
    $difficulty = difficulty.to_i
  end
  
end
