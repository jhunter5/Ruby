# .each method, iterates through each element in an array and waits for a block to be passed in

array = ["apple", "microsft", "google", "facebook"]

array.each { |company| puts company }


billionaire_companies = {"Bill Gates" => "Microsoft", "Warren Buffet" => "Berkshire Hathaway", "Jeff Bezos" => "Amazon"}

billionaire_companies.each do |billionaire, company|
    puts "#{billionaire} is a billionaire who founded #{company}"
end

# .map method, iterates through each element in an array and returns a new array with the results of running the block for each element

billionaire_fortune = {:bill_gates => 100000000000, :warren_buffet => 90000000000, :jeff_bezos => 200000000000}

billionaire_fortune_to_cop = billionaire_fortune.map { |billionaire, fortune| [billionaire, fortune * 3875] }.to_h

puts billionaire_fortune_to_cop


# select method, iterates through each element in an array and returns a new array with the elements that return true from the block

friends = ["Tibu", "Dan", "Omar", "Restrepo", "Adames"]

friends_without_tibu = friends.select { |friend| friend != "Tibu" }

puts friends_without_tibu

#reduce method, iterates through each element in an array and returns a single value

numbers = [1, 2, 3, 4, 5]

sum = numbers.reduce(0) { |total, number| total + number } # 0 is the initial value of total, total is the accumulator
