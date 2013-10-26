#A person's first, middle and last name program

puts 'Hey man, what\'s your first name?'
fname = gets.chomp
puts 'Your middle name if you have one?'
mname = gets.chomp
puts 'And finally, your family name?'
lname = gets.chomp
puts 'All right welcome Mr.' + fname + ' ' + mname + ' ' + lname + ' :)'

# Adding 1 to a person's fav number

puts 'Hey, what\'s your favorite number?'
favnum = gets.chomp
bnum = favnum.to_f + 1.0
puts 'Dude, I think this is a bigger and better number ' + bnum.to_s + ' !'

