# create array

new_array = []
new_array = [1, 2, 3, 4, 5]
another_array = ["This", "is", "an", "array", "of", "strings"]

#another way

new_array = Array.new

# another_array = Array.new(6) # creates an array with 6 nil values

another_other_array = Array.new(6, "hello") # creates an array with 6 "hello" values


# Accessing array elements
another_array[0] # => "This"
another_array.first # => "This"
another_array.last # => "strings"


# Adding elements to an array

friends_array = [] #No one is my friend :(

friends_array.push("Jesus") # wtf jesus has become my friend! :D (shhh, don't tell anyone, but I'm a fanboy) #push adds an element to the end of the array

friends_array << "Elon" # Elon is my friend too! :D 

friends_array << "Bill" << "Steve" # Bill and Steve are my friends too! :D

friends_array.unshift("judas") # judas??? wtf? why is he my friend? :O #unshift adds an element to the beginning of the array

friends_array.shift # judas is not my friend anymore  :3

puts friends_array # => ["Elon", "Bill", "Steve"]


# addign an substracting arrays

#friend of a friend is my friend

friend_friends_array = ["Mark", "Larry", "Tim"]

friends_array += friend_friends_array # => ["Elon", "Bill", "Steve", "Mark", "Larry", "Tim"]

# enemies of my friends are my enemies

enemy_array = ["Tim"]

friends_array -= enemy_array # => ["Elon", "Bill", "Steve", "Mark", "Larry"]



