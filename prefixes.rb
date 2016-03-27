def condition?(x, prefix)

  prefixes = { "ym" => 10 ** 24,
               "zm" => 10 ** 21,
               "em" => 10 ** 18,
               "pm" => 10 ** 15,
               "tm" => 10 ** 12,
               "gm" => 10 ** 9,
               "mm" => 10 ** 6,
               "km" => 10 ** 3  }

  x / prefixes[prefix] >= 1

end

def output(y, prefix)

  prefixes = { "ym" => 10 ** 24,
               "zm" => 10 ** 21,
               "em" => 10 ** 18,
               "pm" => 10 ** 15,
               "tm" => 10 ** 12,
               "gm" => 10 ** 9,
               "mm" => 10 ** 6    }

  y % prefixes[prefix] == 0 ? (y / prefixes[prefix]).to_s + prefix.capitalize : (y.to_f / prefixes[prefix]).to_s + prefix.capitalize

end

def meters(x)
               
  if condition?(x, "ym")
    output(x, "ym")
  
  elsif condition?(x, "zm")
    output(x, "zm")
  
  elsif condition?(x, "em")
    output(x, "em")
  
  elsif condition?(x, "pm")
    output(x, "pm")
  
  elsif condition?(x, "tm")
    output(x, "tm")
  
  elsif condition?(x, "gm")
    output(x, "gm")
  
  elsif condition?(x, "mm")
    output(x, "mm")
  
  elsif condition?(x, "km")
    x % 1000 == 0 ? (x / 1000).to_s + "km" : (x.to_f / 1000).to_s + "km"
  
  else
    x.to_s + "m"
  
  end
    
end

puts meters(900000000000000000000000000000000)