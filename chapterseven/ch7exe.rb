#Exercise 1

num = 99
while (num >= 0)
	num2 = num -1
	if (num == 0)
		puts 'No more bottles of beer on the wall, no more botles of beer.'
		puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
	else
		puts num.to_s + ' bottles of beer on the wall, ' + num.to_s + ' bottles of beer. '
		puts 'Go to the store and buy some more, ' + num2.to_s + ' bottles of beer on the wall.'
	end
	num = num -1
end
 
 
# Exercise 2
stat = ''
puts 'Starts dialogue with \'deaf\' grandma!'
while stat != 'BYE'
	stat = gets.chomp
	mrand = rand(1930..1950) 
	if (stat == stat.upcase)
		puts 'NO, NOT SINCE ' + mrand.to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end
puts 'BYE, Sweetie!'

# Exercise 3
stat = ''
puts 'Starts dialogue with \'deaf\' grandma!'
count = 0
while (count != 3)
	stat = gets.chomp
	if (stat == 'BYE')
		count = count + 1
	else
		count = 0
	end
	mrand = rand(1930..1950) 
	if (stat == stat.upcase)
		puts 'NO, NOT SINCE ' + mrand.to_s + '!'
	else
		puts 'HUH?! SPEAK UP, SONNY!'
	end
end
puts 'BYE, Sweetie!'

#Exercise 4
puts 'Type in the starting year'
syear = gets.chomp.to_i
puts 'Type in the ending year'
eyear = gets.chomp.to_i
lyear = syear
puts 'Check it out, these are the leap years'
while (lyear<= eyear)
	if (lyear%100 == 0)
		if (lyear%400 == 0)
			puts lyear
		else		
		end
	elsif (lyear%4 ==0)
		puts lyear
	end
	lyear = lyear + 1
end	


