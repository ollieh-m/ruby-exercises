def string_shuffle(s)
	s.split('').shuffle.join
end

puts string_shuffle("foobar")

class String
	def string_shuffle
		self.split('').shuffle.join
	end
end

puts "hello".string_shuffle