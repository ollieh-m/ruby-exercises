def convertFracts(list)
  denominator = 1
  array = []
  until array.length == list.length
    array = []
    list.each do |fraction|
      if denominator % fraction[1] == 0
        array.push(fraction[1])
      end
    end
    denominator = denominator + 1
  end
  denominator = denominator - 1
  list.map do |fraction|
    fraction[0] = (fraction[0] * denominator)/fraction[1]
    fraction[1] = denominator
  end
  list
end

def commonDenominator(list)
  largest_den = list.inject(list[0][1]) { |memo,denom| denom[1] > memo ? denom[1] : memo }
  denominator = largest_den
  until list.all? { |x| denominator % x[1] == 0 }
    denominator = denominator + largest_den
  end
  list.map do |fraction|
    fraction[0] = (fraction[0] * denominator)/fraction[1]
    fraction[1] = denominator
  end
  list
end


puts commonDenominator([[1,2],[1,3],[1,4]])
puts commonDenominator([[7,8],[121,345],[56,20]])