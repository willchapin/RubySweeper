module RubySweeper

  class Cell

    attr_accessor :mine, :adjecent_mines, :status 

    def initialize
      @status = :unchecked
      if $difficulty/200.to_f > rand
        @mine = true
      else
        @mine = false
      end
    end
  end
end
