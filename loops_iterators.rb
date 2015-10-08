behavior = "y"
while (behavior == "y")
	puts "I love you"
	puts "Have you been good? (y or n)"
	behavior = gets.chomp.downcase
end
