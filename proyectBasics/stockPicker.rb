def find_max_crossing_subarray(array, low, mid, high)
  left_sum = -Float::INFINITY
  sum = 0
  max_left = 0
  max_right = 0
  (low..mid).reverse_each do |i|
    sum += array[i]
    if sum > left_sum
      left_sum = sum
      max_left = i
    end
  end
  right_sum = -Float::INFINITY
  sum = 0
  (mid + 1..high).each do |j|
    sum += array[j]
    if sum > right_sum
      right_sum = sum
      max_right = j
    end
  end
  [max_left, max_right, left_sum + right_sum]
end 


def find_max_subarray(array, low, high)
    if high == low
        return [low, high, array[low]]
    else mid = ((low + high)/2)
        left_low, left_high, left_sum = find_max_subarray(array, low, mid)
        right_low, right_high, right_sum = find_max_subarray(array, mid + 1, high)
        cross_low, cross_high, cross_sum = find_max_crossing_subarray(array, low, mid, high)
        if left_sum >= right_sum && left_sum >= cross_sum
            return [left_low, left_high, left_sum]
        elsif right_sum >= left_sum && right_sum >= cross_sum
            return [right_low, right_high, right_sum]
        else
            return [cross_low, cross_high, cross_sum]
        end
    end
end



# puts find_max_subarray([13,-3,-25, 20, -3, -16, -23, 18, 20, -7, 12, -5, -22, 15, -4, 7])



def stock_picker(prices)
  n = prices.length
  max_profit = 0
  buy_day = 0
  sell_day = 0
  
  min_price = prices[0]
  
  for i in 1..(n - 1)
    if prices[i] < min_price
      min_price = prices[i]
    elsif prices[i] - min_price > max_profit
      max_profit = prices[i] - min_price
      buy_day = prices.index(min_price)
      sell_day = i
    end
  end
  
  return [buy_day, sell_day]
end
  
  # Ejemplo de uso:
  prices = [17,3,6,9,15,8,6,1,10]
  result = stock_picker(prices)
  puts "Comprar en el día #{result[0]} y vender en el día #{result[1]} para obtener un beneficio de #{prices[result[1]] - prices[result[0]]}"
  