def findSum(*apples)
	sum = 0
	apples.each do |x|
		sum = sum + x
	end
	sum
end

puts findSum(1,2,3,7,9)