def flattener(array)
	result = []
	array.each do |item|
		if item.is_a?(Array)
			result += flattener(item)
		else
			result << item
		end
	end
	result
end

def flattener_fixed(array,level)
	level.times do
		result = []
		array.each do |element|
			if element.is_a?(Array)
				element.each { |item| result << item }
			else result << element
			end
		end
		array = result
	end
	array
end


puts "#{[1,2,3]+[1,2,3]}"
puts "#{[1,2,3]<<[1,2,3]}"
puts "#{flattener_fixed([[1,2,3],[1,2],[[1,[2]],1]],1)}"