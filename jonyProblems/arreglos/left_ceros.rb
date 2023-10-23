def left_zeros(array)
  zeros = array.select { |element| element == 0 }
  non_zeros = array.reject { |element| element == 0 }
  non_zeros + zeros
end

array = [1, 6, 0, 7, -3, 8, 0, -2, 11]
p left_zeros(array)

array = [0, 11, 36, 10, 0 , 17, -23, 81, 0, 0, 12, 11,0]
p left_zeros(array)
