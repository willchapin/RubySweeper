module RubySweeper  
  
  $difficulty = 20
  $board_size = 26
  
  def set_board_size
    puts "what size would you like the board to be? (between 10 and 200)"
    size = gets 
    until (10..200).include?(size.to_i) and size =~ /\d+$/
      puts "please enter a natural number between 10 and 200, nothing more."
      size = gets
    end 
    $board_size = size.to_i
    
  end

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