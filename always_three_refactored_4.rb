def always_three_method(number)
	((number + 5) * 2 - 4) / 2 - number
end

puts "Give me a number"
number = gets.to_i
puts "Always #{always_three_method(number)}"
