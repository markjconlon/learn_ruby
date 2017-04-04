def echo(saying)
  "#{saying}"
end

def shout(shouted)
  "#{shouted.upcase}"
end

def repeat(repeater, num = 2)
  str = "#{repeater}"
  (num - 1).times do
    str += " #{repeater}"
  end
  str
end

def start_of_word(word, num = 1)
  word.slice(0, num)
end

def first_word(str)
  array = str.split(" ")
  array[0].to_s
end

#need to rewrite for exceptions "little words"
def titleize(str)
 str.split.map(&:capitalize)*' '
end
