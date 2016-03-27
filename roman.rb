def solution(number)
  
hundreds = ['C','CC','CCC','CD','D','DC','DCC','DCCC','CM']
tens = ['x','xx','xxx','xL','L','LX','LXX','LXXX','XC']
digits = ['I','II','III','IV','V','VI','VII','VIII','IX']

  to_write = number/1000
  left = number - (to_write*1000)
  if to_write > 0
  	answer = 'M' * to_write
  end
  
  to_write = left/100
  left = left - (to_write*100)
  if to_write > 0
	answer = answer + hundreds[to_write-1]
  end

  to_write = left/10
  left = left - (to_write*10)
  if to_write > 0
  	answer = answer + tens[to_write-1]
  end

  if left > 0
  	answer = answer + digits[left-1]
  end

puts answer

end

solution(1100)