def one(operation = nil)
	if operation == nil
		1
	else
		1.send(operation[0],operation[1])
	end
end

def plus(value)
	[:+,value]
end

puts one(plus(one))