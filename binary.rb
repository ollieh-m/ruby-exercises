class Morse

	#method to generate decimal equivalent taking binary number as two's complement
	#if it starts with 1 the decimal equivalent is the the decimal equivalent of
	#a) the two's complement representation of that binary number
	#b) with a negative sign
	#if it starts with a zero the decimal equivalent is just the normal decimal equivalent (not of the two's complement)

	def self.binary_32_converter(string)
		array = string.chars.map{|x| x.to_i}
		if array.first == 1
			neg = true
			array = array.map{|x| 1 - x}.reverse
			addition_point = array.index(0)
			array[addition_point] = 1
			if addition_point > 0
				(0..addition_point-1).each do |index|
					array[index] = 0
				end
			end
		else
			neg = false
			array = array.reverse
		end
		answer = 0
		array.each_with_index do |bit,index|
			answer = answer + (bit*(2**index))
		end
		if neg
			answer * -1
		else
			answer
		end
	end

	def self.number_to_binary_converter(number)
		binary_array = []
		number > 0 ? i = number : i = number * -1
		until i == 0
			binary_array.unshift(i % 2)
			i /= 2
		end
		if number >= 0
			(32-(binary_array.length)).times do
				binary_array.unshift(0)
			end
			binary_array.join('')
		else
			(32-(binary_array.length)).times do
				binary_array.unshift(0)
			end
			binary_array = binary_array.map{|x| 1 - x}.reverse
			addition_point = binary_array.index(0)
			binary_array[addition_point] = 1
			if addition_point > 0
				(0..addition_point-1).each do |index|
					binary_array[index] = 0
				end
			end
			binary_array.reverse.join('')
		end
	end

  def self.decode(array)
  	(0..array.length-1).each do |index|
  		array[index] = number_to_binary_converter(array[index])
  	end
  	puts "array decoded to binary is #{array}"
  	words_array = array.join.split('0000000').map do |word|
  		word.split('000')
  	end
  	decoded_array = []
  	words_array.each do |word|
  		word.each do |character|
  			@alpha.each { |key,value| decoded_array.push(key) if character == value }
  		end
  		decoded_array.push(" ")
  	end
  	decoded_array[0..(decoded_array.rindex{|x| x != " "})].join
  end

  def self.encode(message)
    #push a binary version of each character to an array
    binary_array = []
    message_array = message.chars
    message_array.each_with_index do |character,index|
      	if message_array[index+1] == " "
    		binary_array.push(@alpha[character])
    	else
    		binary_array.push(@alpha[character]+'000')
    	end
    end
    #create a new array in which each element is 32 characters long
    binary_32_bit_array = []
    binary_array = binary_array.join('').chars
    i = 0
    until binary_array.length - i < 32
    	binary_32_bit_array.push(binary_array[i..i+31].join)
    	i += 32
    end
    binary_32_bit_array.push(binary_array[i..-1].join+('0'*(32-binary_array[i..-1].length)))
    finished_array = []
    binary_32_bit_array.each do |thirtytwo|
    	finished_array.push(binary_32_converter(thirtytwo))
    end
    finished_array
  end

@alpha={
  'A'=> '10111',
  'B'=> '111010101',
  'C'=> '11101011101',
  'D'=> '1110101',
  'E'=> '1',
  'F'=> '101011101',
  'G'=> '111011101',
  'H'=> '1010101',
  'I'=> '101',
  'J'=> '1011101110111',
  'K'=> '111010111',
  'L'=> '101110101',
  'M'=> '1110111',
  'N'=> '11101',
  'O'=> '11101110111',
  'P'=> '10111011101',
  'Q'=> '1110111010111',
  'R'=> '1011101',
  'S'=> '10101',
  'T'=> '111',
  'U'=> '1010111',
  'V'=> '101010111',
  'W'=> '101110111',
  'X'=> '11101010111',
  'Y'=> '1110101110111',
  'Z'=> '11101110101',
  '0'=> '1110111011101110111',
  '1'=> '10111011101110111',
  '2'=> '101011101110111',
  '3'=> '1010101110111',
  '4'=> '10101010111',
  '5'=> '101010101',
  '6'=> '11101010101',
  '7'=> '1110111010101',
  '8'=> '111011101110101',
  '9'=> '11101110111011101',
  '.'=> '10111010111010111',
  ','=> '1110111010101110111',
  '?'=> '101011101110101',
  "'"=> '1011101110111011101',
  '!'=> '1110101110101110111',
  '/'=> '1110101011101',
  '('=> '111010111011101',
  ')'=> '1110101110111010111',
  '&'=> '10111010101',
  ':'=> '11101110111010101',
  ';'=> '11101011101011101',
  '='=> '1110101010111',
  '+'=> '1011101011101',
  '-'=> '111010101010111',
  '_'=> '10101110111010111',
  '"'=> '101110101011101',
  '$'=> '10101011101010111',
  '@'=> '10111011101011101',
  ' '=> '0000'}

end

puts Morse.number_to_binary_converter(536870912)