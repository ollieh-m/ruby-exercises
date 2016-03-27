
def next_in_alphabetic_order(array)
	#need to identify what item needs to move and where to insert it
	move_to_position = -1
	i = -1
	until i == -1 * array.length
		provisional_move_to_position = array[0..(i-1)].rindex{ |x| array[i] > x }
		if provisional_move_to_position.nil? or provisional_move_to_position <= move_to_position
			i -= 1
		elsif provisional_move_to_position > move_to_position
			move_to_position = provisional_move_to_position
			mover = i
			i -= 1
		end
	end
	#need to move the item into the move_to_position
	array = array.insert(move_to_position,array[mover])
	array.delete_at(mover)
	#need to sort items after the moved item
	array[move_to_position+1..-1] = array[move_to_position+1..-1].sort
	array
end

def list_permutations_in_alphabetic_order(word)
	array = word.chars
	counter = 1
	output = array.sort
	until output == array
		output = next_in_alphabetic_order(output)
		counter += 1
	end
	counter
end

puts list_permutations_in_alphabetic_order("BCGSFRGCGSF")


