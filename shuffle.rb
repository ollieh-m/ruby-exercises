def number_shuffle(number)
  array = number.to_s.split('')
  options = []
  factorial = 1
  for i in (1..array.length) { factorial *= i }
  until options.length == factorial
    options.push(array.shuffle.join('').to_i)
    options = options.uniq
  end
  options.sort
end
