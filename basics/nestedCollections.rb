# nested arrays (matrix)

nested_array = [[1,2,3],[4,5,6],[7,8,9]]

# acessing elements

puts nested_array[2][1] # 8

# accesing using [row][column] notation can produce nomethod errors

# puts nestedArray[3][1] # nomethod error

# to avoid this use dig method

puts nested_array.dig(3,1) # nil

# create nested array using Array.new

another_nested_array = Array.new(3) { Array.new(3) } # 3x3 array

another_nested_array[0][0] = 1

puts (another_nested_array[0][0]).inspect # 1

# adding elements to nested arrays

another_nested_array[0].push(2) # [1,2]
another_nested_array[1].push("hi") # ["hi"]
another_nested_array[2].push(3.0) # [3.0]

puts another_nested_array.inspect # [[1,2],[hi],[3.0]]  like yu will see now our array is an 3X4 array

# using << operator

another_nested_array << ["A", "le", "lu", "ya"]

puts another_nested_array.inspect # [[1,2],[hi],[3.0],["A", "le", "lu", "ya"]]

another_nested_array[0] << "bigger"

puts another_nested_array.inspect 

# removing elements from nested arrays

another_nested_array[0].pop # "bigger"

puts another_nested_array.inspect # [[1,2],[hi],[3.0],["A", "le", "lu", "ya"]]

another_nested_array.pop

puts another_nested_array.inspect # [[1,2],[hi],[3.0]]

# iterating over nested arrays

student_grades = [[["Bob", 80], ["Alice", 90], ["Carol", 95]], [["Dave", 100], ["Elle", 90], ["Frank", 95]]]

student_grades.each do |classroom|
    classroom.each do |student|
        puts "#{student[0]}: #{student[1]}"
    end
end

# nested hashes

vehicles = {
    hunter: {year: 2016, make: "Audi", model: "R8"},
    camilo: {year: 2017, make: "BMW", model: "M3"}, 
    le_conch: {year: 2018, make: "Mercedes", model: "AMG"},
    omar: {year: 2019, make: "Porsche", model: "911"},
    restrepo: {year: 2020, make: "Lamborghini", model: "Huracan"},
    gus: {year: 2021, make: "Ferrari", model: "F8"}
}


# accessing elements

puts vehicles[:hunter][:model] # R8

# adding elements

vehicles[:hunter][:color] = "black"
vehicles[:nigel] = {year: 2022, make: "Tesla", model: "Roadster"}


# removing elements

vehicles.delete(:le_conch)

puts vehicles.inspect


# methods

# select

puts vehicles.select { |k,v| v[:year] > 2018 }


