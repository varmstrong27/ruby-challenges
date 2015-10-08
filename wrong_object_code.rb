class Ferret						#Class name should be capitalized
 
	def set_name=(ferret_name)		#No space between = in method name
		@name = ferret_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)		#Since each class has set_owner and get_owner
		@owner_name = owner_name	#methods, an Owner class can be created that
	end								#each of these classes could inherit
 
	def get_owner					
		return @owner_name
	end
 
	def squeal
		return "squeeeeee"
	end
 
end
 
class Chinchilla
 
	def set_name=(chinchilla_name)
		@name = chinchilla_name
	end

	def get_name					#No get_name method
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end
 
	def squeek
		return "eeeep"
	end
 
end
 
class Parrot
 
	def set_name=(parrot_name)
		@name = parrot_name			#Should be parrot_name
	end
 
	def get_name
		return @name
	end
 
	def set_owner=(owner_name)
		@owner_name = owner_name
	end
 
	def get_owner
		return @owner_name
	end

	def tweet						#No tweet method
		return "tweeeet"
	end
 
end
 
my_ferret = Ferret.new
my_ferret.set_name= "Fredo"
ferret_name = my_ferret.get_name	#Naming convention uses _
 
my_parrot = Parrot.new
my_parrot.set_name= "Budgie"
parrot_name = my_parrot.get_name	#Naming convention uses _
 
my_chinchilla = Chinchilla.new
my_chinchilla.set_name= "Dali"
chinchilla_name = my_chinchilla.get_name	#Naming convention uses _
 
puts "#{ferret_name} says #{my_ferret.squeal}, 
#{parrot_name} says #{my_parrot.tweet}, 
and #{chinchilla_name} says #{my_chinchilla.squeek}."
 
puts my_ferret.inspect
puts my_parrot.inspect
puts my_chinchilla.inspect
