person1 = {first: "Ollie",last: "H-M"}
person2 = {first: "Laura",last: "Keeling"}
person3 = {first: "Cally",last: ""}
params = {me: person1,wife: person2,dog: person3}

puts params[:me][:first]
puts params[:wife][:last]
puts params[:dog][:last]

params2 = {:person4=>{:first=>"Lindsay",:last=>"Camp"},:person5=>{:first=>"Anna",:last=>"Keeling"},:person6=>{:first=>"Alber",:last=>""}}
puts params2[:person5][:last]

puts ({"a" => 100, "b" => 200}.merge({ "b" => 300 }))
