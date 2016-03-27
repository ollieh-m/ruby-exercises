def time_method(method, *args)
  beginning_time = Time.now
  self.send(method, args)
  end_time = Time.now
  puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end

def quicksort(array)
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
  sorted_array = quicksort(less).push(pivot) + quicksort(more)
end
  
def next_bigger(n)
  array = n.to_s.split('').map{ |x| x.to_i }
  permutations_array = quicksort(bigger_permutations(array))
  permutations_array[permutations_array.index(n)+1]
end

def bigger_permutations(array)
	permutations_array = []
	i = 0
	original_array = array[0..-1]
	while i < array.length
		if array[i] >= array[0]
			array.delete_at(i)
			permutations_array.push(array.permutation.to_a.map{|x| x.unshift(original_array[i]).join('').to_i})
			array = original_array[0..-1]
		end
		i += 1
	end
	permutations_array.flatten(1)
end

def insert_index_test(array,i)
  array.length + i - (array[0..i].reverse.index{|x| array[i] > x})
end

def next_bigger_2(n)
  array = n.to_s.chars.map{ |x| x.to_i }
  if array.sort_by{ |x| x*-1 } == array
    return -1
  else
    i = -1
    provisional_moving_digit = -1
    provisional_insert_index = -1
    #run through digits from back to front until the digit you are going to test is at the provisional_insert
    until array.length + i == provisional_insert_index
      unless array[i] == array[0..i].min
        if insert_index_test(array,i) > provisional_insert_index
          provisional_moving_digit = i
          provisional_insert_index = insert_index_test(array,i)
        elsif insert_index_test(array,i) == provisional_insert_index
          if array[i] < array[provisional_moving_digit]
            provisional_moving_digit = i
            provisional_insert_index = insert_index_test(array,i)
          end
        end
      end
      i = i -1
    end  
    array.insert(provisional_insert_index,array[provisional_moving_digit]).delete_at(provisional_moving_digit)
    array[provisional_insert_index+1..-1] = array[provisional_insert_index+1..-1].sort
    array.join('').to_i
  end
end

beginning_time = Time.now
puts "#{next_bigger_2(576378338221)}"
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"