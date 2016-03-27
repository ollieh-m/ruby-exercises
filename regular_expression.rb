"ab23ab"[/(\D+)(\d+)(\D+)/]
first = $1
second = $2
third = $3
puts "#{first} then #{second} then #{third}"