class OrangeTree

	def initialize name
		@name = name
		@height = 0
		@age = 0
		@oranges = 0
		puts 'My name is ' + @name + '. I am a tree.'
	end

	def height
		puts 'I am ' + @height.to_s + ' cm tall.'
	end

	def countTheOranges
		puts 'I currently have ' + @oranges.to_s + ' oranges.'
	end

	def pickAnOrange
		if @oranges > 0
			@oranges = @oranges - 1
			puts 'That was delicious!'
		else
			puts 'There aren\'t any oranges to pick!'
		end
	end


	def oneYearPasses
		@age = @age + 1
		@height = @height + 5
		@oranges = 0
			if @age <= 5
				puts 'I am now ' + @age.to_s + ' years old. I\'m just a youngster.'
			elsif (@age > 5 and @age < 10)
				@oranges = @oranges +5
				puts 'I am now ' + @age.to_s + ' years old. I\'m middle-aged!'
			elsif (@age >= 10 and @age < 15)
				@oranges = @oranges + 8
				puts 'I am now ' + @age.to_s + ' years old. I\'m pretty old...'
			else
				puts 'I am now dying. I think.'
				exit
			end
	end

end

ginger = OrangeTree.new 'ginger'

ginger.height
ginger.countTheOranges
ginger.pickAnOrange

ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.pickAnOrange

ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.oneYearPasses
ginger.height
ginger.countTheOranges
ginger.pickAnOrange
ginger.pickAnOrange
ginger.oneYearPasses
ginger.height
ginger.countTheOranges

