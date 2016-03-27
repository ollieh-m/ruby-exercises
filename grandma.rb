puts 'Hello dear.'

reply = ''
bye = 0

while bye < 3

	reply = gets.chomp

	if reply == 'BYE'
		bye = bye + 1
		puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + ' I\'M AFRAID.'
	else
		if reply != reply.upcase
			puts 'WHAT?! SPEAK UP DEAR.'
			bye = 0
		else 
			puts 'NO, NOT SINCE ' + (1930 + rand(21)).to_s + ' I\'M AFRAID.'
			bye = 0
		end
	end

end

puts 'WELL IF YOU INSIST. BYE DEAR.'

