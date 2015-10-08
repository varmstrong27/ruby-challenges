puts "What is your birthdate (MMDDYYYY)?"
birthdate = gets.chomp

def determine_birth_path (birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
end

birth_path_number = determine_birth_path (birthdate)
birth_path_number = birth_path_number.to_s

int_number = birth_path_number[0].to_i
int_number += birth_path_number[1].to_i
birth_path_number = int_number.to_i

if(birth_path_number > 9)
	birth_path_number = birth_path_number.to_s
	int_number = birth_path_number[0].to_i
	int_number += birth_path_number[1].to_i
	birth_path_number = int_number.to_i
end

def birth_path_meaning(birth_path_number)
	case(birth_path_number)
		when 1
			message = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2
			message = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3
			message = "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4
			message = "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5
			message = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6
			message = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7
			message = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8
			message = "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9
			message = "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end

message = birth_path_meaning(birth_path_number)

puts "Your numerology number is #{birth_path_number}n#{message}"
