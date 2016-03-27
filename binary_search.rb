def binary_search(array,value)

	low = 0
	high = (array.length)-1
	mid = (low+high)/2

	array = array.sort

	until array[mid] == value
		if value < array[mid]
			high = mid - 1
			mid = (low+high)/2
		elsif value > array[mid]
			low = mid + 1
			mid = (low+high)/2
		end
	end

	mid

end

array = [7,2,3,4,6,9]
puts binary_search(array,6)