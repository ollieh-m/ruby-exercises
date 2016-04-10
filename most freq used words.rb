def top_3_words(text)
  words = text.scan(/[a-zA-Z]+[a-zA-Z']*/).map{|word| word.downcase}
  words_hash = Hash[words.map{ |word| [word,words.count(word)] }]
  most_frequent = []
  i = 1
  until words_hash.empty? or i == 4
    line_up = []
    words_hash.each do |word,count|
       if words_hash.values.max == count
         line_up << word
       end
    end
    most_frequent << line_up.first
    words_hash.delete(most_frequent.last)
    i += 1
  end
  most_frequent
end