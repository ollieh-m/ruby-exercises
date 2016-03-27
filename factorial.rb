def factorial(n)
  answer = n
  while n > 1
    answer = answer * (n-1)
    n = n-1
  end
  answer
end

puts factorial(4)