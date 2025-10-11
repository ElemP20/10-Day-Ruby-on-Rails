class Player 

  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def make_move
    puts "#{@name}, enter your move <row,column>: "
    gets.chomp.split(",").map(&:to_i)
  end

end