puts 'Type the words you want to add to the list, with a return after each one.'
arrayInput = 'beginning'
array = []

while arrayInput != ''
	arrayInput = gets.chomp
	array.push arrayInput
end

i = 0

while i < array.length

	i2 = i + 1

	while i2 < array.length
		if array[i] > array[i2]
			array[i] , array[i2] = array[i2] , array[i]
		end
	i2 = i2 + 1
	end

	i = i + 1

end

puts array