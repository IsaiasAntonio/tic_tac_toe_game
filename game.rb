module Tic
  class Game
    def initialize
      board = Board.new
      player = Player.new("x")
      player2 = Player.new("o")
      @turns = 0
      @finish = 0
      play(board,player,player2)
    end

    def play(board,player,player2)
      while @finish < 9 
        if @turns.even?
          puts "Select an Option Player 1 press ctrl + c for exit" ; position = Integer(gets.chomp) - 1 ; board.player_option(position,player.option)
          @turns = 1
          @finish += 1
        elsif @turns.odd?
          puts "Select an Option Player 2 press crtl + c for exit" ; position = Integer(gets.chomp) -1 ; board.player_option(position,player2.option)
          @turns = 0
          @finish += 1
        end
        if who_won board
          @finish = 9
          puts "Congratulations! : #{who_won board}"
        end
      end
    end

    def who_won(aux)
      if(aux.board[0]==aux.board[1] && aux.board[0] == aux.board[2])
        aux.board[0]
      elsif (aux.board[0]==aux.board[3] && aux.board[0] == aux.board[6])
	aux.board[0]
      elsif (aux.board[0]==aux.board[4] && aux.board[0] == aux.board[8])
	aux.board[0]
      elsif (aux.board[1]==aux.board[4] && aux.board[1] == aux.board[7])
	aux.board[1]
      elsif (aux.board[2]==aux.board[4] && aux.board[2] == aux.board[6])
	aux.board[2]
      elsif (aux.board[2]==aux.board[5] && aux.board[2] == aux.board[8]) 
	aux.board[2]
      elsif (aux.board[3]==aux.board[4] && aux.board[3] == aux.board[5])
	aux.board[3]
      elsif (aux.board[6]==aux.board[7] && aux.board[6] == aux.board[8])
	aux.board[6]
      end
    end
  end
end
