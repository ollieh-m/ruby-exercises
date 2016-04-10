def append(ary,n)
	return ary if n < 0
	ary.push(n)
	append(ary,n-1)
	ary
end

def reverse_append(ary,n)
	return ary if n < 0
	ary.unshift(n)
	reverse_append(ary,n-1)
	ary
end

p reverse_append([],3)