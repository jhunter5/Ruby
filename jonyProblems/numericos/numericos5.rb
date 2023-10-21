def potencia(number, exponente)
    if exponente == 0
        return 1
    elsif exponente == 1
        return number
    else
        return number * potencia(number, exponente - 1)
    end
end

puts potencia(2, 0)