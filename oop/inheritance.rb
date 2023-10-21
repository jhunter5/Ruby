class Animal
  def speak
    "animal sound"
  end

end

class Dog < Animal
  def speak
    "woof"
  end
end


class Cat < Animal

end

dog = Dog.new
cat = Cat.new
puts dog.speak
puts cat.speak

# Using Super

class Dog < Animal
  def speak
    super + " woof"
  end
end

lucky = Dog.new
puts lucky.speak

# Using Super with initialize

class Animal
  def initialize(name)
    @name = name
  end
end

class Dog < Animal
  def initialize(race, name)
    super(name)
    @race = race
  end
end

p Dog.new("Labrador", "Lucky")
