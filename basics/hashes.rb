# They are like dictionaries in Python

# create hash

my_hash = {
    "name" => "Juan",
    "secondName" => "Hunter"
}

another_hash = Hash.new

hash_are_flexible = {9 => "nine", 6 => "six"}


# obatin values from a hash

puts my_hash["name"] # => "Juan"
puts my_hash["age"] # => nil
puts my_hash.fetch("age", "unknown") # => "unknown"


# add or modify values

my_hash["age"] = 26

puts my_hash["age"] # => 26

my_hash["age"] = 27

puts my_hash["age"] # => 27


my_hash["sex"] = nil # it's not a good practice to do this

my_hash.delete("sex")


# hash with symbols

my_hash_evolved = {
    :name => "Juan",
    :secondName => "Hunter",
    :age => 20
}