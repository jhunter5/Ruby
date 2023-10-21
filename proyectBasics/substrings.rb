dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings (string, dictionary)
    string = string.downcase
    string = string.split(" ") #split the string into an array of words
    answer = Hash.new(0)
    string.each do |word| #for each word in the string
        dictionary.each do |dic| #for each word in the dictionary
            if word.include?(dic) #if the word in the string includes the word in the dictionary
                answer[dic] += 1
            end
        end
    end
    return answer
end


puts substrings("below", dictionary)

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
