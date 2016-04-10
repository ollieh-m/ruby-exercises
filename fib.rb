def fib(n)
	ary = []
	if n == 0
		return [0]
	elsif n == 1
		return [0,1]
	else
		ary += fib(n-1)
		ary += [ary[-1] + ary[-2]]
		ary
	end
end

p fib(7)