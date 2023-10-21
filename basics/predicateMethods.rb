# include methods for predicate logic


array = [1, 14, 156, 129, 1, 4, 234, 5]

array.include?(156) # true
array.include?(100) # false

# any? method, returns true if any element in the array returns true from the block

def prime?(number)
    return false if number <= 1
    Math.sqrt(number).to_i.downto(2).each do |i|
        return false if number % i == 0
    end
    true
end


puts array.any? { |number| prime?(number) } 

# all? method, returns true if all elements in the array return true from the block

def primes_less_than(n)
    (2...n).select { |number| prime?(number) }
end

all_primes = primes_less_than(100)

puts all_primes.all? { |number| prime?(number) } 

def no_primes_less_than(n)
    no_primes = []
    (2...n).each do |number|
      no_primes.push(number) unless prime?(number)
    end
    return no_primes

    # (2..n).select { |number| prime?(number) }.none? (this also works but its not very readable)
end 

puts no_primes_less_than(50).all? { |number| !prime?(number)}
puts primes_less_than(50).all?  { |number| !prime?(number) }


# none? method, returns true if none of the elements in the array return true from the block

puts no_primes_less_than(50).none? { |number| prime?(number) } # true because there are no primes less than 50
puts primes_less_than(50).none? { |number| prime?(number) } # false because there are primes less than 50





