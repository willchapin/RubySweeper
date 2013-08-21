require_relative 'game'
require_relative 'board'
require_relative 'cell'
require_relative 'user_defined_constants'

include RubySweeper

game = Game.new
game.run

