#Arrays
names = ['Ada', 'Belle', 'Chris']
puts names
puts 
puts names[0]
puts names[1]
puts names[2]
puts names[3]

#Additional Array Methods

other_peeps = []
other_peeps[3] = 'beebee Meaner'
other_peeps[0] = 'Ah-ha'
other_peeps[1] = 'Seedee'
other_peeps[0] = 'beebee Ah-ha'
puts other_peeps


#The Each Method

languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang|
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance'

#Another cute little iterator
3.times do
	puts 'Hip-Hip-Hooray!'
end


# Bonus cute little program
2.times do
	puts '...you can say that again...'
end

# More Array Methods

foods = ['artichoke' , 'brioche', 'caramel']

puts foods
puts
puts foods.to_s
puts
puts foods.join(',')
puts
puts foods.join(' :) ') + ' 8)'

#Doing an array containing other arrays
puts [[]]


#Doing push, pops and last
favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length









