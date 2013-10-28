# #lexicographical ordering
# puts 'cat' < 'dog'

# #Capital letter before small letters
# puts 'bug lady' < 'Xander'
# puts 'bug lady'.downcase < 'Xander'.downcase

# #Numbers in order from 0 and onwards

# puts  2 < 10
# puts '2' < '10'


# #Branching


# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'

# if name == 'Zarni'
# 	puts 'What a lovely name!'
# end

# puts 'I am a fortune-teller. Tell me your name:'
# name = gets.chomp

# if name == 'Chris'
# 	puts 'I see great things in your future'
# else
# 	puts 'Your future is...oh my! Look at the time!'
# 	puts 'I really have to go, sorry!'
# end

# #English teacher example

# puts 'Hello, and welcome to seventh grade English'
# puts 'My name is Mrs. Gabbard. And your name is ...?'
# name = gets.chomp

# if name  == name.capitalize
# 	puts 'Please take a seat, ' + name + '.'
# else 
# 	puts name + '? You mean ' + name.capitalize + ', right?'
# 	puts 'Don\'t you even know how to spell your name??'
# 	reply = gets.chomp
# 	if reply.downcase == 'yes'
# 		puts 'Please take a seat!'
# 	else
# 		puts 'Get the hell out of here!'
# 	end
# end


# #Looping
# input = ''
# while input != 'bye'
# 	puts input
# 	input = gets.chomp
# end
# puts 'Come again soon!'

# #Forever looping
# while 'Spike' > 'Angel'
# 	input = gets.chomp
# 	puts input
# 	if input == 'bye'
# 		break
# 	end
# end
# puts 'Come again soon!'


# #A little bit of logic
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris' || name == 'Katy'
# 	puts 'What a lovely name!'


#C's conversation with Chris
while true
	puts 'What would you like to ask C to do?'
	request = gets.chomp
	puts 'You say, "C, please ' + request + '"';

	puts 'C \'s response:'
	puts '"C ' + request + '."'
	puts '"Papa ' + request + ', too."'
	puts '"Mama ' + request + ', too."'
	puts '"Ruby '  + request + ', too."'
	puts '"Nono '  + request + ', too."'
	puts '"Emma '  + request + ', too."'
	puts
	if request == 'stop'
		break
	end
end

