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

	def icy_hot?(a,b)
		aTrue = 0
		bTrue = 0
		if a > 100 || a < 0
			aTrue = 1
		else
			aTrue = 0
		end

		if b > 100 || b < 0
			bTrue = 1
		else
			bTrue = 0
		end

		if aTrue == 1 && bTrue == 1
			true
		else
			false
		end
	end
	
	# TODO - write closer_to

	def closer_to?(t,a,b)
		if a > t
			aNew = ((t - a) * -1)
		elsif a < t
			aNew = (t - a)
		end

		if b > t
			bNew = ((t - b) * -1)
		elsif b < t
			bNew = (t - b)
		end

		if aNew == bNew
			0
		elsif aNew < bNew
			a
		elsif aNew > bNew
			b
		end
	end

	# TODO - write two_as_one?

	def two_as_one?(a,b,c)
		if (a + b) == c || (a + c) == b || (b + c) == a
			true
		else
			false
		end	
	end

	# TODO - write pig_latinify

	def pig_latinify?(str)
		if str[0].downcase == "a" || str[0].downcase == "e" || str[0].downcase == "i" || str[0].downcase == "o" || str[0].downcase == "u"
			str + "way"
		else
			"#{str[1..-1]}#{str[0,1]}ay"
		end
	end

end