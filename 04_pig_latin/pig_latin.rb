#write your code here
require 'pry'
VOWELS = ["a", "e", "i", "o", "u"]
PHONEME = ["qu"]

def translate(input)
  words = input.split(" ")
  words.map! { |word| translate_single_words(word)}
  words.join(" ")
end

def translate_single_words(input)
  if find_beginning_qu_phonemes(input) > 0
    ((input.scan /\w/).rotate(find_beginning_qu_phonemes(input)) << "ay").join
  else
    (((input.scan /\w/).rotate(count_beginning_consonants(input))) << "ay").join
  end
end

def count_beginning_consonants(word)
  word_array = word.split(//)
  count = 0
  word_array.each do |c|
    break if VOWELS.include?(c)
    count += 1
  end
  count
end

def find_beginning_qu_phonemes(word)
  word_array = word.split(//)
  count = 0
  if ((word_array[0] == "q") && (word_array[1] == "u"))
    count += 2
    word_array.slice(0..1).join
  elsif  ((word_array[1] == "q") && (word_array[2] == "u"))
    count += 3
    word_array.slice(1..2).join
  end
  count
end
