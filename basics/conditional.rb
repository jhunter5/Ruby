flag = true

# basic if statement

if flag == true
  puts "Condition is true"
end


#if statement in one line

puts "Condition is true" if flag == true

puts "This is true" if 3+2 == 5  #it can be alsoa an operation


# if else statement

under_atack = false

if under_atack == true
  puts "We are under attack"
else
  puts "We are safe"
end

# ruby has the usual operators, like <, >, <=, >=, ==, !=

# eql? is a method that compares two objects and returns true if they are the same type and have the same value

puts 5.eql?(5.0) # false
puts 5.eql?(5) # true

# equal? is a method that compares two objects and returns true if they are the same object (point to the same reference)

a = 5
b = 5

puts a.equal?(b) # true

string1 = "hello"
string2 = "hello"

puts string1.equal?(string2) # false

# spaceship operator

puts 5 <=> 10 # -1


# logical operators

puts true && true # true # its evaluated from left to right, if the first is false, the second is not evaluated

puts true && false # false

puts true || false # true # its evaluated from left to right, if the first is true, the second is not evaluated

puts false || false # false 

puts !true # false # negation


# case statement (work as an switch case)

grade = 3

did_i_pass = case grade
  when 5
    "You are genius"
  when 4
    "You are good"
  when 3
    "You are not good"
  when 2
    "You are bad"
  when 1
    "You are very bad"
  else
    "Invalid grade"
end # as soon as one of the conditions is true, the rest of the conditions are not evaluated


#unless statement

age = 16
unless age < 17
    puts "Get a job"
end

number = 4
unless number == 10
    puts "The number is not equal to 10"
end

# ternary operator

bank_account = 500
price_car = 1000

can_i_buyit = price_car < bank_account ? "Buy the car" : "Do not buy the car"

puts can_i_buyit


