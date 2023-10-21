# instance variables are responsible for keeping track of information about the state of an object



class UniversityStudent
    attr_accessor :department, :age, :grade, :stamina #attr_accesor is a ruby method that creates getter and setter methods for us

    def initialize(name, department, age, grade, stamina) #initialize is a method that gets triggered whenever we create a new object
        puts "#{name} its alive!"
        @name = name
        @department = department
        @age = age
        @grade = grade
        @stamina = stamina
    end

    def name #getter method, are used to access instance variables
        @name
    end

    def name=(new_name) #setter method, are used to set instance variables
        @name = new_name
    end

    def suffer
        @stamina -= 1
    end

    def party
        @stamina += 1
    end

end

student1 = UniversityStudent.new("John", "Computer Science", 20, 3.5, 100)
puts student1.name
student1.name = "jhunter"
puts student1.name

puts student1.department