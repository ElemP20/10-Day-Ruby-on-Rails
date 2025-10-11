require_relative 'board'
require_relative 'player'

class Game 

  def initialize
    @board = Board.new
    @player1 = Player.new("Player 1", "X")
    @player2 = Player.new("Player 2", "O")
    @current_player = @player1
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def play_turn
    puts "#{@current_player.name}'s turn (#{@current_player.symbol})."
    move = @current_player.make_move
    if @board.update(move[0], move[1], @current_player.symbol)
      @board.display
      switch_player
    end
  end

  def play
    @board.display
    9.times { play_turn }
    puts "Game over!"
  end
end