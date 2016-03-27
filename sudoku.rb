class Sudoku

  def initialize(board)
    @board = board
  end

  def is_valid
    #check dimensions
    unless (@board.length**0.5) % 1 == 0
      return false
    end
    @board.each do |row|
      unless row.length == @board.length
        return false
      end
    end
    #set up checker
    checker = Proc.new do |element| 
      unless (1..@board.length).to_a == element.sort
        return false
      end
    end
    #check rows
    @board.each do |row|
      checker.call(row)
    end
    #check columns
    column_array_constructor(@board).each do |column|
      checker.call(column)
    end
    #check mini-squares
    mini_square_array_constructor(@board).each do |square|
      checker.call(square)
    end
    true
  end

def column_array_constructor(board)
  columns=Array.new(board.length) {Array.new}
  (0..board.length-1).each do |index|
      board.each do |row|
        columns[index].push(row[index])
      end
    end
  columns
end

def mini_square_array_constructor(board)
  blocks=[]
  length = board.length
  i = 0
  while i < length
    r = 0
    while r < length
      c = 0
      while c < length
        blocks[i] = row_generator(board,r,c)
        i += 1
        c += length**0.5
      end
    r += length**0.5
    end
  end
  blocks
end

def row_generator(board,r,c)
  row = []
    y = 0
    while y < (board.length**0.5)
      x = 0
        while x < (board.length**0.5)
          row.push(board[r+y][c+x])
          x += 1
        end
      y += 1
    end
  row
end

end

goodSudoku1 = Sudoku.new([
  [7,8,4, 1,5,9, 3,2,6],
  [5,3,9, 6,7,2, 8,4,1],
  [6,1,2, 4,3,8, 7,5,9],

  [9,2,8, 7,1,5, 4,6,3],
  [3,5,7, 8,4,6, 1,9,2],
  [4,6,1, 9,2,3, 5,8,7],
  
  [8,7,6, 3,9,4, 2,1,5],
  [2,4,3, 5,6,1, 9,7,8],
  [1,9,5, 2,7,7, 6,3,4]
])

puts goodSudoku1.is_valid()













def done_or_not(board)

  blocks = []
    i = 0
    while i < 9
      r = 0
      while r < 9
        c = 0
        while c < 9
          blocks[i]=[board[r][c],board[r][c+1],board[r][c+2],
                  board[r+1][c],board[r+1][c+1],board[r+1][c+2],
                  board[r+2][c],board[r+2][c+1],board[r+2][c+2]]
          i = i + 1
          c = c + 3
        end
        r = r + 3
      end
    end

end
