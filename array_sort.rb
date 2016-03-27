puts 'Type the words you want to add to the list, with a return after each one.'
arrayInput = 'beginning'
array = []

while arrayInput != ''
	arrayInput = gets.chomp
	array.push arrayInput
end

i = 0

sorted = []

while array != []
	sorted.push array.min
	array.delete(array.min)
end

puts sorted