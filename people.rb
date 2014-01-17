class Person

	def initialize(name)
		@name = name
	end


	def greeting 
	puts "Hi, my name is #{@name}"
	end
end

class Student < Person
	
	def learn 
	puts "I get it"
	end
end

class Instructor < Person
	
	def teach
	puts "Everything in Ruby is an Object"
	end
end

 cristina = Student.new("Cristina")
 chris = Instructor.new("Chris")

chris.greeting
chris.teach

cristina.greeting
cristina.learn


 # calling the teach method on student will return undefined method 'teach' because it wasn't defined within the the student class






