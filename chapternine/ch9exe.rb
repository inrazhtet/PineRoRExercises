#Improved ask question method

def ask question
	while true
		puts question
		reply = gets.chomp.downcase
			if (reply == 'yes')
				return true
			elsif (reply == 'no')
				return false
			else
				puts 'Please answer in "yes" or "no"'
			end	
	end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'           # Ignore this return value
ask 'Do you like eating burritos?'        # And this one
wets_bed = ask 'Do you wet the bed?'	  # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'

puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed


Old school Roman numerals
My attempt. I actually did not get what the Roman Numerals were all about
until I checked at the end of the book for some answers.
I am sending a note to the author on giving us some sample examples of
what the old numerals are like.

def oldrconv number
	set = [1,5,10,50,100,500,1000]
	x = 0
	len = set.length
	while x < len
		result = number/set[x]
		break if result < 1
		sres = result
		x = x + 1
	end
	
	base = set[x -1]
	
	if (base !=1)	
	fresult = number%base
	else
	fresult = number%5
	end

	if (base == 1)
		form = 'I'* sres
	elsif (base == 5) 
		form = 'V' * sres
	elsif (base == 10)
		form = 'X'* sres
	elsif (base ==50)
		form = 'L'* sres
	elsif (base ==100)
		form = 'C'* sres
	elsif (base == 500)
		form = 'D'* sres
	elsif (base == 1000)
		form = 'M'* result
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
oldrconv 900
oldrconv 2003
oldrconv 3000

#Solution by author reimplementation
def old_r_conv nums
	roman = ''
	roman = roman + 'M' * (nums/1000)
	roman = roman + 'D' * ((nums%1000)/500)
	roman = roman + 'C' * ((nums%500)/100)
	roman = roman + 'L' * ((nums%100)/50)
	roman = roman + 'X' * ((nums%50)/10)
	roman = roman + 'V' * ((nums%10)/5)
	roman = roman + 'I' * ((nums%5)/1)

	puts roman
end
old_r_conv 1958

New Roman Conversion! So proud of this one!!

def new_r_conv nums

roman = ''
roman = roman + 'M' * (nums/1000)

if (nums%1000 == 900)
	roman = roman + 'CM'
elsif (nums%1000 == 400)
	roman = roman + 'CD'
else
	roman = roman + 'D' * ((nums%1000)/500)
end

if (nums%500 != 400)
	roman = roman + 'C' * ((nums%500)/100)
end

if (nums%100 == 90)
	roman = roman + 'XC'
elsif (nums%100 == 40)
	roman = roman + 'XL'
else
	roman = roman + 'L' * ((nums%100)/50)
end

if (nums%50 !=40)
	roman = roman + 'X' * ((nums%50)/10)
end

if (nums%10 == 9)
	roman = roman + 'IX'
elsif (nums%10 == 4)
	roman = roman + 'IV'
else
	roman = roman + 'V' * ((nums%10)/5)
end

if (nums%5 !=4)
	roman = roman + 'I' * ((nums%5)/1)
end
puts roman
end
new_r_conv 1400
new_r_conv 1800
new_r_conv 190
new_r_conv 189
new_r_conv 185
new_r_conv 188
