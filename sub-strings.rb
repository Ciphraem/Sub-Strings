# sub-strings.rb for the Sub Strings project from The Odin Project

# First, make a dictionary array. (Bonus: multiple options in the beginning if they would like to add words to the dictionary.)
# Second, make the #substrings method as per instruction. It needs to take the user input as first argument and the dictionary file as the second argument.
#   - returns a hash of all words in the user input (even words you can find inside words) with count value
#   - making sure it can handle multiple words for the user input
# Third, print the hash of words and count value

def substrings (input, dictionary)
    substring = Hash.new(0)
    input.each do |input_word|
        dictionary.inject(substring) do |count, dict_word|
            count[dict_word] += 1 if input_word.include?(dict_word)
            count
        end
    end
    substring
end

puts "Welcome to Sub Strings! Enter the word/words: "
input = gets.chomp.downcase.split(" ")

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings(input, dictionary)