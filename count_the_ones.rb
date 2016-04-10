def number_to_binary_converter(number)
	binary_array = []
	until number == 0
		binary_array.unshift(number % 2)
		number /= 2
	end
	binary_array.count(1)
end