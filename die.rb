class Die

	def initialize
		roll
	end

	def roll
		@showing = 1 + rand(6)
	end

	def showing
		@showing
	end

	def cheat number
		@showing = number
	end

end

die = Die.new

puts die.cheat 7

puts die.showing