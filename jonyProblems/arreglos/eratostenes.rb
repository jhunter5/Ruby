
def criba_eratostenes(n)
    criba = Array.new(n+1, true) #creamos la criba con n+1 elementos, todos true
    criba[0] = criba[1] = false

    criba.each_with_index do |es_primo, number| #number es el indice
        if es_primo #si es primo
            (number*number..n).step(number) do |multiplo| #multiplo es el indice
                criba[multiplo] = false
            end
        end
    end
    
    criba.each_with_index.map { |es_primo, number| es_primo ? number : nil }.compact # compact elimina los nil
end


p criba_eratostenes(100)
