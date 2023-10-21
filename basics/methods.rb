def prime?(number)
    return false if number <= 1
    Math.sqrt(number).to_i.downto(2).each do |i|
        return false if number % i == 0
    end
    true
end


puts prime?(120)


# implicit return and explicit return

# implicit return

def add(a, b) # the last achieved value is returned
    a + b
end

add(1, 2) # => 3

# explicit return

def add(a, b)
    return a + b # return keyword is used
end

add(1, 2) # => 3


# chaining methods

string = "dlrow olleh"

puts string.reverse.upcase # => "HELLO WORLD"

# predicate methods , they return true or false

2.even? # => true

# bang methods, they modify the object itself

string = "hello world"
string.upcase! # => "HELLO WORLD"

puts string


