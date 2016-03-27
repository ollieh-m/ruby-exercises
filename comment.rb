def solution(input, markers)
  array = input.chars
  answer = Array.new.push(array[0])
  i = 1
  while i < array.length
    unless (markers.any? { |x| x == answer[-1] } and array[i] != "\n")
      answer.push(array[i])
    end
    i += 1
  end
  markers.each do |x|
  	answer.delete(x)
  end
  final_answer = ["\n"]
  i = answer.length - 1
  while i >= 0
  	unless (final_answer[-1] == "\n" and answer[i] == " ")
  		final_answer.push(answer[i])
  	end
  	i -= 1
  end
  final_answer.delete_at(0)
  puts "final answer after deleting spaces is #{final_answer.reverse}"
end