def bubble_sort(array)
	i = 0
	while i < array.length
		i2 = i + 1
		while i2 < array.length
			if array[i2] < array[i]
				array[i] , array[i2] = array[i2] , array[i]
			end
			i2 += 1
		end
		i += 1
	end
	array
end








