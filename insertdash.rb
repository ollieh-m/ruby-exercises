def insert_dash(num)
  
  array = num.to_s.split('')

  array.each_with_index do |x, i|
  	if x.to_i % 2 == 0
  		array.delete(x)
  	end
  end

  array

end

puts insert_dash(4556789)
