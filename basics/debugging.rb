require 'pry-byebug'

# differences between puts and p
puts "using puts"
puts []
p "using p"
p []

# usign pry
def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")