def clock &hourly_gong
	currentHour = Time.now.hour
	if currentHour > 12
		currentHour = currentHour - 12
	end
	currentHour.times do
		hourly_gong.call
	end
end

clock do
	puts 'GONG!'
end