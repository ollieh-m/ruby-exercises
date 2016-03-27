def quick_sort(array)

	if array.length <= 1
		return array
	end

	pivot = array.sample
	array.delete_at(array.index(pivot))

	less = []
	more = []

	array.each do |element|
		if element < pivot
			less.push(element)
		elsif element > pivot
			more.push(element)
		end
	end

	sorted_array = []

	sorted_array.push(quick_sort(less))
	sorted_array.push(pivot)
	sorted_array.push(quick_sort(more))

	sorted_array

end

puts quick_sort([4,5,1,9,11,45,2,5,4])