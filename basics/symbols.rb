name = gets.chomp
puts "hello #{name}"

# scope of variables 

# function scope

def say_hello
    name2 = "hunter"
    puts "hello #{name2}"
end

say_hello

# puts name2 # this will throw an error, because name2 is not defined in this scope

# block scope
total = 0
[1,2,3].each do |i|
    total += i
end

puts total
# puts i # this will throw an error, because i is not defined in this scope

# variable types

#constants
MY_NAME = "hunter"

