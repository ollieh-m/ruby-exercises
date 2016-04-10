def get_pins(observed,i=0,answer=[])
  return answer.sort if i == observed.length
  grid = [[1,2,3],
          [4,5,6],
          [7,8,9],
          [nil,0,nil]]
  button = observed[i].to_i
  y = grid.index{|x| x.include?(button)}
  x = grid[y].index{|x| x == button}
  if answer.empty?
    answer << grid[y][x].to_s
    answer << grid[y+1][x].to_s unless (y+1 > 3 or grid[y+1][x].nil?)
    answer << grid[y-1][x].to_s unless (grid[y-1][x].nil? or y-1 < 0)
    answer << grid[y][x+1].to_s unless (x+1 > 2 or grid[y][x+1].nil?)
    answer << grid[y][x-1].to_s unless (grid[y][x-1].nil? or x-1 < 0)
    get_pins(observed,i+1,answer)
  else
    to_add = []
    to_add << grid[y][x].to_s
    to_add << grid[y+1][x].to_s unless (y+1 > 3 or grid[y+1][x].nil?)
    to_add << grid[y-1][x].to_s unless (grid[y-1][x].nil? or y-1 < 0)
    to_add << grid[y][x+1].to_s unless (x+1 > 2 or grid[y][x+1].nil?)
    to_add << grid[y][x-1].to_s unless (grid[y][x-1].nil? or x-1 < 0)
    new_answer = []
    answer.each do |a|
      to_add.each do |t_a|
        new_answer << (a + t_a)
      end
    end
    get_pins(observed,i+1,new_answer)
  end
end

puts get_pins("683102")