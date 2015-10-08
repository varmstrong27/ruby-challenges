def always_three_method
	puts "Give me a number"
	number = gets.to_i
	puts "Always  #{((number + 5) * 2 - 4) / 2 - number}"
end

always_three_method
