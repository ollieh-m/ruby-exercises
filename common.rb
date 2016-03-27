a = [1,2,3,4,5]
b = [3,2,9,3,7]

new_array = []
a.each do |item|
	if b.include?(item)
		new_array.push(item)
	end
end

puts new_array