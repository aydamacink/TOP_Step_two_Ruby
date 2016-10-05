#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, number = 2)
  ([word] * number).join ' '
end

def start_of_word(word, number_of_letters)
  word[0..(number_of_letters - 1)]
end

def first_word(input)
  input.split(" ").first
end

def titleize(input)
  words = input.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
