require 'colorize'
module Tic
  class Board
    attr_reader :board
    def initialize
      @row = 0
      @board = [" 1 "," 2 "," 3 ",
		" 4 "," 5 " ," 6 ",
		" 7 "," 8 "," 9 "]
      draw
    end

    def player_option(position,player)
      @board[position]= " #{player} "
      draw
    end

    def draw
	    puts ' -------'.red
      @board.each { |square| print square
        @row += 1
        if @row >2
          puts ""
        @row = 0
       end}
      puts ' -------'.red
    end
  end
end

