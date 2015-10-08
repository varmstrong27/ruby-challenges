class Ferret

	@@total_ferrets = 0

	def initialize
		@@total_ferrets +=1
	end

	def self.current_count
		puts "There are currently #{@@total_ferrets} instances of my Ferret class."
	end

	def set_name=(ferret_name)
		@name = ferret_name
	end
end

my_ferret = Ferret.new
Ferret.current_count
puts Ferret.inspect
puts my_ferret.inspect

another_ferret = Ferret.new
Ferret.current_count
puts Ferret.inspect
puts another_ferret.inspect
