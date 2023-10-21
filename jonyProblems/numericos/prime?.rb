def prime?(number)
    limit = Math.sqrt(number).to_i
    for i in 2..limit
        if number % i == 0
            return false
        end
    end
    return true
end

puts prime?(4)