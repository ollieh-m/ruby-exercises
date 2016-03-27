def solution(sequence)

	range_array = [sequence.first]

	i = 1
	while i < sequence.length - 1
		
		if sequence[i] - sequence[i-1] != 1
			range_array.push(sequence[i])

		elsif sequence[i+1] - sequence[i] != 1
			if sequence[i] - range_array[-1] == 1
				range_array.push(sequence[i])
			else
				range_array[-1] = "#{range_array[-1].to_s}-#{sequence[i].to_s}"
			end

		end
		
		i += 1
	end

	if (sequence[-1] - sequence[-2] != 1 or sequence[-1] - range_array[-1] == 1)
		range_array.push(sequence[-1])
	else
		range_array[-1] = "#{range_array[-1].to_s}-#{sequence[-1].to_s}"
	end

	range_array.join(',')

end




solution([-7,-6,-5, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20, 27, 30, 31, 32])