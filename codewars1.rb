array = [11,12,13,9]
if array.map { |x| x - 10 }.join.include? '-'
	puts "this contained a value smaller than 10"
end