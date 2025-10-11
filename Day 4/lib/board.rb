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
end