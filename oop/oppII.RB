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

# mixing in modules

module Flyable
  def fly
    "I'm flying"
  end
end

module Swimmable
  def swin
    "I'm swimming"
  end
end


class Bird
  include Flyable
end

class Fish
  include Swimmable
end

class Duck < Bird
  include Swimmable
end

class Penguin < Bird
  include Swimmable
end

class Seaplane
  include Flyable
  include Swimmable # ruby will search in the last module mixed
end

peny = Penguin.new
puts peny.swin

# inheritance

puts Penguin.ancestors
puts "----- Division -----"
puts Seaplane.ancestors


#namespaces

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end


dog = Mammal::Dog.new
dog.speak("Guau")
# dog.say_name("firulais") # error

# method access control
