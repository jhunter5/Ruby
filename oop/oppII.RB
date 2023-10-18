# Class methods

class Tower
  def initialize(name, height, floors)
    @name = name
    @height = height
    @floors = floors
  end

  def self.what_am_i
    "im a tower!"
  end
end

puts Tower.what_am_i


# Class variables

class Dog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end


  def self.total_number_of_dogs
    @@number_of_dogs
  end
end


dog1 = Dog.new
dog2 = Dog.new

puts Dog.total_number_of_dogs


#constants

class Dolar
  TO_EURO = 0.9

  def initialize(amount)
    @amount = amount
  end

  def to_euro
    @amount * TO_EURO
  end
end


dolar = Dolar.new(100)
puts dolar.to_euro

puts dolar
p dolar
