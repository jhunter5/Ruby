def suma_elementos(array)
  mid = array.length / 2

  if array.length == 1
     return array[0]
  else
    return suma_elementos(array[0..mid-1]) + suma_elementos(array[mid..-1])
  end

end


array = [1,2,3,4,5,6,7,8,9,10]
puts suma_elementos(array)
