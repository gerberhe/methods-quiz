module MethodsQuiz
	
	# TODO - write has_teen?

	def has_teen?(array)
		one = array[0]
		two = array[1]
		three = array[2]
		if one >= 13 && one <= 19
			true
		elsif two >= 13 && two <= 19
			true
		elsif three >= 13 && three <= 19
			true
		else
			false
		end
	end
	
	# TODO - write not_string

	def not_string?(str)
		if str[0].downcase == "n" && str[1].downcase == "o" && str[2].downcase == "t"
			str
		else
			"not" + str
		end
	end
	
	# TODO - write icy_hot?
	
	# TODO - write closer_to

	# TODO - write two_as_one?

	# TODO - write pig_latinify

end