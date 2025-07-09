# sub-strings.rb for the Sub Strings project from The Odin Project

# First, make a dictionary array. (Bonus: multiple options in the beginning if they would like to add words to the dictionary.)
# Second, make the #substrings method as per instruction. It needs to take the user input as first argument and the dictionary file as the second argument.
#   - returns a hash of all words in the user input (even words you can find inside words) with count value
#   - making sure it can handle multiple words for the user input
# Third, print the hash of words and count value

# require 'json'      # for storing words in a JSON file

# def add_to_d (new_word)                                       still in the works
#     p new_word                                                I want to know how to store data
#     new_word.map! {|word| word.gsub(/[^a-z ]/, "")}           locally within the folder.
#     p new_word

#     dump = JSON.dump(new_word)
#     if !File.exist?("./data/dictionary.json")
#       File.new("./data/dictionary.json", "r+")
#     end
#     File.write("./data/dictionary.json", dump)
#     # dictionary = File.new("./data/dictionary.json")
# end

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

puts "Hi! Welcome to Sub Strings! What would you like to do?"
puts "1 = Add a new word to the dictionary || 2 = Check your string"
input = gets.chomp

while input != "2"
    if input == "1"
        puts "\nStill in the works. Will add soon."
        puts "Want to check your string instead? Y/N"
        input = gets.chomp.downcase
        break
    end
    puts "Invalid option. Please enter 1 or 2."
    puts "1 = Add a new word to the dictionary || 2 = Check your string"
    input = gets.chomp
end

if input == "2" || input == "y"
    puts "\nEnter the word/words: "
    check_word = gets.chomp.downcase.split(" ")
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    p substrings(check_word, dictionary)
# elsif input == "1"
    # puts "\nWhat word would you like to add?"
    # new_word = gets.chomp.downcase.split(" ")
    # add_to_d(new_word)
end