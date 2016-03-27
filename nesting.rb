class Array
  
  def same_structure_as(arr)
    
    i = 0
    until self.flatten(i) == self.flatten
    	self.flatten(i)
    	i = i + 1
   	end

   	self_mod = self

   	x = 0
   	while x <= i
    	self_mod = self_mod.flatten(x)
    	arr = arr.flatten(x)
    	self_mod.each_with_index do |element,index|
      		if element.is_a?(Array)
      			unless arr[index].is_a?(Array) and element.length == arr[index].length
        			return false
      			end
      		else 
      			if arr[index].is_a?(Array)
      				return false
      			end
      		end
      	end
    	x = x + 1
    end
    true
  end

end

puts [[[],[]]].same_structure_as([[1,1]])

