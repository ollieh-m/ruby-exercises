birth2 = Time.mktime(1985,1,24)
now = Time.new
age = (now - birth2).to_i / 60 / 60 / 24 / 365

while age >= 0
	if age > 0
		puts 'Happy Birthday for turning ' + age.to_s + ' in ' + ((age - ((now - birth2).to_i / 60 / 60 / 24 / 365))+2015).to_s
	else
		puts 'Happy day you were actually born, in ' + ((age - ((now - birth2).to_i / 60 / 60 / 24 / 365))+2015).to_s
	end
	age = age - 1
end

def birthdayWriter birthday

	if birthday < 0
		return 'You have to have been born for this to work!'
	end
	if birthday == 0
		return 'VERY first'
	end

	decades = ['ninetieth','eightieth','seventieth','sixtieth','fiftieth','fortieth','thirtieth','twentieth','tenth']
	tens = ['ninety','eighty','seventy','sixty','fifty','fourty','thirty','twenty']
	teens = ['nineteenth','eighteenth','seventeenth','sixteenth','fifteenth','fourteenth','thirteenth','twelfth','eleventh']
	singles = ['ninth','eighth','seventh','sixth','fifth','fourth','third','second','first']
	hundreds = ['one','two','three','four','five','six','seven','eight','nine']

	birthdayString = ''

	left = ageYears
	write = left/100
	left = left - write*100
	if write > 0
		if left = 0
			birthdayString = birthdayString + hundreds[write-1] + ' hundredth'
		else
			birthdayString = birthdayString + hundreds[write-1] + ' hundred and '
		end
	end

	write = left/10
	left = left - write*10
	if write > 0
		if left = 0
			birthdayString = birthdayString + decades[write-1]
		elsif write = 1
			birthdayString = birthdayString + teens[left-1]
			left = 0
		elsif write > 1
			birthdayString = birthdayString + 


	23


