def Dragon n, string='Fa'
  if n > 0
    array = string.chars.map do |letter|
      if letter == 'a'
        'aRbFR'
      elsif letter == 'b'
        'LFaLb'
      else
        letter
      end
    end
    string = array.join('')
    Dragon n-1, string
  else
    string = string.gsub(/a/,'')
    string = string.gsub(/b/,'')
  end
end

puts Dragon(0)