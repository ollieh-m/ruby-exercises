def new_map(array,&block)
	unless array.empty?
		[block.call(array[0])] + [new_map(array[1..-1],&block)]
	end
end

def new_map3(array,&block)
	result = []
	unless array.empty?
		result << [block.call(array[0])]
		array.delete_at(0)
		result += new_map(array,&block)
	end
	result
end

def new_map2(array,answer=[],&block)
	unless array.empty?
		answer << block.call(array[0])
		array.delete_at(0)
		new_map2(array,answer,&block)
	end
	answer
end

puts new_map3([1,2,3,4,5]) { |x| x*2 }
	
	
