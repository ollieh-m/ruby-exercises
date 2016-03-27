def round_to_next_5(n)
  basis = (n / 5) * 5
  if n > basis
    basis = basis + 5
  end
  basis
end

puts round_to_next_5(5)