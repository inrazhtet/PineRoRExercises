#One Billion Seconds

#Find out the exact second you were born
# 4:30:27

#Figure out when you will turn (or perhaps, you did turn 1 billion seconds old)
t0 = Time.local(1990,12,11)
t1 = Time.local(2013,11,5)

t2 = t0 + 1000000000

puts "#{t2}"

#Figuring out how old the person is

puts "Please answer all in numerals"
puts "What year were you born in?"
year = gets.chomp
puts "What month were you born in?"
month = gets.chomp
puts "What day were you born in?"
day = gets.chomp

t0 = Time.local(year,month,day)
t1 = Time.now

t3 = (t1-t0)/(3600*24*365)

puts "You are #{t3} years old."

#The Reverse of Roman_Numeral 1999
#The solutions of Chris is just Brilliant


def roman_to_integer passcode

	digit_vals = { 'i' => 1,
				   'v' => 5,
				   'x' => 10,
				   'l' => 50,
				   'c' => 100,
				   'd' => 500,
				   'm' => 1000}

	total = 0
	prev = 0
	index = passcode.length-1
	
	while index >=0
		c = passcode[index].downcase
		index = index - 1
		val = digit_vals[c]
		if !val
			puts 'This is not a valid roman numeral!'	
			return
		end

		if val < prev
			val = val * -1
		else
			prev = val
		end
		total = total + val
	end
	total

end
puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))