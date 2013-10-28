# #Improved ask question method

# def ask question
# 	while true
# 		puts question
# 		reply = gets.chomp.downcase
# 			if (reply == 'yes')
# 				return true
# 			elsif (reply == 'no')
# 				return false
# 			else
# 				puts 'Please answer in "yes" or "no"'
# 			end	
# 	end
# end

# puts 'Hello, and thank you for...'
# puts

# ask 'Do you like eating tacos?'           # Ignore this return value
# ask 'Do you like eating burritos?'        # And this one
# wets_bed = ask 'Do you wet the bed?'	  # Save this return value
# ask 'Do you like eating chimichangas?'
# ask 'Do you like eating sopapillas?'
# puts 'Just a few more questions...'
# ask 'Do you like drinking horchata?'
# ask 'Do you like eating flautas?'

# puts
# puts 'DEBRIEFING:'
# puts 'Thank you for...'
# puts
# puts wets_bed


#Old school Roman numerals

def oldrconv number
	set = [1,5,10,50,100,500,1000]
	x = 0
	len = set.length
	while x < len
		result = number/set[x]
		break if result < 1
		x = x + 1
	end
	
	base = set[x -1]
	
	if (base !=1)	
	fresult = number%base
	else
	fresult = number%5
	end

	if (base == 1)
		form = 'I'
	elsif (base == 5) 
		form = 'V'
	elsif (base == 10)
		form = 'X'
	elsif (base ==50)
		form = 'L'
	elsif (base ==100)
		form = 'C'
	elsif (base == 500)
		form = 'D'
	elsif (base == 1000)
		form = 'M'
	end
	if (fresult == 0)
		puts form
	elsif (fresult != 0 && base != 1)
		puts form + 'I'*fresult
	else
		puts 'I' * fresult
	end
end

oldrconv 5
oldrconv 4
oldrconv 9
oldrconv 1003
oldrconv 509
oldrconv 104
oldrconv 110
oldrconv 59
oldrconv 18
