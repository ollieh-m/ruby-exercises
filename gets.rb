puts 'Hello there. What\'s your first name please?'
firstName = gets.chomp
puts 'And your middle name?'
middleName = gets.chomp
puts 'And your last name?'
lastName = gets.chomp
nameLength = firstName.length + middleName.length + lastName.length
puts 'Thanks. Altogether there are ' + nameLength.to_s + ' letters in your full name.'