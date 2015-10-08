class Person

	attr_accessor :name, :birth_date

end

class Employee < Person

	attr_accessor :job_title, :hire_date

end

class Student < Person

	attr_accessor :class_standing

end

employee1 = Employee.new
employee1.name= "Grace Hopper"
employee1_name = employee1.name
employee1.job_title= "programmer"
employee1_job = employee1.job_title
puts "#{employee1_name} was a pioneer #{employee1_job}."

student1 = Student.new
student1.name= "Marie Curie"
student1_name = student1.name
student1.class_standing= "senior"
student1_class_standing = student1.class_standing
puts "#{student1_name} is a #{student1_class_standing}."

puts employee1.inspect
puts student1.inspect
