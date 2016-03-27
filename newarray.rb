
def remove_duplicated(array)
  i = 0
  while i < array.length
    if array.count{|x| x == array[i].reverse} > 0
      array.delete_at(i)
    else
      i += 1
    end
  end
  array
end

class Alphabet
	
	def alphabet
		"abc"
	end

	class Numerals
		def numberal
			"123"
		end
	end

end

puts Alphabet::Numerals.new.class.superclass
