def number_to_ordinal(number)
  digit = number.to_s.chars.last
  if number.to_s.chars[-2] != "1" and digit.to_i < 4
    if digit == "1"
      ending = "st"
    elsif digit == "2"
      ending = "nd"
    elsif digit == "3"
      ending = "rd"
    end
  else 
    ending = "th"
  end
  if number > 0
    number.to_s + ending
  else
    "0"
  end
end

puts number_to_ordinal(0)