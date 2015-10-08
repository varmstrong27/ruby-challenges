class Person

	def set_name=(full_name)
		@full_name = full_name
	end

	def get_name
		return @full_name
	end

	def birth_date=(birth_date)
		@birth_date = birth_date
	end

	def get_birth_date
		return @birth_date
	end

end

class Employee < Person

	def set_job=(job_title)
		@job_title = job_title
	end

	def get_job
		return @job_title
	end

	def hire_date=(hire_date)
		@hire_date = hire_date
	end

	def get_hire_date
		return @hire_date
	end

end

class Student < Person

	def set_class_standing=(class_standing)
		@class_standing = class_standing
	end

	def get_class_standing
		return @class_standing
	end

end

employee1 = Employee.new
employee1.set_name= "Grace Hopper"
employee1_name = employee1.get_name
employee1.set_job= "programmer"
employee1_job = employee1.get_job
puts "#{employee1_name} was a pioneer #{employee1_job}."

student1 = Student.new
student1.set_name= "Marie Curie"
student1_name = student1.get_name
student1.set_class_standing= "senior"
student1_class_standing = student1.get_class_standing
puts "#{student1_name} is a #{student1_class_standing}."

puts employee1.inspect
puts student1.inspect
