array = [1,1,2,3,4,5,5,6,6,6]

(1..6).each do |num|
	name = "count_#{num}"
	eval(name = array.count(num))
end

puts count_1
puts count_2