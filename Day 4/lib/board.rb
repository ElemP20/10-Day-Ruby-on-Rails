class Board 

  def initialize
    @grid = Array.new(3) { Array.new(3, " ") }
  end

  def display
    puts "Current Board:"
    puts " " * 9

    @grid.each_with_index do |row, index|
      puts row.join(" | ")
      puts "-" * 9 unless index == @grid.length - 1
    end
    
    puts " " * 9
  end

  def update(row, col, symbol) 
    if @grid[row][col] == " "
      @grid[row][col] = symbol
      true
    else
      puts "Cell already taken. Try again."
      false
    end
  end

  def full?
    @grid.all? { |row| row.all? { |cell| cell != " " } }
  end

  def check_winner(symbol)
    # Check rows and columns
    3.times do |i|
      if @grid[i].all? { |cell| cell == symbol } || @grid.all? { |row| row[i] == symbol }
        return true
      end
    end

    # Check diagonals
    if (0..2).all? { |i| @grid[i][i] == symbol } || (0..2).all? { |i| @grid[i][2 - i] == symbol }
      return true
    end

    false
  end
end