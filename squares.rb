def all_squared_pairs(num) 
 answer = []
 a = 0
 while a <= num**0.5
   b = 0
   while b <= num**0.5
     if (a**2 + b**2 == num and not answer.include?([b,a]))
       answer.push([a,b])
     end
     b = b + 1
   end
   a = a + 1
 end
 answer
end

def all_squared_pairs_2(num) 
 answer = []
 (0..(num/2)).each do |i|
   if (i**0.5 % 1 == 0 and (num-i)**0.5 % 1 == 0)
     answer.push([(i**0.5).to_i, ((num-i)**0.5).to_i])
   end
 end
 puts answer
end

def all_squared_pairs_3(num)
	answer = []
	a = 0
	while a <= num**0.5
		if ((num-(a**2)) ** 0.5 % 1 == 0 and not answer.any?{ |x| x[1] == a })
			answer.push([a,((num-(a**2))**0.5).to_i])
		end
	a = a + 1
	end
	puts answer
end

all_squared_pairs_3(200)
