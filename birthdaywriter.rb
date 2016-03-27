def birthdayWriter birthday

	if birthday < 0
		return 'You have to have been born for this to work!'
	end
	if birthday == 0
		return 'VERY first'
	end

	decades = ['tenth','twentieth','thirtieth','fourtieth','fiftieth','sixtieth','seventieth','eightieth','ninetieth']
	tens = ['twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
	teens = ['eleventh','twelfth','thirteenth','fourteenth','fifteenth','sixteenth','seventheenth','eighteenth','nineteenth']
	singles = ['first','second','third','fourth','fifth','sixth','seventh','eighth','ninth']
	hundreds = ['one','two','three','four','five','six','seven','eight','nine']

	birthdayString = ''

	left = birthday
	write = left/100
	left = left - write*100
	if write > 0
		if left == 0
			birthdayString = birthdayString + hundreds[write-1] + ' hundredth'
		else
			birthdayString = birthdayString + hundreds[write-1] + ' hundred and '
		end
	end

	write = left/10
	left = left - write*10
	if write > 0
		if left == 0
			birthdayString = birthdayString + decades[write-1]
		elsif write == 1
			birthdayString = birthdayString + teens[left-1]
			left = 0
		elsif write > 1
			birthdayString = birthdayString + tens[write-2] + ' '
		end
	end

	write = left
	left = 0
	if write > 0
		birthdayString = birthdayString + singles[write-1]
	end

	birthdayString

end

birth2 = Time.mktime(1985,1,24)
now = Time.new
age = (now - birth2).to_i / 60 / 60 / 24 / 365

while age >= 0
	puts 'Happy belated ' + birthdayWriter(age) + ' birthday from ' + ((age - ((now - birth2).to_i / 60 / 60 / 24 / 365))+2015).to_s
	age = age - 1
end