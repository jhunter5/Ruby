def relative_prime?(a,b)
    for i in 2..a
        if a % i == 0 && b % i == 0
            return false
        end
    end
    return true
end

puts relative_prime?(6, 27)