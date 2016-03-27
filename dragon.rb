class Dragon

	def initialize name
		@name = name.capitalize
		@asleep = false
		@stuffInBelly = 10
		@stuffInIntestines = 0
		puts @name + ' is born.'
	end

	def feed food
		puts @name + ' is very grateful for that. ' + food.capitalize + ' is its favourite.'
		@stuffInBelly = @stuffInBelly + 5
		passageOfTime
	end

	def walk where
		if where == 'park'
			puts 'You take ' + @name + ' for a lovely walk in the ' + where + ', and it empties its bowels - but is interrupted by all the dogs in the park staring at it.'
			@stuffInIntestines = @stuffInIntestines / 2
		elsif where == 'woods'
			puts 'You take ' + @name + ' for a lovely walk in the ' + where + ', and it empties its bowells in peace and quiet making a horrible stink.'
			@stuffInIntestines = 0
		end
		passageOfTime
	end

	def putToBed
		puts 'You put ' + @name + ' to bed. It sleeps like an angelic fire-breathing monster.'
		@asleep = true
		3.times do
			if @asleep
				puts 'zzzzzzzzzzzz'
				passageOfTime
			end
		end
		if @asleep
			puts @name + ' starts to wake up...'
			@asleep = false
			puts '...and is now awake.'
		end
	end

	def hungry?
		@stuffInBelly <= 2
	end

	def needsAPoo?
		@stuffInIntestines >= 8
	end

	def passageOfTime
		if @stuffInBelly > 0
			@stuffInBelly = @stuffInBelly - 1
			@stuffInIntestines = @stuffInIntestines + 1
		else
			if @asleep
				@asleep = false
				puts 'Your dragon wakes up suddenly!'
			end
			puts @name + ' is starved and angry and breathing fire and roasting you and yep, good god, it just ate you!'
			exit
		end
		if @stuffInIntestines >= 10
			@stuffInIntestines = 0
			if @asleep
				@asleep = false
				puts 'Oh god. Your dragon just shat in the bed. What a terrible mess.'
			else 
				puts 'Oh god. Your dragon just shat everywhere. What a terrible mess.'
			end
			exit
		end
		if hungry?
			if @asleep
				@asleep = false
			end
			puts @name + '\'s stomach is rumbling like an earthquake. It looks like it may eat you some time soon!'
		end
		if needsAPoo?
			if @asleep
				@asleep = false
			end
			puts @name + ' looks like it kind of needs the toilet... soon!'
		end
	end

end

puts 'Hello, would you like to have a dragon?'
response = gets.chomp.downcase
if response == 'yes'
	puts 'Great. What would you like to call it?'
	dragon = gets.chomp.capitalize
	dragon = Dragon.new dragon
	puts 'Excellent. A beautiful baby dragon!'

	command = ''
	while command.downcase != 'terminate'
		puts 'What would you like to do with it? You could feed it, walk it or put it to bed...'
		command = gets.chomp.downcase
			if (command == 'feed it' or command == 'feed')
				puts 'Excellent. What would you like to feed it?'
				food = gets.chomp
				puts dragon.feed food
			elsif (command == 'walk it' or command == 'walk')
				location = ''
				while location != 'park' and location != 'the park' and location != 'woods' and location != 'the woods'
					puts 'Where would you like to walk it? The park or the woods?'
					location = gets.chomp.downcase
					if (location == 'park' or location == 'the park')
						puts dragon.walk 'park'
					elsif (location == 'woods' or location == 'the woods')
						puts dragon.walk 'woods'
					else 
						puts 'Sorry, you can\'t take your dragon there.'
					end
				end
			elsif command == 'put it to bed'
				puts 'Excellent.'
				puts dragon.putToBed
			else
				puts 'Sorry, I didn\'t understand that. Try again. Or if you want to terminate your parental responsibilities please tell me so.'
			end
	end				
else
	puts 'Oh well. I can\'t help you then.'
end