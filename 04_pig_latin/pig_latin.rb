def translate(message)
  array = message.split(' ')
  new_array = []
  if array.length == 1
    return translate_word(array[0])
  else
    array.each do |word|
      new_array << translate_word(word)
    end
    return new_array.join(" ")
  end
end

def translate_word(word)
  vowels = ["a", "e", "i", "o", "u", "y"]
  if vowels.include?(word[0])
    new_word = word + "ay"
  else
    new_word = move_consonant(word) + "ay"
  end
  #will delete this for next push actually i'll leave it
  # if word.start_with?("a")
  #   new_word = word + "ay"
  # elsif word.start_with?("e")
  #   new_word = word + "ay"
  # elsif word.start_with?("i")
  #   new_word = word + "ay"
  # elsif word.start_with?("o")
  #   new_word = word + "ay"
  # elsif word.start_with?("u")
  #   new_word = word + "ay"
  # elsif word.start_with?("y")
  #   new_word = word + "ay"
  # else
  #   new_word = move_consonant(word) + "ay"
  # end
end

def move_consonant(word)
  vowels = ["a", "e", "i", "o", "u", "y"]
  word_array = word.split("")
  suffix = []
  until vowels.include?(word_array[0])
    if word_array[0] == "q" && word_array[1] =="u"
      suffix << word_array[0]
      suffix << word_array[1]
      2.times {word_array.delete_at(0)}
    else
      suffix << word_array[0]
      word_array.delete_at(0)
    end
  end
transformed_word = word_array.join + suffix.join
end
