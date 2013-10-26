#pop quiz on number of methods
#1 puts
#2 gets
#3 chomp
#4 to_s
#5 to_f
#6 to_i
#7 +
#8 -
#9 *
#10 /

# the power of dot
puts ('hello '.+ 'world')
puts ((10. * 9) . + 9)


#finding out the hidden object
puts self

#reverse string method
var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....TCELES B HSUP A magic spell?'


puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

#the length method
puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters'
puts 'in your name, ' + name + '?'

#lower case, upper case ... practice

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

#Centering the poem

line_width = 50
puts ( 'Old Mother Hubbard'.center(line_width))
puts ( 'Sat in her cupbard'.center(line_width))
puts ( 'Eating her curds and whey'.center(line_width))
puts ( 'When along came a spider'.center(line_width))
puts ( 'Who sat down besides her'.center(line_width))
puts ('And scared her poor shoe dog away.'.center(line_width))

#Playing with line justifications

line_width = 40
str = '--> text <--'

puts(str.ljust(line_width))
puts(str.center(line_width))
puts(str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))

#The Math Section

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts (5-2).abs
puts (2-5).abs

  puts rand
  puts rand
  puts rand
  puts (rand (100))
  puts (rand (100))
  puts (rand (100))
  puts (rand (1))
  puts (rand (1))
  puts (rand (1))
  puts (rand(99999999999999999999999999999999999999))
  puts ('The weatherman said there is a')
  puts (rand(101).to_s + '% chance of rain,')
  puts ('but you can never trust a weatherman')


srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1976
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5))/2)