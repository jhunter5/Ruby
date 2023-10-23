def average_elemets(array)
  total = 0

  array.each do |number|
    total += number
  end

  average = total / array.length

end


array = [12, 23, 34, 45, 56, 67, 78, 89, 90, 100]
puts average_elemets(array)
