def translate(word)
  if word.start_with?("a")
    new_word = word + "ay"
  elsif word.start_with?("e")
    new_word = word + "ay"
  elsif word.start_with?("i")
    new_word = word + "ay"
  elsif word.start_with?("o")
    new_word = word + "ay"
  elsif word.start_with?("u")
    new_word = word + "ay"
  else
    move_consonant(word)
  end
end

def move_consonant(word)
  word_array = word.split("")
  while word_array[0].downcase != "a" || "e" || "i" || "o" || "u"
    

  end

translate("cherry")
