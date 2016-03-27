def calculateHypotenuse(a,b)
  if a > 0 and b > 0
    (((a.to_f**2) + (b.to_f**2)) ** 0.5).round(3)
  else
    "Exception"
  end
end

puts calculateHypotenuse(1,1)

