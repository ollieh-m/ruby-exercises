puts 'What is your starting year?'
startYear = gets.chomp.to_i

puts 'What is your ending year?'
endYear = gets.chomp.to_i

while startYear <= endYear
	if (startYear % 4 == 0 and startYear % 100 != 0) or startYear % 400 == 0
		puts startYear
	end
	startYear = startYear + 1
end