def capitals_first(string)
	original_array = string.split(' ')
  sorted_array = []
  noncaps_array = []
  original_array.each do |word|
    if word == word.capitalize
      sorted_array.push(word)
    else
      noncaps_array.push(word)
    end
  end
  sorted_array.push(noncaps_array)
  puts sorted_array.join(' ')
  end

puts capitals_first("sense Does to That Make you?")

puts "!cheese" == "!cheese".capitalize