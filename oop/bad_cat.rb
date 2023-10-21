module Speak #module is a container for methods, constants, and other modules
    def speak(sound)
        puts "#{sound}"
    end
end 

class BadCat
    include Speak #with include, all the methods of the module become available as instance methods
end

class GoodDog
    include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")


melasa = BadCat.new
melasa.speak("meow")

